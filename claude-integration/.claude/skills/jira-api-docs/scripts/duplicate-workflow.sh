#!/usr/bin/env bash
#
# Duplicate a Jira workflow from one project/issue-type to another
#
# This script:
# 1. Reads the source workflow (all statuses, transitions, conditions, validators, actions)
# 2. Creates a new workflow with a new name but identical structure
# 3. Optionally assigns it to a target project/issue-type
#
# Usage:
#   duplicate-workflow.sh --source-project HSP --source-issuetype Story \
#                         --new-name "My Workflow Copy" \
#                         [--target-project PROJ --target-issuetype Bug]
#
# Options:
#   --source-project KEY    Source project key (required)
#   --source-issuetype NAME Source issue type name (required)
#   --new-name NAME         Name for the new workflow (required)
#   --description DESC      Description for new workflow (optional)
#   --target-project KEY    Target project to assign workflow to (optional)
#   --target-issuetype NAME Target issue type to assign workflow to (optional)
#   --dry-run               Show what would be done without executing
#   --save-state FILE       Save original state to FILE for later revert (only with --target-*)
#   -h, --help              Show this help
#
# Examples:
#   # Just create a copy of a workflow (don't assign it anywhere)
#   duplicate-workflow.sh --source-project HSP --source-issuetype Story \
#                         --new-name "HSP Story Copy"
#
#   # Copy and assign to a different project/issue-type
#   duplicate-workflow.sh --source-project HSP --source-issuetype Story \
#                         --new-name "TESTPROJ Story Workflow" \
#                         --target-project TESTPROJ --target-issuetype Task \
#                         --save-state /tmp/testproj-task-original.json
#
# Notes:
#   - The script reuses existing global statuses (doesn't create new ones)
#   - Transitions with duplicate names are auto-renamed to be unique
#   - When assigning, you'll be prompted for status mappings if needed

set -euo pipefail

# =============================================================================
# Parse arguments
# =============================================================================
SOURCE_PROJECT=""
SOURCE_ISSUETYPE=""
NEW_NAME=""
DESCRIPTION=""
TARGET_PROJECT=""
TARGET_ISSUETYPE=""
DRY_RUN=false
SAVE_STATE=""

usage() {
    sed -n '3,35p' "$0" | sed 's/^# \?//'
    exit "${1:-0}"
}

die() {
    echo "ERROR: $*" >&2
    exit 1
}

log() {
    echo "[INFO] $*" >&2
}

require_cmd() {
    command -v "$1" >/dev/null 2>&1 || die "Required command not found: $1"
}

while [[ $# -gt 0 ]]; do
    case $1 in
        --source-project)
            SOURCE_PROJECT="$2"
            shift 2
            ;;
        --source-issuetype)
            SOURCE_ISSUETYPE="$2"
            shift 2
            ;;
        --new-name)
            NEW_NAME="$2"
            shift 2
            ;;
        --description)
            DESCRIPTION="$2"
            shift 2
            ;;
        --target-project)
            TARGET_PROJECT="$2"
            shift 2
            ;;
        --target-issuetype)
            TARGET_ISSUETYPE="$2"
            shift 2
            ;;
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        --save-state)
            SAVE_STATE="$2"
            shift 2
            ;;
        -h|--help)
            usage 0
            ;;
        *)
            die "Unknown option: $1"
            ;;
    esac
done

# Validate required arguments
[[ -n "$SOURCE_PROJECT" ]] || die "Missing required argument: --source-project"
[[ -n "$SOURCE_ISSUETYPE" ]] || die "Missing required argument: --source-issuetype"
[[ -n "$NEW_NAME" ]] || die "Missing required argument: --new-name"

# If target-project is set, target-issuetype must also be set (and vice versa)
if [[ -n "$TARGET_PROJECT" && -z "$TARGET_ISSUETYPE" ]]; then
    die "--target-project requires --target-issuetype"
fi
if [[ -n "$TARGET_ISSUETYPE" && -z "$TARGET_PROJECT" ]]; then
    die "--target-issuetype requires --target-project"
fi

# Validate dependencies
require_cmd jira
require_cmd jq

# =============================================================================
# Get source project and issue type IDs
# =============================================================================
log "Fetching source project: $SOURCE_PROJECT"
SOURCE_PROJECT_JSON=$(jira get "/rest/api/3/project/$SOURCE_PROJECT" 2>/dev/null) \
    || die "Failed to fetch project: $SOURCE_PROJECT"

SOURCE_PROJECT_ID=$(echo "$SOURCE_PROJECT_JSON" | jq -r '.id')
log "  Project ID: $SOURCE_PROJECT_ID"

SOURCE_ISSUETYPE_ID=$(echo "$SOURCE_PROJECT_JSON" | jq -r --arg name "$SOURCE_ISSUETYPE" \
    '.issueTypes[] | select(.name == $name) | .id' | head -1)
[[ -n "$SOURCE_ISSUETYPE_ID" ]] || die "Issue type '$SOURCE_ISSUETYPE' not found in project $SOURCE_PROJECT"
log "  Issue Type ID: $SOURCE_ISSUETYPE_ID"

# =============================================================================
# Fetch source workflow
# =============================================================================
log "Fetching source workflow..."
SOURCE_WORKFLOW_JSON=$(jira post /rest/api/3/workflows -d "{
    \"projectAndIssueTypes\": [{
        \"projectId\": \"$SOURCE_PROJECT_ID\",
        \"issueTypeId\": \"$SOURCE_ISSUETYPE_ID\"
    }]
}" 2>/dev/null) || die "Failed to fetch workflow"

SOURCE_WORKFLOW_NAME=$(echo "$SOURCE_WORKFLOW_JSON" | jq -r '.workflows[0].name')
SOURCE_WORKFLOW_ID=$(echo "$SOURCE_WORKFLOW_JSON" | jq -r '.workflows[0].id')
log "  Workflow: $SOURCE_WORKFLOW_NAME"
log "  ID: $SOURCE_WORKFLOW_ID"

# =============================================================================
# Build the create workflow payload
# =============================================================================
log "Building new workflow payload..."

# Set description
if [[ -z "$DESCRIPTION" ]]; then
    DESCRIPTION="Copy of $SOURCE_WORKFLOW_NAME"
fi

# Build statuses array - reference existing statuses by ID
STATUSES_ARRAY=$(echo "$SOURCE_WORKFLOW_JSON" | jq '[.statuses[] | {
    id: .id,
    name: .name,
    statusCategory: .statusCategory,
    statusReference: ("status-" + .id)
}]')

# Build workflow statuses with layouts
WORKFLOW_STATUSES=$(echo "$SOURCE_WORKFLOW_JSON" | jq '[.workflows[0].statuses[] | {
    statusReference: ("status-" + .statusReference),
    layout: .layout,
    properties: (.properties // {})
}]')

# Get startPointLayout
START_LAYOUT=$(echo "$SOURCE_WORKFLOW_JSON" | jq '.workflows[0].startPointLayout // {"x": 0, "y": 0}')

# Build transitions - need to make names unique and map status references
# First, collect all transitions and rename duplicates
TRANSITIONS=$(echo "$SOURCE_WORKFLOW_JSON" | jq '
    # Track name counts for deduplication
    .workflows[0].transitions |
    group_by(.name) |
    map(
        if length > 1 then
            to_entries | map(
                .value + {name: (.value.name + " (" + ((.key + 1) | tostring) + ")")}
            )
        else
            .
        end
    ) |
    flatten |
    [.[] | {
        id: .id,
        type: .type,
        name: .name,
        description: (.description // ""),
        toStatusReference: ("status-" + .toStatusReference),
        links: [.links[]? | {
            fromStatusReference: (if .fromStatusReference then ("status-" + .fromStatusReference) else null end),
            fromPort: .fromPort,
            toPort: .toPort
        } | with_entries(select(.value != null))],
        properties: (.properties // {}),
        actions: (.actions // []),
        validators: (.validators // []),
        triggers: (.triggers // [])
    } + (if .conditions then {conditions: .conditions} else {} end)
      + (if .transitionScreen then {transitionScreen: .transitionScreen} else {} end)
    ]
')

# Build final create payload
CREATE_PAYLOAD=$(jq -n \
    --argjson statuses "$STATUSES_ARRAY" \
    --arg name "$NEW_NAME" \
    --arg description "$DESCRIPTION" \
    --argjson start_layout "$START_LAYOUT" \
    --argjson workflow_statuses "$WORKFLOW_STATUSES" \
    --argjson transitions "$TRANSITIONS" \
    '{
        scope: {type: "GLOBAL"},
        statuses: $statuses,
        workflows: [{
            name: $name,
            description: $description,
            startPointLayout: $start_layout,
            statuses: $workflow_statuses,
            transitions: $transitions
        }]
    }')

# =============================================================================
# Dry run - show payload and exit
# =============================================================================
if [[ "$DRY_RUN" == "true" ]]; then
    log "DRY RUN - would create workflow with this payload:"
    echo "$CREATE_PAYLOAD" | jq .
    exit 0
fi

# =============================================================================
# Create the new workflow
# =============================================================================
log "Creating new workflow: $NEW_NAME"
CREATE_RESULT=$(jira post /rest/api/3/workflows/create -d "$CREATE_PAYLOAD" 2>&1) || {
    echo "ERROR: Failed to create workflow" >&2
    echo "$CREATE_RESULT" >&2
    exit 1
}

# Check for errors
if echo "$CREATE_RESULT" | jq -e '.errorMessages | length > 0' >/dev/null 2>&1; then
    echo "ERROR: Workflow creation failed:" >&2
    echo "$CREATE_RESULT" | jq -r '.errorMessages[]' >&2
    exit 1
fi

NEW_WORKFLOW_ID=$(echo "$CREATE_RESULT" | jq -r '.workflows[0].id')
NEW_WORKFLOW_NAME=$(echo "$CREATE_RESULT" | jq -r '.workflows[0].name')
log "SUCCESS! Created workflow:"
log "  Name: $NEW_WORKFLOW_NAME"
log "  ID: $NEW_WORKFLOW_ID"

# Save create result
echo "$CREATE_RESULT" > /tmp/workflow-create-result.json
log "  Result saved to: /tmp/workflow-create-result.json"

# =============================================================================
# Assign to target project/issue-type (optional)
# =============================================================================
if [[ -z "$TARGET_PROJECT" ]]; then
    log ""
    log "Workflow created but not assigned to any project/issue-type."
    log "Use the Jira UI or API to assign it to a workflow scheme."
    exit 0
fi

log ""
log "Assigning workflow to $TARGET_PROJECT/$TARGET_ISSUETYPE..."

# Get target project info
TARGET_PROJECT_JSON=$(jira get "/rest/api/3/project/$TARGET_PROJECT" 2>/dev/null) \
    || die "Failed to fetch target project: $TARGET_PROJECT"

TARGET_PROJECT_ID=$(echo "$TARGET_PROJECT_JSON" | jq -r '.id')
TARGET_ISSUETYPE_ID=$(echo "$TARGET_PROJECT_JSON" | jq -r --arg name "$TARGET_ISSUETYPE" \
    '.issueTypes[] | select(.name == $name) | .id' | head -1)
[[ -n "$TARGET_ISSUETYPE_ID" ]] || die "Issue type '$TARGET_ISSUETYPE' not found in project $TARGET_PROJECT"

log "  Target Project ID: $TARGET_PROJECT_ID"
log "  Target Issue Type ID: $TARGET_ISSUETYPE_ID"

# Get current workflow scheme for target project
SCHEME_JSON=$(jira post /rest/api/3/workflowscheme/read -d "{\"projectIds\": [\"$TARGET_PROJECT_ID\"]}" 2>/dev/null) \
    || die "Failed to fetch workflow scheme for $TARGET_PROJECT"

SCHEME_ID=$(echo "$SCHEME_JSON" | jq -r '.[0].id')
SCHEME_NAME=$(echo "$SCHEME_JSON" | jq -r '.[0].name')
SCHEME_VERSION_NUM=$(echo "$SCHEME_JSON" | jq -r '.[0].version.versionNumber')
SCHEME_VERSION_ID=$(echo "$SCHEME_JSON" | jq -r '.[0].version.id')
DEFAULT_WORKFLOW_ID=$(echo "$SCHEME_JSON" | jq -r '.[0].defaultWorkflow.id')

log "  Workflow Scheme: $SCHEME_NAME (ID: $SCHEME_ID)"

# Get current workflow for target issue type (always needed for restore info)
CURRENT_WORKFLOW_JSON=$(jira post /rest/api/3/workflows -d "{
    \"projectAndIssueTypes\": [{
        \"projectId\": \"$TARGET_PROJECT_ID\",
        \"issueTypeId\": \"$TARGET_ISSUETYPE_ID\"
    }]
}" 2>/dev/null)

CURRENT_WORKFLOW_ID=$(echo "$CURRENT_WORKFLOW_JSON" | jq -r '.workflows[0].id')
CURRENT_WORKFLOW_NAME=$(echo "$CURRENT_WORKFLOW_JSON" | jq -r '.workflows[0].name')
log "  Original workflow: $CURRENT_WORKFLOW_NAME ($CURRENT_WORKFLOW_ID)"

# Save state if requested
if [[ -n "$SAVE_STATE" ]]; then
    log "Saving state to: $SAVE_STATE"

    jq -n \
        --arg target_project "$TARGET_PROJECT" \
        --arg target_project_id "$TARGET_PROJECT_ID" \
        --arg target_issuetype "$TARGET_ISSUETYPE" \
        --arg target_issuetype_id "$TARGET_ISSUETYPE_ID" \
        --arg scheme_id "$SCHEME_ID" \
        --arg original_workflow_id "$CURRENT_WORKFLOW_ID" \
        --arg original_workflow_name "$CURRENT_WORKFLOW_NAME" \
        --arg new_workflow_id "$NEW_WORKFLOW_ID" \
        --arg new_workflow_name "$NEW_WORKFLOW_NAME" \
        --arg default_workflow_id "$DEFAULT_WORKFLOW_ID" \
        --argjson scheme_json "$SCHEME_JSON" \
        --argjson original_workflow_json "$CURRENT_WORKFLOW_JSON" \
        '{
            target_project: $target_project,
            target_project_id: $target_project_id,
            target_issuetype: $target_issuetype,
            target_issuetype_id: $target_issuetype_id,
            scheme_id: $scheme_id,
            original_workflow_id: $original_workflow_id,
            original_workflow_name: $original_workflow_name,
            new_workflow_id: $new_workflow_id,
            new_workflow_name: $new_workflow_name,
            default_workflow_id: $default_workflow_id,
            scheme_snapshot: $scheme_json,
            original_workflow_snapshot: $original_workflow_json
        }' > "$SAVE_STATE"
fi

# Build workflow assignments - keep all existing, just change the target issue type
# Note: When multiple issue types use the same workflow, they must be combined
# into a single entry with multiple issueTypeIds. We consolidate after building.
WORKFLOW_ASSIGNMENTS=$(echo "$SCHEME_JSON" | jq --arg target_id "$TARGET_ISSUETYPE_ID" --arg new_wf_id "$NEW_WORKFLOW_ID" '
    # Start with existing assignments, removing target from each
    [.[0].workflowsForIssueTypes[] |
        {
            issueTypeIds: [.issueTypeIds[] | select(. != $target_id)],
            workflowId: .workflow.id
        }
    ]
    # Add target to new workflow
    + [{issueTypeIds: [$target_id], workflowId: $new_wf_id}]
    # Now consolidate: group by workflowId and merge issueTypeIds
    | group_by(.workflowId)
    | map({
        issueTypeIds: (map(.issueTypeIds) | add | unique),
        workflowId: .[0].workflowId
    })
    | map(select(.issueTypeIds | length > 0))
')

# Get required status mappings
log "Checking for required status mappings..."
MAPPINGS_REQUEST=$(jq -n \
    --arg scheme_id "$SCHEME_ID" \
    --arg default_wf "$DEFAULT_WORKFLOW_ID" \
    --argjson assignments "$WORKFLOW_ASSIGNMENTS" \
    '{
        id: $scheme_id,
        defaultWorkflowId: $default_wf,
        workflowsForIssueTypes: $assignments
    }')

MAPPINGS_RESPONSE=$(jira post /rest/api/3/workflowscheme/update/mappings -d "$MAPPINGS_REQUEST" 2>&1)

# Check if mappings are needed
REQUIRED_MAPPINGS=$(echo "$MAPPINGS_RESPONSE" | jq '.statusMappingsByIssueTypes // []')
if [[ $(echo "$REQUIRED_MAPPINGS" | jq 'length') -gt 0 ]]; then
    log ""
    log "Status mappings required. Old statuses that don't exist in new workflow:"

    # Get status names for display
    OLD_STATUS_IDS=$(echo "$REQUIRED_MAPPINGS" | jq -r '.[0].statusIds[]')
    NEW_STATUS_IDS=$(echo "$MAPPINGS_RESPONSE" | jq -r --arg wf "$NEW_WORKFLOW_ID" \
        '.statusesPerWorkflow[] | select(.workflowId == $wf) | .statuses[]')

    echo ""
    echo "Old workflow statuses needing mapping:"
    for sid in $OLD_STATUS_IDS; do
        sname=$(echo "$MAPPINGS_RESPONSE" | jq -r --arg id "$sid" '.statuses[] | select(.id == $id) | "\(.name) (\(.category))"')
        echo "  - $sid: $sname"
    done

    echo ""
    echo "New workflow statuses available:"
    for sid in $NEW_STATUS_IDS; do
        sname=$(echo "$MAPPINGS_RESPONSE" | jq -r --arg id "$sid" '.statuses[] | select(.id == $id) | "\(.name) (\(.category))"')
        echo "  - $sid: $sname"
    done

    echo ""
    echo "Building automatic mappings based on category..."

    # Auto-map based on category - pick first match only
    STATUS_MAPPINGS=$(echo "$MAPPINGS_RESPONSE" | jq --arg wf "$NEW_WORKFLOW_ID" '
        # Get new workflow statuses
        (.statusesPerWorkflow[] | select(.workflowId == $wf) | .statuses) as $new_statuses |
        # Get status details
        .statuses as $all_statuses |
        # Map old statuses to new ones by category - use first match only
        [.statusMappingsByIssueTypes[0].statusIds[] as $old_id |
            ($all_statuses[] | select(.id == $old_id)) as $old_status |
            # Find first status in new workflow with same category
            ([$all_statuses[] | select(.id as $nid | ($new_statuses | index($nid)) and .category == $old_status.category) | .id] | first) as $new_id |
            {
                oldStatusId: $old_id,
                newStatusId: ($new_id // ($new_statuses | first))
            }
        ]
    ')

    echo "Auto-generated mappings:"
    echo "$STATUS_MAPPINGS" | jq -r '.[] | "  \(.oldStatusId) -> \(.newStatusId)"'

    # Build the update request with mappings
    # Refresh version right before update to minimize race conditions
    FRESH_SCHEME=$(jira post /rest/api/3/workflowscheme/read -d "{\"projectIds\": [\"$TARGET_PROJECT_ID\"]}" 2>/dev/null)
    SCHEME_VERSION_NUM=$(echo "$FRESH_SCHEME" | jq -r '.[0].version.versionNumber')
    SCHEME_VERSION_ID=$(echo "$FRESH_SCHEME" | jq -r '.[0].version.id')

    UPDATE_REQUEST=$(jq -n \
        --arg scheme_id "$SCHEME_ID" \
        --arg scheme_name "$SCHEME_NAME" \
        --argjson version_num "$SCHEME_VERSION_NUM" \
        --arg version_id "$SCHEME_VERSION_ID" \
        --arg default_wf "$DEFAULT_WORKFLOW_ID" \
        --argjson assignments "$WORKFLOW_ASSIGNMENTS" \
        --arg target_issuetype_id "$TARGET_ISSUETYPE_ID" \
        --argjson status_mappings "$STATUS_MAPPINGS" \
        '{
            id: $scheme_id,
            name: $scheme_name,
            description: "",
            version: {
                versionNumber: $version_num,
                id: $version_id
            },
            defaultWorkflowId: $default_wf,
            workflowsForIssueTypes: $assignments,
            statusMappingsByIssueTypeOverride: [{
                issueTypeId: $target_issuetype_id,
                statusMappings: $status_mappings
            }]
        }')
else
    # Refresh version right before update to minimize race conditions
    FRESH_SCHEME=$(jira post /rest/api/3/workflowscheme/read -d "{\"projectIds\": [\"$TARGET_PROJECT_ID\"]}" 2>/dev/null)
    SCHEME_VERSION_NUM=$(echo "$FRESH_SCHEME" | jq -r '.[0].version.versionNumber')
    SCHEME_VERSION_ID=$(echo "$FRESH_SCHEME" | jq -r '.[0].version.id')

    # No mappings needed
    UPDATE_REQUEST=$(jq -n \
        --arg scheme_id "$SCHEME_ID" \
        --arg scheme_name "$SCHEME_NAME" \
        --argjson version_num "$SCHEME_VERSION_NUM" \
        --arg version_id "$SCHEME_VERSION_ID" \
        --arg default_wf "$DEFAULT_WORKFLOW_ID" \
        --argjson assignments "$WORKFLOW_ASSIGNMENTS" \
        '{
            id: $scheme_id,
            name: $scheme_name,
            description: "",
            version: {
                versionNumber: $version_num,
                id: $version_id
            },
            defaultWorkflowId: $default_wf,
            workflowsForIssueTypes: $assignments
        }')
fi

log ""
log "Updating workflow scheme..."
UPDATE_RESULT=$(jira post /rest/api/3/workflowscheme/update -d "$UPDATE_REQUEST" 2>&1)

# Verify the assignment by checking current workflow
# This is more reliable than checking API response, as versions can race
VERIFY=$(jira post /rest/api/3/workflows -d "{
    \"projectAndIssueTypes\": [{
        \"projectId\": \"$TARGET_PROJECT_ID\",
        \"issueTypeId\": \"$TARGET_ISSUETYPE_ID\"
    }]
}" 2>/dev/null | jq -r '.workflows[0].id')

if [[ "$VERIFY" == "$NEW_WORKFLOW_ID" ]]; then
    log "SUCCESS! Workflow assigned to $TARGET_PROJECT/$TARGET_ISSUETYPE"
    VERIFY_NAME=$(jira post /rest/api/3/workflows -d "{
        \"projectAndIssueTypes\": [{
            \"projectId\": \"$TARGET_PROJECT_ID\",
            \"issueTypeId\": \"$TARGET_ISSUETYPE_ID\"
        }]
    }" 2>/dev/null | jq -r '.workflows[0].name')
    log "  Verified: $TARGET_ISSUETYPE now uses '$VERIFY_NAME'"
else
    # Check for actual errors
    if echo "$UPDATE_RESULT" | jq -e '.errorMessages | length > 0' >/dev/null 2>&1; then
        echo "ERROR: Workflow scheme update failed:" >&2
        echo "$UPDATE_RESULT" | jq -r '.errorMessages[]' >&2
        echo "" >&2
        echo "Update request was:" >&2
        echo "$UPDATE_REQUEST" | jq . >&2
    else
        echo "ERROR: Workflow was not assigned. Current workflow ID is '$VERIFY', expected '$NEW_WORKFLOW_ID'" >&2
        echo "API response:" >&2
        echo "$UPDATE_RESULT" | jq '.' >&2
    fi
    exit 1
fi

# Output restore information
log ""
log "To restore the original workflow, update the workflow scheme to reassign"
log "$TARGET_ISSUETYPE (issue type ID $TARGET_ISSUETYPE_ID) back to:"
log "  Original workflow: $CURRENT_WORKFLOW_NAME"
log "  Original workflow ID: $CURRENT_WORKFLOW_ID"

if [[ -n "$SAVE_STATE" ]]; then
    log ""
    log "State saved to: $SAVE_STATE"
fi
