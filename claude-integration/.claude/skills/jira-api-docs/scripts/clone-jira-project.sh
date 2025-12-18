#!/usr/bin/env bash
#
# Clone a Jira project with all its configuration (FULL ISOLATION)
#
# This script creates a comprehensive clone of a Jira project with ZERO shared
# objects between source and target. Editing anything in the cloned project
# will NOT affect the source project.
#
# Cloned items include:
# - All workflows (duplicated, not shared)
# - Workflow scheme (new, referencing duplicated workflows)
# - Issue type scheme (new, using same issue types)
# - All screens (duplicated with tabs and fields)
# - All screen schemes (new, using duplicated screens)
# - Issue type screen scheme (new, using duplicated screen schemes)
# - All field configurations (duplicated with field settings)
# - Field configuration scheme (new, using duplicated field configs)
# - Permission scheme (new, copied from source)
# - Notification scheme (new, copied from source)
# - Issue security scheme (new, copied from source) [optional]
# - Components [optional]
# - Versions [optional]
# - Project roles [optional]
#
# Usage:
#   clone-jira-project.sh --source-project TESTPROJ --new-key AISD --new-name "AI Service Desk" [options]
#
# Required:
#   --source-project KEY    Source project key to clone from
#   --new-key KEY           Key for the new project (max 10 chars, uppercase)
#   --new-name NAME         Name for the new project
#
# Optional:
#   --new-lead ACCOUNT_ID   Account ID for project lead (defaults to source lead)
#   --description DESC      Description for new project
#   --dry-run               Show what would be done without executing
#   --skip-components       Don't copy components
#   --skip-versions         Don't copy versions
#   --skip-roles            Don't copy project role assignments
#   --skip-security-scheme  Don't copy issue security scheme
#   --skip-notification-scheme  Don't copy notification scheme (use default)
#   --exclude-permission-holders TYPE[,TYPE...]
#                           Exclude permission holders by type (e.g., projectRole:10003,user:accountId)
#                           Format: type:value or just type (excludes all of that type)
#   -h, --help              Show this help
#
# Examples:
#   # Full clone
#   clone-jira-project.sh --source-project TESTPROJ --new-key AISD --new-name "AI Service Desk"
#
#   # Clone without optional items
#   clone-jira-project.sh --source-project TESTPROJ --new-key AISD --new-name "AI Service Desk" \
#       --skip-components --skip-versions --skip-roles
#

set -euo pipefail

# =============================================================================
# Configuration
# =============================================================================
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_FILE="/tmp/clone-jira-project-${TIMESTAMP}.log"

# =============================================================================
# Parse arguments
# =============================================================================
SOURCE_PROJECT=""
NEW_KEY=""
NEW_NAME=""
NEW_LEAD=""
DESCRIPTION=""
DRY_RUN=false
SKIP_COMPONENTS=false
SKIP_VERSIONS=false
SKIP_ROLES=false
SKIP_SECURITY_SCHEME=false
SKIP_NOTIFICATION_SCHEME=false
EXCLUDE_PERMISSION_HOLDERS=""

usage() {
    sed -n '3,40p' "$0" | sed 's/^# \?//'
    exit "${1:-0}"
}

die() {
    echo "ERROR: $*" >&2
    exit 1
}

log() {
    local msg="[$(date '+%H:%M:%S')] $*"
    echo "$msg" >&2
    echo "$msg" >> "$LOG_FILE"
}

log_verbose() {
    echo "$*" >> "$LOG_FILE"
}

require_cmd() {
    command -v "$1" >/dev/null 2>&1 || die "Required command not found: $1"
}

# Replace source project key with new key in a name
# If name contains SOURCE_PROJECT, replace it; otherwise prefix with NEW_KEY
# Usage: new_name=$(replace_project_key "old name")
replace_project_key() {
    local original_name="$1"
    local replaced="${original_name//$SOURCE_PROJECT:/$NEW_KEY:}"

    # If replacement happened, use it; otherwise prefix with new key
    if [[ "$replaced" != "$original_name" ]]; then
        echo "$replaced"
    else
        echo "$NEW_KEY: $original_name"
    fi
}

# API helper - logs requests and handles errors
jira_api() {
    local method="$1"
    local endpoint="$2"
    local data="${3:-}"
    local result

    log_verbose "API $method $endpoint"
    [[ -n "$data" ]] && log_verbose "  Data: $data"

    if [[ -n "$data" ]]; then
        result=$(jira "$method" "$endpoint" -d "$data" 2>&1) || {
            log_verbose "  ERROR: $result"
            echo "$result"
            return 1
        }
    else
        result=$(jira "$method" "$endpoint" 2>&1) || {
            log_verbose "  ERROR: $result"
            echo "$result"
            return 1
        }
    fi

    log_verbose "  Response: $result"
    echo "$result"
}

while [[ $# -gt 0 ]]; do
    case $1 in
        --source-project)
            SOURCE_PROJECT="$2"
            shift 2
            ;;
        --new-key)
            NEW_KEY="$2"
            shift 2
            ;;
        --new-name)
            NEW_NAME="$2"
            shift 2
            ;;
        --new-lead)
            NEW_LEAD="$2"
            shift 2
            ;;
        --description)
            DESCRIPTION="$2"
            shift 2
            ;;
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        --skip-components)
            SKIP_COMPONENTS=true
            shift
            ;;
        --skip-versions)
            SKIP_VERSIONS=true
            shift
            ;;
        --skip-roles)
            SKIP_ROLES=true
            shift
            ;;
        --skip-security-scheme)
            SKIP_SECURITY_SCHEME=true
            shift
            ;;
        --skip-notification-scheme)
            SKIP_NOTIFICATION_SCHEME=true
            shift
            ;;
        --exclude-permission-holders)
            EXCLUDE_PERMISSION_HOLDERS="$2"
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
[[ -n "$NEW_KEY" ]] || die "Missing required argument: --new-key"
[[ -n "$NEW_NAME" ]] || die "Missing required argument: --new-name"

# Validate new key format
[[ "$NEW_KEY" =~ ^[A-Z][A-Z0-9]{1,9}$ ]] || die "Invalid project key: must be 2-10 uppercase alphanumeric characters starting with a letter"

# Validate dependencies
require_cmd jira
require_cmd jq

log "Starting project clone: $SOURCE_PROJECT -> $NEW_KEY"
log "Log file: $LOG_FILE"

# =============================================================================
# Step 1: Fetch source project details
# =============================================================================
log "Step 1: Fetching source project details..."

SOURCE_PROJECT_JSON=$(jira_api get "/rest/api/3/project/$SOURCE_PROJECT") \
    || die "Failed to fetch source project: $SOURCE_PROJECT"

SOURCE_PROJECT_ID=$(echo "$SOURCE_PROJECT_JSON" | jq -r '.id')
SOURCE_PROJECT_TYPE=$(echo "$SOURCE_PROJECT_JSON" | jq -r '.projectTypeKey')
SOURCE_PROJECT_STYLE=$(echo "$SOURCE_PROJECT_JSON" | jq -r '.style')
SOURCE_LEAD_ID=$(echo "$SOURCE_PROJECT_JSON" | jq -r '.lead.accountId')

log "  Source Project ID: $SOURCE_PROJECT_ID"
log "  Project Type: $SOURCE_PROJECT_TYPE"
log "  Project Style: $SOURCE_PROJECT_STYLE"

# Use source lead if not specified
[[ -z "$NEW_LEAD" ]] && NEW_LEAD="$SOURCE_LEAD_ID"

# Get issue types from source project
ISSUE_TYPES_JSON=$(echo "$SOURCE_PROJECT_JSON" | jq '.issueTypes')
ISSUE_TYPE_IDS=$(echo "$ISSUE_TYPES_JSON" | jq -r '[.[] | .id] | join(",")')
ISSUE_TYPE_COUNT=$(echo "$ISSUE_TYPES_JSON" | jq 'length')
log "  Issue Types: $ISSUE_TYPE_COUNT types"

# =============================================================================
# Step 2: Fetch all source schemes
# =============================================================================
log "Step 2: Fetching source project schemes..."

# Workflow scheme
log "  Fetching workflow scheme..."
WORKFLOW_SCHEME_JSON=$(jira_api post /rest/api/3/workflowscheme/read "{\"projectIds\": [\"$SOURCE_PROJECT_ID\"]}") \
    || die "Failed to fetch workflow scheme"
SOURCE_WORKFLOW_SCHEME_ID=$(echo "$WORKFLOW_SCHEME_JSON" | jq -r '.[0].id')
SOURCE_WORKFLOW_SCHEME_NAME=$(echo "$WORKFLOW_SCHEME_JSON" | jq -r '.[0].name')
log "    Workflow Scheme: $SOURCE_WORKFLOW_SCHEME_NAME (ID: $SOURCE_WORKFLOW_SCHEME_ID)"

# Issue type scheme
log "  Fetching issue type scheme..."
ISSUE_TYPE_SCHEME_JSON=$(jira_api get "/rest/api/3/issuetypescheme/project?projectId=$SOURCE_PROJECT_ID") \
    || die "Failed to fetch issue type scheme"
SOURCE_ISSUE_TYPE_SCHEME_ID=$(echo "$ISSUE_TYPE_SCHEME_JSON" | jq -r '.values[0].issueTypeScheme.id')
SOURCE_ISSUE_TYPE_SCHEME_NAME=$(echo "$ISSUE_TYPE_SCHEME_JSON" | jq -r '.values[0].issueTypeScheme.name')
log "    Issue Type Scheme: $SOURCE_ISSUE_TYPE_SCHEME_NAME (ID: $SOURCE_ISSUE_TYPE_SCHEME_ID)"

# Issue type screen scheme
log "  Fetching issue type screen scheme..."
ISSUE_TYPE_SCREEN_SCHEME_JSON=$(jira_api get "/rest/api/3/issuetypescreenscheme/project?projectId=$SOURCE_PROJECT_ID") \
    || die "Failed to fetch issue type screen scheme"
SOURCE_ITSS_ID=$(echo "$ISSUE_TYPE_SCREEN_SCHEME_JSON" | jq -r '.values[0].issueTypeScreenScheme.id')
SOURCE_ITSS_NAME=$(echo "$ISSUE_TYPE_SCREEN_SCHEME_JSON" | jq -r '.values[0].issueTypeScreenScheme.name')
log "    Issue Type Screen Scheme: $SOURCE_ITSS_NAME (ID: $SOURCE_ITSS_ID)"

# Field configuration scheme
log "  Fetching field configuration scheme..."
FIELD_CONFIG_SCHEME_JSON=$(jira_api get "/rest/api/3/fieldconfigurationscheme/project?projectId=$SOURCE_PROJECT_ID") \
    || die "Failed to fetch field configuration scheme"
SOURCE_FCS_ID=$(echo "$FIELD_CONFIG_SCHEME_JSON" | jq -r '.values[0].fieldConfigurationScheme.id // empty')
SOURCE_FCS_NAME=$(echo "$FIELD_CONFIG_SCHEME_JSON" | jq -r '.values[0].fieldConfigurationScheme.name // "Default"')
log "    Field Configuration Scheme: $SOURCE_FCS_NAME (ID: ${SOURCE_FCS_ID:-default})"

# Permission scheme
log "  Fetching permission scheme..."
PERMISSION_SCHEME_JSON=$(jira_api get "/rest/api/3/project/$SOURCE_PROJECT_ID/permissionscheme") \
    || die "Failed to fetch permission scheme"
SOURCE_PERM_SCHEME_ID=$(echo "$PERMISSION_SCHEME_JSON" | jq -r '.id')
SOURCE_PERM_SCHEME_NAME=$(echo "$PERMISSION_SCHEME_JSON" | jq -r '.name')
log "    Permission Scheme: $SOURCE_PERM_SCHEME_NAME (ID: $SOURCE_PERM_SCHEME_ID)"

# Notification scheme
log "  Fetching notification scheme..."
NOTIFICATION_SCHEME_JSON=$(jira_api get "/rest/api/3/project/$SOURCE_PROJECT_ID/notificationscheme") \
    || die "Failed to fetch notification scheme"
SOURCE_NOTIF_SCHEME_ID=$(echo "$NOTIFICATION_SCHEME_JSON" | jq -r '.id')
SOURCE_NOTIF_SCHEME_NAME=$(echo "$NOTIFICATION_SCHEME_JSON" | jq -r '.name')
log "    Notification Scheme: $SOURCE_NOTIF_SCHEME_NAME (ID: $SOURCE_NOTIF_SCHEME_ID)"

# Issue security scheme (optional)
log "  Fetching issue security scheme..."
SECURITY_SCHEME_JSON=$(jira_api get "/rest/api/3/issuesecurityschemes/project?projectId=$SOURCE_PROJECT_ID") \
    || die "Failed to fetch issue security scheme"
SOURCE_SEC_SCHEME_ID=$(echo "$SECURITY_SCHEME_JSON" | jq -r '.values[0].issueSecuritySchemeId // empty')
if [[ -n "$SOURCE_SEC_SCHEME_ID" ]]; then
    log "    Issue Security Scheme ID: $SOURCE_SEC_SCHEME_ID"
else
    log "    Issue Security Scheme: None"
fi

# =============================================================================
# Step 3: Fetch workflow details for all issue types
# =============================================================================
log "Step 3: Fetching workflow details..."

# Build project+issueType query for all issue types
WORKFLOW_QUERY=$(echo "$ISSUE_TYPES_JSON" | jq --arg pid "$SOURCE_PROJECT_ID" '[.[] | {projectId: $pid, issueTypeId: .id}]')
WORKFLOWS_JSON=$(jira_api post /rest/api/3/workflows "{\"projectAndIssueTypes\": $WORKFLOW_QUERY}") \
    || die "Failed to fetch workflows"

# Get unique workflows
UNIQUE_WORKFLOWS=$(echo "$WORKFLOWS_JSON" | jq '[.workflows[] | {id: .id, name: .name}] | unique_by(.id)')
WORKFLOW_COUNT=$(echo "$UNIQUE_WORKFLOWS" | jq 'length')
log "  Found $WORKFLOW_COUNT unique workflows to duplicate"

# Also get the default workflow from the scheme
DEFAULT_WORKFLOW_ID=$(echo "$WORKFLOW_SCHEME_JSON" | jq -r '.[0].defaultWorkflow.id')
DEFAULT_WORKFLOW_NAME=$(echo "$WORKFLOW_SCHEME_JSON" | jq -r '.[0].defaultWorkflow.name')
log "  Default workflow: $DEFAULT_WORKFLOW_NAME (ID: $DEFAULT_WORKFLOW_ID)"

# =============================================================================
# DRY RUN - Show what would be done
# =============================================================================
if [[ "$DRY_RUN" == "true" ]]; then
    log ""
    log "=== DRY RUN - Would perform the following actions ==="
    log ""
    log "1. Duplicate $WORKFLOW_COUNT workflows with prefix '$NEW_KEY:'"
    echo "$UNIQUE_WORKFLOWS" | jq -r '.[] | "   - \(.name)"'
    log ""
    log "2. Create new workflow scheme: '$NEW_KEY: Workflow Scheme'"
    log "3. Create new issue type scheme: '$NEW_KEY: Issue Type Scheme'"
    log "4. Copy all screens (with tabs and fields) for full isolation"
    log "5. Create new screen schemes using copied screens"
    log "6. Create new issue type screen scheme: '$NEW_KEY: Issue Type Screen Scheme'"
    [[ -n "$SOURCE_FCS_ID" ]] && log "7. Copy field configurations (with field settings)"
    [[ -n "$SOURCE_FCS_ID" ]] && log "8. Create new field configuration scheme: '$NEW_KEY: Field Configuration Scheme'"
    log "9. Create new permission scheme: '$NEW_KEY: Permission Scheme'"
    [[ "$SKIP_NOTIFICATION_SCHEME" != "true" ]] && log "10. Create new notification scheme: '$NEW_KEY: Notification Scheme'"
    [[ -n "$SOURCE_SEC_SCHEME_ID" && "$SKIP_SECURITY_SCHEME" != "true" ]] && log "11. Create new issue security scheme: '$NEW_KEY: Issue Security Scheme'"
    log ""
    log "12. Create project '$NEW_KEY' ($NEW_NAME) with all new schemes"
    log ""
    [[ "$SKIP_COMPONENTS" != "true" ]] && log "13. Copy $(echo "$SOURCE_PROJECT_JSON" | jq '.components | length') components"
    [[ "$SKIP_VERSIONS" != "true" ]] && log "14. Copy versions"
    [[ "$SKIP_ROLES" != "true" ]] && log "15. Copy project role assignments"
    log ""
    log "=== FULL ISOLATION: Zero shared objects between projects ==="
    log "=== End of dry run ==="
    exit 0
fi

# =============================================================================
# Step 4: Duplicate all workflows
# =============================================================================
log "Step 4: Duplicating workflows..."

# We'll store mappings of old workflow ID -> new workflow ID
declare -A WORKFLOW_ID_MAP
declare -A WORKFLOW_NAME_MAP

duplicate_workflow() {
    local workflow_id="$1"
    local new_name="$2"

    log "  Duplicating workflow: $workflow_id -> $new_name"

    # Check if workflow with this name already exists
    local existing_wf
    existing_wf=$(jira_api get "/rest/api/3/workflow/search?queryString=$(echo "$new_name" | jq -Rr @uri)" 2>/dev/null) || true
    local existing_id
    existing_id=$(echo "$existing_wf" | jq -r --arg name "$new_name" '.values[]? | select(.id.name == $name) | .id.entityId' 2>/dev/null | head -1)

    if [[ -n "$existing_id" ]]; then
        log "    Found existing workflow: $existing_id"
        echo "$existing_id"
        return 0
    fi

    # Fetch the full workflow details
    local workflow_json
    workflow_json=$(jira_api post /rest/api/3/workflows "{\"workflowIds\": [\"$workflow_id\"]}") || return 1

    # Build statuses array - reference existing statuses by ID
    local statuses_array
    statuses_array=$(echo "$workflow_json" | jq '[.statuses[] | {
        id: .id,
        name: .name,
        statusCategory: .statusCategory,
        statusReference: ("status-" + .id)
    }]')

    # Build workflow statuses with layouts
    local workflow_statuses
    workflow_statuses=$(echo "$workflow_json" | jq '[.workflows[0].statuses[] | {
        statusReference: ("status-" + .statusReference),
        layout: .layout,
        properties: (.properties // {})
    }]')

    # Get startPointLayout
    local start_layout
    start_layout=$(echo "$workflow_json" | jq '.workflows[0].startPointLayout // {"x": 0, "y": 0}')

    # Build transitions - need to make names unique and map status references
    local transitions
    transitions=$(echo "$workflow_json" | jq '
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

    # Get description from source
    local src_description
    src_description=$(echo "$workflow_json" | jq -r '.workflows[0].description // ""')

    # Build create payload
    local create_payload
    create_payload=$(jq -n \
        --argjson statuses "$statuses_array" \
        --arg name "$new_name" \
        --arg description "Copy of workflow for $NEW_KEY project. Original: $src_description" \
        --argjson start_layout "$start_layout" \
        --argjson workflow_statuses "$workflow_statuses" \
        --argjson transitions "$transitions" \
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

    # Create the workflow
    local create_result
    create_result=$(jira_api post /rest/api/3/workflows/create "$create_payload") || {
        log "    ERROR: Failed to create workflow"
        log_verbose "$create_result"
        return 1
    }

    # Check for errors
    if echo "$create_result" | jq -e '.errorMessages | length > 0' >/dev/null 2>&1; then
        log "    ERROR: $(echo "$create_result" | jq -r '.errorMessages[]')"
        return 1
    fi

    local new_id
    new_id=$(echo "$create_result" | jq -r '.workflows[0].id')
    log "    Created: $new_id"
    echo "$new_id"
}

# Duplicate all unique workflows
while IFS= read -r workflow; do
    [[ -z "$workflow" ]] && continue
    wf_id=$(echo "$workflow" | jq -r '.id')
    wf_name=$(echo "$workflow" | jq -r '.name')
    new_wf_name=$(replace_project_key "$wf_name")

    new_wf_id=$(duplicate_workflow "$wf_id" "$new_wf_name") || die "Failed to duplicate workflow: $wf_name"
    WORKFLOW_ID_MAP["$wf_id"]="$new_wf_id"
    WORKFLOW_NAME_MAP["$wf_name"]="$new_wf_name"
done < <(echo "$UNIQUE_WORKFLOWS" | jq -c '.[]')

# Also duplicate default workflow if not already done
if [[ -z "${WORKFLOW_ID_MAP[$DEFAULT_WORKFLOW_ID]:-}" ]]; then
    new_default_name=$(replace_project_key "$DEFAULT_WORKFLOW_NAME")
    new_default_id=$(duplicate_workflow "$DEFAULT_WORKFLOW_ID" "$new_default_name") || die "Failed to duplicate default workflow"
    WORKFLOW_ID_MAP["$DEFAULT_WORKFLOW_ID"]="$new_default_id"
    WORKFLOW_NAME_MAP["$DEFAULT_WORKFLOW_NAME"]="$new_default_name"
fi

log "  Duplicated ${#WORKFLOW_ID_MAP[@]} workflows"

# =============================================================================
# Step 5: Create new workflow scheme
# =============================================================================
log "Step 5: Creating workflow scheme..."

# Check if workflow scheme already exists
EXISTING_WF_SCHEME=$(jira_api get "/rest/api/3/workflowscheme?queryString=$(echo "$NEW_KEY: Workflow Scheme" | jq -Rr @uri)" 2>/dev/null) || true
NEW_WF_SCHEME_ID=$(echo "$EXISTING_WF_SCHEME" | jq -r --arg name "$NEW_KEY: Workflow Scheme" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

if [[ -n "$NEW_WF_SCHEME_ID" && "$NEW_WF_SCHEME_ID" != "null" ]]; then
    log "  Found existing workflow scheme: $NEW_WF_SCHEME_ID"
else
    # Build issue type mappings using new workflow names
    ISSUE_TYPE_MAPPINGS=$(echo "$WORKFLOW_SCHEME_JSON" | jq --arg prefix "$NEW_KEY: " '
        [.[0].workflowsForIssueTypes[] |
            {
                issueTypes: .issueTypeIds,
                workflow: ($prefix + .workflow.name)
            }
        ] |
        reduce .[] as $item ({};
            . + (reduce ($item.issueTypes[]) as $it ({}; . + {($it): $item.workflow}))
        )
    ')

    NEW_WF_SCHEME_PAYLOAD=$(jq -n \
        --arg name "$NEW_KEY: Workflow Scheme" \
        --arg description "Workflow scheme for $NEW_NAME project" \
        --arg default_wf "${WORKFLOW_NAME_MAP[$DEFAULT_WORKFLOW_NAME]}" \
        --argjson mappings "$ISSUE_TYPE_MAPPINGS" \
        '{
            name: $name,
            description: $description,
            defaultWorkflow: $default_wf,
            issueTypeMappings: $mappings
        }')

    NEW_WF_SCHEME_RESULT=$(jira_api post /rest/api/3/workflowscheme "$NEW_WF_SCHEME_PAYLOAD") \
        || die "Failed to create workflow scheme"

    NEW_WF_SCHEME_ID=$(echo "$NEW_WF_SCHEME_RESULT" | jq -r '.id')
    log "  Created workflow scheme: $NEW_KEY: Workflow Scheme (ID: $NEW_WF_SCHEME_ID)"
fi

# =============================================================================
# Step 6: Create new issue type scheme
# =============================================================================
log "Step 6: Creating issue type scheme..."

# Check if issue type scheme already exists
EXISTING_ITS=$(jira_api get "/rest/api/3/issuetypescheme?queryString=$(echo "$NEW_KEY: Issue Type Scheme" | jq -Rr @uri)" 2>/dev/null) || true
NEW_ITS_ID=$(echo "$EXISTING_ITS" | jq -r --arg name "$NEW_KEY: Issue Type Scheme" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

if [[ -n "$NEW_ITS_ID" && "$NEW_ITS_ID" != "null" ]]; then
    log "  Found existing issue type scheme: $NEW_ITS_ID"
else
    # Get the issue type IDs and default from source scheme
    ISSUE_TYPE_SCHEME_MAPPING=$(jira_api get "/rest/api/3/issuetypescheme/mapping?issueTypeSchemeId=$SOURCE_ISSUE_TYPE_SCHEME_ID") \
        || die "Failed to fetch issue type scheme mapping"

    ISSUE_TYPE_IDS_ARRAY=$(echo "$ISSUE_TYPE_SCHEME_MAPPING" | jq '[.values[].issueTypeId]')
    DEFAULT_ISSUE_TYPE_ID=$(echo "$ISSUE_TYPE_SCHEME_MAPPING" | jq -r '.values[0].issueTypeId')

    NEW_ITS_PAYLOAD=$(jq -n \
        --arg name "$NEW_KEY: Issue Type Scheme" \
        --arg description "Issue type scheme for $NEW_NAME project" \
        --argjson issueTypeIds "$ISSUE_TYPE_IDS_ARRAY" \
        --arg defaultIssueTypeId "$DEFAULT_ISSUE_TYPE_ID" \
        '{
            name: $name,
            description: $description,
            issueTypeIds: $issueTypeIds,
            defaultIssueTypeId: $defaultIssueTypeId
        }')

    NEW_ITS_RESULT=$(jira_api post /rest/api/3/issuetypescheme "$NEW_ITS_PAYLOAD") \
        || die "Failed to create issue type scheme"

    NEW_ITS_ID=$(echo "$NEW_ITS_RESULT" | jq -r '.issueTypeSchemeId')
    log "  Created issue type scheme: $NEW_KEY: Issue Type Scheme (ID: $NEW_ITS_ID)"
fi

# =============================================================================
# Step 7: Copy screens (for full isolation)
# =============================================================================
log "Step 7: Copying screens for full isolation..."

# Get the screen scheme mappings from source Issue Type Screen Scheme
ITSS_MAPPING=$(jira_api get "/rest/api/3/issuetypescreenscheme/mapping?issueTypeScreenSchemeId=$SOURCE_ITSS_ID") \
    || die "Failed to fetch issue type screen scheme mapping"

# Get unique screen scheme IDs
SCREEN_SCHEME_IDS=$(echo "$ITSS_MAPPING" | jq -r '[.values[].screenSchemeId] | unique | .[]')

# Collect all unique screen IDs across all screen schemes
declare -A SCREEN_ID_MAP  # old screen ID -> new screen ID

for SS_ID in $SCREEN_SCHEME_IDS; do
    # Get the screen scheme details
    SS_DETAILS=$(jira_api get "/rest/api/3/screenscheme?id=$SS_ID" 2>/dev/null) || continue
    SS_DATA=$(echo "$SS_DETAILS" | jq --argjson id "$SS_ID" '.values[] | select(.id == $id)')

    # Extract screen IDs (default, create, edit, view)
    for SCREEN_TYPE in default create edit view; do
        SCREEN_ID=$(echo "$SS_DATA" | jq -r ".screens.$SCREEN_TYPE // empty")
        [[ -z "$SCREEN_ID" || "$SCREEN_ID" == "null" ]] && continue

        # Skip if already processed
        [[ -n "${SCREEN_ID_MAP[$SCREEN_ID]:-}" ]] && continue

        # Get screen details
        SCREEN_INFO=$(jira_api get "/rest/api/3/screens?id=$SCREEN_ID" 2>/dev/null) || continue
        SCREEN_DATA=$(echo "$SCREEN_INFO" | jq --argjson id "$SCREEN_ID" '.values[]? | select(.id == $id)')
        SOURCE_SCREEN_NAME=$(echo "$SCREEN_DATA" | jq -r '.name')
        SOURCE_SCREEN_DESC=$(echo "$SCREEN_DATA" | jq -r '.description // ""')

        NEW_SCREEN_NAME=$(replace_project_key "$SOURCE_SCREEN_NAME")

        # Check if screen already exists
        EXISTING_SCREEN=$(jira_api get "/rest/api/3/screens?queryString=$(echo "$NEW_SCREEN_NAME" | jq -Rr @uri)" 2>/dev/null) || true
        NEW_SCREEN_ID=$(echo "$EXISTING_SCREEN" | jq -r --arg name "$NEW_SCREEN_NAME" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

        if [[ -n "$NEW_SCREEN_ID" && "$NEW_SCREEN_ID" != "null" ]]; then
            log "  Found existing screen: $NEW_SCREEN_NAME (ID: $NEW_SCREEN_ID)"
            SCREEN_ID_MAP["$SCREEN_ID"]="$NEW_SCREEN_ID"
        else
            # Create new screen
            SCREEN_PAYLOAD=$(jq -n \
                --arg name "$NEW_SCREEN_NAME" \
                --arg description "$SOURCE_SCREEN_DESC" \
                '{name: $name, description: $description}')

            SCREEN_RESULT=$(jira_api post /rest/api/3/screens "$SCREEN_PAYLOAD" 2>/dev/null) || {
                log "  Warning: Failed to create screen: $NEW_SCREEN_NAME"
                continue
            }

            NEW_SCREEN_ID=$(echo "$SCREEN_RESULT" | jq -r '.id')
            log "  Created screen: $NEW_SCREEN_NAME (ID: $NEW_SCREEN_ID)"
            SCREEN_ID_MAP["$SCREEN_ID"]="$NEW_SCREEN_ID"

            # Get tabs from source screen
            SOURCE_TABS=$(jira_api get "/rest/api/3/screens/$SCREEN_ID/tabs" 2>/dev/null) || continue

            # New screen comes with a default "Field Tab" - get it
            NEW_TABS=$(jira_api get "/rest/api/3/screens/$NEW_SCREEN_ID/tabs" 2>/dev/null) || continue
            DEFAULT_TAB_ID=$(echo "$NEW_TABS" | jq -r '.[0].id // empty')

            TAB_INDEX=0
            while IFS= read -r tab_json; do
                [[ -z "$tab_json" ]] && continue
                TAB_NAME=$(echo "$tab_json" | jq -r '.name')
                SOURCE_TAB_ID=$(echo "$tab_json" | jq -r '.id')

                if [[ $TAB_INDEX -eq 0 && -n "$DEFAULT_TAB_ID" ]]; then
                    # Rename the default tab if it doesn't match
                    if [[ "$TAB_NAME" != "Field Tab" ]]; then
                        jira_api put "/rest/api/3/screens/$NEW_SCREEN_ID/tabs/$DEFAULT_TAB_ID" \
                            "{\"name\": \"$TAB_NAME\"}" >/dev/null 2>&1 || true
                    fi
                    NEW_TAB_ID="$DEFAULT_TAB_ID"
                else
                    # Create additional tab
                    TAB_RESULT=$(jira_api post "/rest/api/3/screens/$NEW_SCREEN_ID/tabs" \
                        "{\"name\": \"$TAB_NAME\"}" 2>/dev/null) || continue
                    NEW_TAB_ID=$(echo "$TAB_RESULT" | jq -r '.id')
                fi

                # Get fields from source tab and add to new tab
                SOURCE_FIELDS=$(jira_api get "/rest/api/3/screens/$SCREEN_ID/tabs/$SOURCE_TAB_ID/fields" 2>/dev/null) || continue

                while IFS= read -r field_json; do
                    [[ -z "$field_json" ]] && continue
                    FIELD_ID=$(echo "$field_json" | jq -r '.id')

                    # Add field to new tab
                    jira_api post "/rest/api/3/screens/$NEW_SCREEN_ID/tabs/$NEW_TAB_ID/fields" \
                        "{\"fieldId\": \"$FIELD_ID\"}" >/dev/null 2>&1 || true
                done < <(echo "$SOURCE_FIELDS" | jq -c '.[]?')

                ((TAB_INDEX++)) || true
            done < <(echo "$SOURCE_TABS" | jq -c '.[]?')
        fi
    done
done

log "  Copied ${#SCREEN_ID_MAP[@]} screens"

# =============================================================================
# Step 8: Copy screen schemes (using copied screens)
# =============================================================================
log "Step 8: Creating screen schemes with copied screens..."

declare -A SCREEN_SCHEME_MAP  # old screen scheme ID -> new screen scheme ID

for SS_ID in $SCREEN_SCHEME_IDS; do
    # Get the screen scheme details
    SS_DETAILS=$(jira_api get "/rest/api/3/screenscheme?id=$SS_ID" 2>/dev/null) || continue
    SS_DATA=$(echo "$SS_DETAILS" | jq --argjson id "$SS_ID" '.values[] | select(.id == $id)')
    SOURCE_SS_NAME=$(echo "$SS_DATA" | jq -r '.name')
    SOURCE_SS_DESC=$(echo "$SS_DATA" | jq -r '.description // ""')

    NEW_SS_NAME=$(replace_project_key "$SOURCE_SS_NAME")

    # Check if screen scheme already exists
    EXISTING_SS=$(jira_api get "/rest/api/3/screenscheme?queryString=$(echo "$NEW_SS_NAME" | jq -Rr @uri)" 2>/dev/null) || true
    NEW_SS_ID=$(echo "$EXISTING_SS" | jq -r --arg name "$NEW_SS_NAME" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

    if [[ -n "$NEW_SS_ID" && "$NEW_SS_ID" != "null" ]]; then
        log "  Found existing screen scheme: $NEW_SS_NAME (ID: $NEW_SS_ID)"
        SCREEN_SCHEME_MAP["$SS_ID"]="$NEW_SS_ID"
    else
        # Build screen mappings using copied screens
        DEFAULT_SCREEN=$(echo "$SS_DATA" | jq -r '.screens.default // empty')
        CREATE_SCREEN=$(echo "$SS_DATA" | jq -r '.screens.create // empty')
        EDIT_SCREEN=$(echo "$SS_DATA" | jq -r '.screens.edit // empty')
        VIEW_SCREEN=$(echo "$SS_DATA" | jq -r '.screens.view // empty')

        # Map to new screen IDs (handle empty values)
        NEW_DEFAULT_SCREEN=""
        NEW_CREATE_SCREEN=""
        NEW_EDIT_SCREEN=""
        NEW_VIEW_SCREEN=""

        if [[ -n "$DEFAULT_SCREEN" ]]; then
            NEW_DEFAULT_SCREEN="${SCREEN_ID_MAP[$DEFAULT_SCREEN]:-$DEFAULT_SCREEN}"
        fi
        if [[ -n "$CREATE_SCREEN" ]]; then
            NEW_CREATE_SCREEN="${SCREEN_ID_MAP[$CREATE_SCREEN]:-$CREATE_SCREEN}"
        fi
        if [[ -n "$EDIT_SCREEN" ]]; then
            NEW_EDIT_SCREEN="${SCREEN_ID_MAP[$EDIT_SCREEN]:-$EDIT_SCREEN}"
        fi
        if [[ -n "$VIEW_SCREEN" ]]; then
            NEW_VIEW_SCREEN="${SCREEN_ID_MAP[$VIEW_SCREEN]:-$VIEW_SCREEN}"
        fi

        # Build payload - default is required
        # Build screens object with all available screen types
        SCREENS_OBJ="{\"default\": $NEW_DEFAULT_SCREEN"
        [[ -n "$NEW_CREATE_SCREEN" ]] && SCREENS_OBJ+=", \"create\": $NEW_CREATE_SCREEN"
        [[ -n "$NEW_EDIT_SCREEN" ]] && SCREENS_OBJ+=", \"edit\": $NEW_EDIT_SCREEN"
        [[ -n "$NEW_VIEW_SCREEN" ]] && SCREENS_OBJ+=", \"view\": $NEW_VIEW_SCREEN"
        SCREENS_OBJ+="}"

        SS_PAYLOAD=$(jq -n \
            --arg name "$NEW_SS_NAME" \
            --arg description "$SOURCE_SS_DESC" \
            --argjson screens "$SCREENS_OBJ" \
            '{
                name: $name,
                description: $description,
                screens: $screens
            }')

        SS_RESULT=$(jira_api post /rest/api/3/screenscheme "$SS_PAYLOAD" 2>/dev/null) || {
            log "  Warning: Failed to create screen scheme: $NEW_SS_NAME"
            SCREEN_SCHEME_MAP["$SS_ID"]="$SS_ID"  # Fall back to original
            continue
        }

        NEW_SS_ID=$(echo "$SS_RESULT" | jq -r '.id')
        log "  Created screen scheme: $NEW_SS_NAME (ID: $NEW_SS_ID)"
        SCREEN_SCHEME_MAP["$SS_ID"]="$NEW_SS_ID"
    fi
done

log "  Created ${#SCREEN_SCHEME_MAP[@]} screen schemes"

# =============================================================================
# Step 9: Create new issue type screen scheme (with copied screen schemes)
# =============================================================================
log "Step 9: Creating issue type screen scheme..."

# Check if issue type screen scheme already exists
EXISTING_ITSS=$(jira_api get "/rest/api/3/issuetypescreenscheme?queryString=$(echo "$NEW_KEY: Issue Type Screen Scheme" | jq -Rr @uri)" 2>/dev/null) || true
NEW_ITSS_ID=$(echo "$EXISTING_ITSS" | jq -r --arg name "$NEW_KEY: Issue Type Screen Scheme" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

# Check if existing ITSS uses our new screen schemes
ITSS_NEEDS_UPDATE=false
if [[ -n "$NEW_ITSS_ID" && "$NEW_ITSS_ID" != "null" && ${#SCREEN_SCHEME_MAP[@]} -gt 0 ]]; then
    # Check if existing ITSS mappings point to old screen schemes
    CURRENT_MAPPINGS=$(jira_api get "/rest/api/3/issuetypescreenscheme/mapping?issueTypeScreenSchemeId=$NEW_ITSS_ID" 2>/dev/null) || true
    for OLD_SS in "${!SCREEN_SCHEME_MAP[@]}"; do
        if echo "$CURRENT_MAPPINGS" | jq -e --arg id "$OLD_SS" '.values[] | select(.screenSchemeId == $id)' >/dev/null 2>&1; then
            log "  Existing ITSS uses old screen scheme $OLD_SS, needs update"
            ITSS_NEEDS_UPDATE=true
            break
        fi
    done
fi

if [[ -n "$NEW_ITSS_ID" && "$NEW_ITSS_ID" != "null" && "$ITSS_NEEDS_UPDATE" == "false" ]]; then
    log "  Found existing issue type screen scheme: $NEW_ITSS_ID (with correct mappings)"
else
    # Delete existing ITSS if it needs update (can only delete if not in use)
    if [[ "$ITSS_NEEDS_UPDATE" == "true" ]]; then
        log "  Deleting existing issue type screen scheme to recreate with correct mappings..."
        jira_api delete "/rest/api/3/issuetypescreenscheme/$NEW_ITSS_ID" >/dev/null 2>&1 || {
            log "  Warning: Could not delete existing ITSS (may be in use). Will use existing scheme."
            log "  Note: Screen scheme mappings may not be fully isolated."
        }
        NEW_ITSS_ID=""
    fi

    if [[ -z "$NEW_ITSS_ID" || "$NEW_ITSS_ID" == "null" ]]; then
        # Build the mappings array using NEW screen scheme IDs
        ITSS_MAPPINGS_ARRAY="["
        FIRST=true
        while IFS= read -r mapping; do
            [[ -z "$mapping" ]] && continue
            ISSUE_TYPE=$(echo "$mapping" | jq -r '.issueTypeId')
            OLD_SS=$(echo "$mapping" | jq -r '.screenSchemeId')
            NEW_SS="${SCREEN_SCHEME_MAP[$OLD_SS]:-$OLD_SS}"

            [[ "$FIRST" != "true" ]] && ITSS_MAPPINGS_ARRAY+=","
            ITSS_MAPPINGS_ARRAY+="{\"issueTypeId\":\"$ISSUE_TYPE\",\"screenSchemeId\":\"$NEW_SS\"}"
            FIRST=false
        done < <(echo "$ITSS_MAPPING" | jq -c '.values[]')
        ITSS_MAPPINGS_ARRAY+="]"

        NEW_ITSS_PAYLOAD=$(jq -n \
            --arg name "$NEW_KEY: Issue Type Screen Scheme" \
            --arg description "Issue type screen scheme for $NEW_NAME project" \
            --argjson mappings "$ITSS_MAPPINGS_ARRAY" \
            '{
                name: $name,
                description: $description,
                issueTypeMappings: $mappings
            }')

        NEW_ITSS_RESULT=$(jira_api post /rest/api/3/issuetypescreenscheme "$NEW_ITSS_PAYLOAD") \
            || die "Failed to create issue type screen scheme"

        NEW_ITSS_ID=$(echo "$NEW_ITSS_RESULT" | jq -r '.id')
        log "  Created issue type screen scheme: $NEW_KEY: Issue Type Screen Scheme (ID: $NEW_ITSS_ID)"
    fi
fi

# =============================================================================
# Step 10: Copy field configurations (for full isolation)
# =============================================================================
log "Step 10: Copying field configurations..."

declare -A FIELD_CONFIG_MAP  # old field config ID -> new field config ID

if [[ -n "$SOURCE_FCS_ID" ]]; then
    # Get field configuration mappings
    FCS_MAPPING=$(jira_api get "/rest/api/3/fieldconfigurationscheme/mapping?fieldConfigurationSchemeId=$SOURCE_FCS_ID") \
        || die "Failed to fetch field configuration scheme mapping"

    # Get unique field configuration IDs
    FIELD_CONFIG_IDS=$(echo "$FCS_MAPPING" | jq -r '[.values[].fieldConfigurationId] | unique | .[]')

    for FC_ID in $FIELD_CONFIG_IDS; do
        # Get the field configuration details
        FC_DETAILS=$(jira_api get "/rest/api/3/fieldconfiguration?id=$FC_ID" 2>/dev/null) || continue
        FC_DATA=$(echo "$FC_DETAILS" | jq --argjson id "$FC_ID" '.values[]? | select(.id == $id)')
        SOURCE_FC_NAME=$(echo "$FC_DATA" | jq -r '.name')
        SOURCE_FC_DESC=$(echo "$FC_DATA" | jq -r '.description // ""')

        # Skip the default field configuration (can't be copied, ID is often 10000)
        IS_DEFAULT=$(echo "$FC_DATA" | jq -r '.isDefault // false')
        if [[ "$IS_DEFAULT" == "true" ]]; then
            log "  Skipping default field configuration: $SOURCE_FC_NAME (ID: $FC_ID)"
            FIELD_CONFIG_MAP["$FC_ID"]="$FC_ID"
            continue
        fi

        NEW_FC_NAME=$(replace_project_key "$SOURCE_FC_NAME")

        # Check if field configuration already exists
        EXISTING_FC=$(jira_api get "/rest/api/3/fieldconfiguration?queryString=$(echo "$NEW_FC_NAME" | jq -Rr @uri)" 2>/dev/null) || true
        NEW_FC_ID=$(echo "$EXISTING_FC" | jq -r --arg name "$NEW_FC_NAME" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

        if [[ -n "$NEW_FC_ID" && "$NEW_FC_ID" != "null" ]]; then
            log "  Found existing field configuration: $NEW_FC_NAME (ID: $NEW_FC_ID)"
            FIELD_CONFIG_MAP["$FC_ID"]="$NEW_FC_ID"
        else
            # Create new field configuration
            FC_PAYLOAD=$(jq -n \
                --arg name "$NEW_FC_NAME" \
                --arg description "$SOURCE_FC_DESC" \
                '{name: $name, description: $description}')

            FC_RESULT=$(jira_api post /rest/api/3/fieldconfiguration "$FC_PAYLOAD" 2>/dev/null) || {
                log "  Warning: Failed to create field configuration: $NEW_FC_NAME"
                FIELD_CONFIG_MAP["$FC_ID"]="$FC_ID"
                continue
            }

            NEW_FC_ID=$(echo "$FC_RESULT" | jq -r '.id')
            log "  Created field configuration: $NEW_FC_NAME (ID: $NEW_FC_ID)"
            FIELD_CONFIG_MAP["$FC_ID"]="$NEW_FC_ID"

            # Get field configuration items from source
            SOURCE_FC_ITEMS=$(jira_api get "/rest/api/3/fieldconfiguration/$FC_ID/fields?maxResults=500" 2>/dev/null) || continue

            # Build update payload with field items (isHidden, isRequired, description, renderer)
            FC_ITEMS_PAYLOAD=$(echo "$SOURCE_FC_ITEMS" | jq '{
                fieldConfigurationItems: [.values[] | {
                    id: .id,
                    isHidden: .isHidden,
                    isRequired: .isRequired,
                    description: .description,
                    renderer: .renderer
                } | with_entries(select(.value != null and .value != ""))]
            }')

            ITEMS_COUNT=$(echo "$FC_ITEMS_PAYLOAD" | jq '.fieldConfigurationItems | length')
            if [[ "$ITEMS_COUNT" -gt 0 ]]; then
                jira_api put "/rest/api/3/fieldconfiguration/$NEW_FC_ID/fields" "$FC_ITEMS_PAYLOAD" >/dev/null 2>&1 || {
                    log "    Warning: Failed to copy field configuration items"
                }
                log "    Copied $ITEMS_COUNT field configuration items"
            fi
        fi
    done

    log "  Copied ${#FIELD_CONFIG_MAP[@]} field configurations"
else
    log "  No custom field configuration scheme to copy"
fi

# =============================================================================
# Step 11: Create new field configuration scheme (with copied field configs)
# =============================================================================
NEW_FCS_ID=""
if [[ -n "$SOURCE_FCS_ID" ]]; then
    log "Step 11: Creating field configuration scheme..."

    # Check if field configuration scheme already exists
    EXISTING_FCS=$(jira_api get "/rest/api/3/fieldconfigurationscheme" 2>/dev/null) || true
    NEW_FCS_ID=$(echo "$EXISTING_FCS" | jq -r --arg name "$NEW_KEY: Field Configuration Scheme" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

    if [[ -n "$NEW_FCS_ID" && "$NEW_FCS_ID" != "null" ]]; then
        log "  Found existing field configuration scheme: $NEW_FCS_ID"
    else
        # First create the scheme
        NEW_FCS_PAYLOAD=$(jq -n \
            --arg name "$NEW_KEY: Field Configuration Scheme" \
            --arg description "Field configuration scheme for $NEW_NAME project" \
            '{
                name: $name,
                description: $description
            }')

        NEW_FCS_RESULT=$(jira_api post /rest/api/3/fieldconfigurationscheme "$NEW_FCS_PAYLOAD") \
            || die "Failed to create field configuration scheme"

        NEW_FCS_ID=$(echo "$NEW_FCS_RESULT" | jq -r '.id')
        log "  Created field configuration scheme: $NEW_KEY: Field Configuration Scheme (ID: $NEW_FCS_ID)"

        # Add mappings using NEW field configuration IDs
        FCS_ITEMS="["
        FIRST=true
        while IFS= read -r mapping; do
            [[ -z "$mapping" ]] && continue
            ISSUE_TYPE=$(echo "$mapping" | jq -r '.issueTypeId')
            OLD_FC=$(echo "$mapping" | jq -r '.fieldConfigurationId')
            NEW_FC="${FIELD_CONFIG_MAP[$OLD_FC]:-$OLD_FC}"

            [[ "$FIRST" != "true" ]] && FCS_ITEMS+=","
            FCS_ITEMS+="{\"issueTypeId\":\"$ISSUE_TYPE\",\"fieldConfigurationId\":\"$NEW_FC\"}"
            FIRST=false
        done < <(echo "$FCS_MAPPING" | jq -c '.values[]')
        FCS_ITEMS+="]"

        if [[ "$FCS_ITEMS" != "[]" ]]; then
            FCS_ITEMS_PAYLOAD=$(jq -n --argjson mappings "$FCS_ITEMS" '{mappings: $mappings}')
            jira_api put "/rest/api/3/fieldconfigurationscheme/$NEW_FCS_ID/mapping" "$FCS_ITEMS_PAYLOAD" >/dev/null \
                || log "    Warning: Failed to add field configuration mappings"
        fi
    fi
else
    log "Step 11: Skipping field configuration scheme (source uses default)"
fi

# =============================================================================
# Step 12: Create new permission scheme
# =============================================================================
log "Step 12: Creating permission scheme..."

# Get full permission scheme with grants
FULL_PERM_SCHEME=$(jira_api get "/rest/api/3/permissionscheme/$SOURCE_PERM_SCHEME_ID?expand=permissions") \
    || die "Failed to fetch full permission scheme"

# Extract permissions/grants with optional filtering
# Only include type and parameter in holder (not value/expand which are read-only)
PERM_GRANTS_RAW=$(echo "$FULL_PERM_SCHEME" | jq '[.permissions[] | {
    permission: .permission,
    holder: {type: .holder.type, parameter: .holder.parameter}
}]')

# Apply exclusion filter if specified
if [[ -n "$EXCLUDE_PERMISSION_HOLDERS" ]]; then
    log "  Filtering permissions (excluding: $EXCLUDE_PERMISSION_HOLDERS)"
    # Build jq filter from comma-separated list
    # Format: type:value or just type
    JQ_FILTER='.'
    IFS=',' read -ra EXCLUSIONS <<< "$EXCLUDE_PERMISSION_HOLDERS"
    for exclusion in "${EXCLUSIONS[@]}"; do
        if [[ "$exclusion" == *:* ]]; then
            # type:value format
            exc_type="${exclusion%%:*}"
            exc_value="${exclusion#*:}"
            JQ_FILTER="$JQ_FILTER | map(select(.holder.type != \"$exc_type\" or .holder.parameter != \"$exc_value\"))"
        else
            # just type format - exclude all of this type
            JQ_FILTER="$JQ_FILTER | map(select(.holder.type != \"$exclusion\"))"
        fi
    done
    PERM_GRANTS=$(echo "$PERM_GRANTS_RAW" | jq "$JQ_FILTER")
    FILTERED_COUNT=$(echo "$PERM_GRANTS_RAW" | jq 'length')
    REMAINING_COUNT=$(echo "$PERM_GRANTS" | jq 'length')
    log "  Filtered: $FILTERED_COUNT -> $REMAINING_COUNT permissions"
else
    PERM_GRANTS="$PERM_GRANTS_RAW"
fi

REQUESTED_PERM_COUNT=$(echo "$PERM_GRANTS" | jq 'length')
log "  Requesting $REQUESTED_PERM_COUNT permissions..."

# Check if permission scheme already exists (idempotency)
EXISTING_PERM_SCHEME=$(jira_api get "/rest/api/3/permissionscheme" 2>/dev/null) || true
NEW_PERM_ID=$(echo "$EXISTING_PERM_SCHEME" | jq -r --arg name "$NEW_KEY: Permission Scheme" '.permissionSchemes[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

if [[ -n "$NEW_PERM_ID" && "$NEW_PERM_ID" != "null" ]]; then
    log "  Found existing permission scheme: $NEW_PERM_ID"
    EXISTING_PERM_RESULT=$(jira_api get "/rest/api/3/permissionscheme/$NEW_PERM_ID?expand=permissions")
    CREATED_PERM_COUNT=$(echo "$EXISTING_PERM_RESULT" | jq '.permissions | length')
else
    # Create empty permission scheme first (bulk creation fails if ANY permission is invalid)
    # Jira auto-adds ~40 default permissions, we'll add our custom ones on top
    NEW_PERM_PAYLOAD=$(jq -n \
        --arg name "$NEW_KEY: Permission Scheme" \
        --arg description "Permission scheme for $NEW_NAME project" \
        '{
            name: $name,
            description: $description
        }')

    NEW_PERM_RESULT=$(jira_api post /rest/api/3/permissionscheme "$NEW_PERM_PAYLOAD") \
        || die "Failed to create permission scheme"

    NEW_PERM_ID=$(echo "$NEW_PERM_RESULT" | jq -r '.id')
    CREATED_PERM_COUNT=$(echo "$NEW_PERM_RESULT" | jq '.permissions | length')
    log "  Created empty scheme (Jira added $CREATED_PERM_COUNT default permissions)"
fi

# Get what was actually created (either existing or defaults)
EXISTING_PERM_RESULT=$(jira_api get "/rest/api/3/permissionscheme/$NEW_PERM_ID?expand=permissions")
CREATED_PERMS=$(echo "$EXISTING_PERM_RESULT" | jq '[.permissions[] | {permission: .permission, holder: {type: .holder.type, parameter: .holder.parameter}}]')

# Find permissions that need to be added
MISSING_PERMS=$(jq -n \
    --argjson requested "$PERM_GRANTS" \
    --argjson created "$CREATED_PERMS" \
    '$requested | map(. as $req |
        if ($created | map(select(.permission == $req.permission and .holder.type == $req.holder.type and (.holder.parameter // "") == ($req.holder.parameter // ""))) | length) == 0
        then $req else empty end)')

MISSING_COUNT=$(echo "$MISSING_PERMS" | jq 'length')
log "  Adding $MISSING_COUNT permissions individually..."

ADD_SUCCESS=0
ADD_FAILED=0

# Add each missing permission individually
while IFS= read -r perm_json; do
    [[ -z "$perm_json" ]] && continue

    PERM_NAME=$(echo "$perm_json" | jq -r '.permission')
    HOLDER_TYPE=$(echo "$perm_json" | jq -r '.holder.type')
    HOLDER_PARAM=$(echo "$perm_json" | jq -r '.holder.parameter // empty')

    # Build grant payload
    if [[ -n "$HOLDER_PARAM" ]]; then
        GRANT_PAYLOAD=$(jq -n \
            --arg perm "$PERM_NAME" \
            --arg type "$HOLDER_TYPE" \
            --arg param "$HOLDER_PARAM" \
            '{permission: $perm, holder: {type: $type, parameter: $param}}')
    else
        GRANT_PAYLOAD=$(jq -n \
            --arg perm "$PERM_NAME" \
            --arg type "$HOLDER_TYPE" \
            '{permission: $perm, holder: {type: $type}}')
    fi

    # Try to create the permission grant
    GRANT_RESULT=$(jira_api post "/rest/api/3/permissionscheme/$NEW_PERM_ID/permission" "$GRANT_PAYLOAD" 2>/dev/null) || true

    if echo "$GRANT_RESULT" | jq -e '.id' >/dev/null 2>&1; then
        ((ADD_SUCCESS++)) || true
        log_verbose "  Added: $PERM_NAME for $HOLDER_TYPE${HOLDER_PARAM:+:$HOLDER_PARAM}"
    else
        ((ADD_FAILED++)) || true
        ERROR_MSG=$(echo "$GRANT_RESULT" | jq -r '.errors.permission // .errorMessages[0] // "Unknown error"' 2>/dev/null || echo "Unknown error")
        log_verbose "  Failed: $PERM_NAME for $HOLDER_TYPE${HOLDER_PARAM:+:$HOLDER_PARAM} - $ERROR_MSG"
    fi
done < <(echo "$MISSING_PERMS" | jq -c '.[]')

log "  Results: $ADD_SUCCESS added, $ADD_FAILED failed"

# Get final count
FINAL_PERM_RESULT=$(jira_api get "/rest/api/3/permissionscheme/$NEW_PERM_ID?expand=permissions")
FINAL_PERM_COUNT=$(echo "$FINAL_PERM_RESULT" | jq '.permissions | length')
log "  Final permission count: $FINAL_PERM_COUNT (requested: $REQUESTED_PERM_COUNT)"
log "  Created permission scheme: $NEW_KEY: Permission Scheme (ID: $NEW_PERM_ID)"

# =============================================================================
# Step 13: Create new notification scheme (optional)
# =============================================================================
NEW_NOTIF_ID=""
if [[ "$SKIP_NOTIFICATION_SCHEME" != "true" ]]; then
    log "Step 13: Creating notification scheme..."

    # Check if notification scheme already exists
    EXISTING_NOTIF=$(jira_api get "/rest/api/3/notificationscheme" 2>/dev/null) || true
    NEW_NOTIF_ID=$(echo "$EXISTING_NOTIF" | jq -r --arg name "$NEW_KEY: Notification Scheme" '.values[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

    if [[ -n "$NEW_NOTIF_ID" && "$NEW_NOTIF_ID" != "null" ]]; then
        log "  Found existing notification scheme: $NEW_NOTIF_ID"
    else
        # Get full notification scheme with events
        FULL_NOTIF_SCHEME=$(jira_api get "/rest/api/3/notificationscheme/$SOURCE_NOTIF_SCHEME_ID?expand=all") \
            || die "Failed to fetch full notification scheme"

        # Extract notification events
        NOTIF_EVENTS=$(echo "$FULL_NOTIF_SCHEME" | jq '[.notificationSchemeEvents[] | {
            event: {id: .event.id},
            notifications: [.notifications[] | {
                notificationType: .type,
                parameter: .parameter
            } | with_entries(select(.value != null))]
        }]')

        NEW_NOTIF_PAYLOAD=$(jq -n \
            --arg name "$NEW_KEY: Notification Scheme" \
            --arg description "Notification scheme for $NEW_NAME project" \
            --argjson events "$NOTIF_EVENTS" \
            '{
                name: $name,
                description: $description,
                notificationSchemeEvents: $events
            }')

        NEW_NOTIF_RESULT=$(jira_api post /rest/api/3/notificationscheme "$NEW_NOTIF_PAYLOAD") \
            || die "Failed to create notification scheme"

        NEW_NOTIF_ID=$(echo "$NEW_NOTIF_RESULT" | jq -r '.id')
        log "  Created notification scheme: $NEW_KEY: Notification Scheme (ID: $NEW_NOTIF_ID)"
    fi
else
    log "Step 13: Skipping notification scheme (--skip-notification-scheme)"
fi

# =============================================================================
# Step 14: Create new issue security scheme (optional)
# =============================================================================
NEW_SEC_ID=""
if [[ -n "$SOURCE_SEC_SCHEME_ID" && "$SKIP_SECURITY_SCHEME" != "true" ]]; then
    log "Step 14: Creating issue security scheme..."

    # Check if issue security scheme already exists
    EXISTING_SEC=$(jira_api get "/rest/api/3/issuesecurityschemes" 2>/dev/null) || true
    NEW_SEC_ID=$(echo "$EXISTING_SEC" | jq -r --arg name "$NEW_KEY: Issue Security Scheme" '.issueSecuritySchemes[]? | select(.name == $name) | .id' 2>/dev/null | head -1)

    if [[ -n "$NEW_SEC_ID" && "$NEW_SEC_ID" != "null" ]]; then
        log "  Found existing issue security scheme: $NEW_SEC_ID"
    else
        # Get full security scheme with levels
        FULL_SEC_SCHEME=$(jira_api get "/rest/api/3/issuesecurityschemes/$SOURCE_SEC_SCHEME_ID") \
            || die "Failed to fetch full issue security scheme"

        # Get security levels
        SEC_LEVELS=$(jira_api get "/rest/api/3/issuesecurityschemes/$SOURCE_SEC_SCHEME_ID/members") \
            || log "    Warning: Failed to fetch security level members"

        # Build levels array
        LEVELS_ARRAY=$(echo "$FULL_SEC_SCHEME" | jq '[.levels[]? | {
            name: .name,
            description: .description,
            isDefault: false
        }]')

        NEW_SEC_PAYLOAD=$(jq -n \
            --arg name "$NEW_KEY: Issue Security Scheme" \
            --arg description "Issue security scheme for $NEW_NAME project" \
            --argjson levels "$LEVELS_ARRAY" \
            '{
                name: $name,
                description: $description,
                levels: $levels
            }')

        NEW_SEC_RESULT=$(jira_api post /rest/api/3/issuesecurityschemes "$NEW_SEC_PAYLOAD") \
            || die "Failed to create issue security scheme"

        NEW_SEC_ID=$(echo "$NEW_SEC_RESULT" | jq -r '.id')
        log "  Created issue security scheme: $NEW_KEY: Issue Security Scheme (ID: $NEW_SEC_ID)"
    fi
else
    if [[ -z "$SOURCE_SEC_SCHEME_ID" ]]; then
        log "Step 14: Skipping issue security scheme (source has none)"
    else
        log "Step 14: Skipping issue security scheme (--skip-security-scheme)"
    fi
fi

# =============================================================================
# Step 15: Create the project
# =============================================================================
log "Step 15: Creating project..."

# Check if project already exists
EXISTING_PROJECT=$(jira_api get "/rest/api/3/project/$NEW_KEY" 2>/dev/null) || true
NEW_PROJECT_ID=$(echo "$EXISTING_PROJECT" | jq -r '.id // empty' 2>/dev/null)

if [[ -n "$NEW_PROJECT_ID" ]]; then
    NEW_PROJECT_KEY="$NEW_KEY"
    log "  Found existing project: $NEW_KEY (ID: $NEW_PROJECT_ID)"
else
    # Build project creation payload
    PROJECT_PAYLOAD=$(jq -n \
        --arg key "$NEW_KEY" \
        --arg name "$NEW_NAME" \
        --arg description "${DESCRIPTION:-Clone of $SOURCE_PROJECT project}" \
        --arg leadAccountId "$NEW_LEAD" \
        --arg projectTypeKey "$SOURCE_PROJECT_TYPE" \
        --argjson workflowScheme "$NEW_WF_SCHEME_ID" \
        --argjson issueTypeScheme "$NEW_ITS_ID" \
        --argjson issueTypeScreenScheme "$NEW_ITSS_ID" \
        --argjson permissionScheme "$NEW_PERM_ID" \
        --argjson notificationScheme "${NEW_NOTIF_ID:-null}" \
        --argjson fieldConfigurationScheme "${NEW_FCS_ID:-null}" \
        --argjson issueSecurityScheme "${NEW_SEC_ID:-null}" \
        '{
            key: $key,
            name: $name,
            description: $description,
            leadAccountId: $leadAccountId,
            projectTypeKey: $projectTypeKey,
            workflowScheme: $workflowScheme,
            issueTypeScheme: $issueTypeScheme,
            issueTypeScreenScheme: $issueTypeScreenScheme,
            permissionScheme: $permissionScheme
        }
        + (if $notificationScheme then {notificationScheme: $notificationScheme} else {} end)
        + (if $fieldConfigurationScheme then {fieldConfigurationScheme: $fieldConfigurationScheme} else {} end)
        + (if $issueSecurityScheme then {issueSecurityScheme: $issueSecurityScheme} else {} end)
    ')

    PROJECT_RESULT=$(jira_api post /rest/api/3/project "$PROJECT_PAYLOAD") \
        || die "Failed to create project"

    NEW_PROJECT_ID=$(echo "$PROJECT_RESULT" | jq -r '.id')
    NEW_PROJECT_KEY=$(echo "$PROJECT_RESULT" | jq -r '.key')
    log "  Created project: $NEW_PROJECT_KEY (ID: $NEW_PROJECT_ID)"
fi

# =============================================================================
# Step 16: Copy components (optional)
# =============================================================================
if [[ "$SKIP_COMPONENTS" != "true" ]]; then
    log "Step 16: Copying components..."

    COMPONENTS=$(echo "$SOURCE_PROJECT_JSON" | jq -c '.components[]?')
    COMPONENT_COUNT=0

    while IFS= read -r component; do
        [[ -z "$component" ]] && continue

        COMP_NAME=$(echo "$component" | jq -r '.name')
        COMP_DESC=$(echo "$component" | jq -r '.description // ""')

        COMP_PAYLOAD=$(jq -n \
            --arg name "$COMP_NAME" \
            --arg description "$COMP_DESC" \
            --arg project "$NEW_KEY" \
            '{
                name: $name,
                description: $description,
                project: $project
            }')

        if jira_api post /rest/api/3/component "$COMP_PAYLOAD" >/dev/null 2>&1; then
            ((COMPONENT_COUNT++)) || true
        else
            log "    Warning: Failed to create component: $COMP_NAME"
        fi

    done <<< "$COMPONENTS"

    log "  Copied $COMPONENT_COUNT components"
else
    log "Step 16: Skipping components (--skip-components)"
fi

# =============================================================================
# Step 17: Copy versions (optional)
# =============================================================================
if [[ "$SKIP_VERSIONS" != "true" ]]; then
    log "Step 17: Copying versions..."

    VERSIONS=$(jira_api get "/rest/api/3/project/$SOURCE_PROJECT/versions") \
        || log "    Warning: Failed to fetch versions"

    VERSION_COUNT=0

    echo "$VERSIONS" | jq -c '.[]?' | while IFS= read -r version; do
        [[ -z "$version" ]] && continue

        VER_NAME=$(echo "$version" | jq -r '.name')
        VER_DESC=$(echo "$version" | jq -r '.description // ""')
        VER_RELEASED=$(echo "$version" | jq -r '.released')
        VER_ARCHIVED=$(echo "$version" | jq -r '.archived')

        VER_PAYLOAD=$(jq -n \
            --arg name "$VER_NAME" \
            --arg description "$VER_DESC" \
            --arg projectId "$NEW_PROJECT_ID" \
            --argjson released "$VER_RELEASED" \
            --argjson archived "$VER_ARCHIVED" \
            '{
                name: $name,
                description: $description,
                projectId: ($projectId | tonumber),
                released: $released,
                archived: $archived
            }')

        jira_api post /rest/api/3/version "$VER_PAYLOAD" >/dev/null 2>&1 && {
            ((VERSION_COUNT++)) || true
        } || log "    Warning: Failed to create version: $VER_NAME"

    done

    log "  Copied versions"
else
    log "Step 17: Skipping versions (--skip-versions)"
fi

# =============================================================================
# Step 18: Copy project role actors (optional)
# =============================================================================
if [[ "$SKIP_ROLES" != "true" ]]; then
    log "Step 18: Copying project role actors..."

    # Get roles from source project
    ROLES_JSON=$(echo "$SOURCE_PROJECT_JSON" | jq -r '.roles')

    while IFS= read -r role_name; do
        [[ -z "$role_name" ]] && continue
        role_url=$(echo "$ROLES_JSON" | jq -r --arg name "$role_name" '.[$name]')
        role_id=$(echo "$role_url" | grep -oP '/role/\K\d+' || echo "")
        [[ -z "$role_id" ]] && continue

        # Get actors for this role in source project
        ROLE_ACTORS=$(jira_api get "/rest/api/3/project/$SOURCE_PROJECT/role/$role_id" 2>/dev/null) || continue

        # Extract user and group actors
        USER_ACTORS=$(echo "$ROLE_ACTORS" | jq '[.actors[]? | select(.type == "atlassian-user-role-actor") | .actorUser.accountId]' 2>/dev/null || echo "[]")
        GROUP_ACTORS=$(echo "$ROLE_ACTORS" | jq '[.actors[]? | select(.type == "atlassian-group-role-actor") | .name]' 2>/dev/null || echo "[]")

        # Add actors to new project role
        if [[ $(echo "$USER_ACTORS" | jq 'length' 2>/dev/null || echo "0") -gt 0 || $(echo "$GROUP_ACTORS" | jq 'length' 2>/dev/null || echo "0") -gt 0 ]]; then
            ACTORS_PAYLOAD=$(jq -n \
                --argjson users "$USER_ACTORS" \
                --argjson groups "$GROUP_ACTORS" \
                '{user: $users, group: $groups}')

            jira_api post "/rest/api/3/project/$NEW_KEY/role/$role_id" "$ACTORS_PAYLOAD" >/dev/null 2>&1 \
                || log "    Warning: Some actors could not be added to role: $role_name"
        fi
    done < <(echo "$ROLES_JSON" | jq -r 'keys[]')

    log "  Copied project role actors"
else
    log "Step 18: Skipping project roles (--skip-roles)"
fi

# =============================================================================
# Complete!
# =============================================================================
log ""
log "=========================================="
log "Project clone complete!"
log "=========================================="
log ""
log "New project: $NEW_PROJECT_KEY - $NEW_NAME"
log "Project ID: $NEW_PROJECT_ID"
log ""
log "Created schemes:"
log "  - Workflow Scheme: $NEW_KEY: Workflow Scheme (ID: $NEW_WF_SCHEME_ID)"
log "  - Issue Type Scheme: $NEW_KEY: Issue Type Scheme (ID: $NEW_ITS_ID)"
log "  - Issue Type Screen Scheme: $NEW_KEY: Issue Type Screen Scheme (ID: $NEW_ITSS_ID)"
[[ -n "$NEW_FCS_ID" ]] && log "  - Field Configuration Scheme: $NEW_KEY: Field Configuration Scheme (ID: $NEW_FCS_ID)"
log "  - Permission Scheme: $NEW_KEY: Permission Scheme (ID: $NEW_PERM_ID)"
[[ -n "$NEW_NOTIF_ID" ]] && log "  - Notification Scheme: $NEW_KEY: Notification Scheme (ID: $NEW_NOTIF_ID)"
[[ -n "$NEW_SEC_ID" ]] && log "  - Issue Security Scheme: $NEW_KEY: Issue Security Scheme (ID: $NEW_SEC_ID)"
log ""
log "Copied for full isolation:"
log "  - ${#WORKFLOW_ID_MAP[@]} workflows"
log "  - ${#SCREEN_ID_MAP[@]} screens"
log "  - ${#SCREEN_SCHEME_MAP[@]} screen schemes"
[[ ${#FIELD_CONFIG_MAP[@]} -gt 0 ]] && log "  - ${#FIELD_CONFIG_MAP[@]} field configurations"
log ""
log "Full log: $LOG_FILE"
