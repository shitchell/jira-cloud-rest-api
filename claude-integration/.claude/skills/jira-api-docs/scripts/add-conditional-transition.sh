#!/usr/bin/env bash
#
# Add a conditional global transition to a Jira workflow, preserving status positions
#
# This script demonstrates how to:
# 1. Fetch the current workflow version
# 2. Add a new global transition with a group-based condition
# 3. Preserve all existing status layouts for the Web UI
#
# Usage: ./add-conditional-transition.sh [OPTIONS]
#
# Options:
#   --project KEY          Project key (default: TESTPROJ)
#   --issue-type NAME      Issue type name (default: Incident)
#   --transition-name NAME Name for new transition (default: "[Robots] Any")
#   --to-status ID         Status ID to transition to (default: 1 = To-Do)
#   --group-id ID          Group ID for condition (default: Robots group)
#   --dry-run              Show payload without executing
#   -h, --help             Show this help

set -euo pipefail

# =============================================================================
# Configuration - modify these defaults as needed
# =============================================================================
DEFAULT_PROJECT_KEY="TESTPROJ"
DEFAULT_ISSUE_TYPE_NAME="Incident"
DEFAULT_TRANSITION_NAME="[Robots] Any"
DEFAULT_TO_STATUS_ID="1"  # To-Do
DEFAULT_GROUP_ID="162f0ef9-34ef-41a5-889b-3160cda41945"  # Robots group

# =============================================================================
# Parse arguments
# =============================================================================
PROJECT_KEY="$DEFAULT_PROJECT_KEY"
ISSUE_TYPE_NAME="$DEFAULT_ISSUE_TYPE_NAME"
TRANSITION_NAME="$DEFAULT_TRANSITION_NAME"
TO_STATUS_ID="$DEFAULT_TO_STATUS_ID"
GROUP_ID="$DEFAULT_GROUP_ID"
DRY_RUN=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --project)
            PROJECT_KEY="$2"
            shift 2
            ;;
        --issue-type)
            ISSUE_TYPE_NAME="$2"
            shift 2
            ;;
        --transition-name)
            TRANSITION_NAME="$2"
            shift 2
            ;;
        --to-status)
            TO_STATUS_ID="$2"
            shift 2
            ;;
        --group-id)
            GROUP_ID="$2"
            shift 2
            ;;
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        -h|--help)
            head -30 "$0" | tail -n +2 | sed 's/^# //' | sed 's/^#//'
            exit 0
            ;;
        *)
            echo "Unknown option: $1" >&2
            exit 1
            ;;
    esac
done

# =============================================================================
# Helper functions
# =============================================================================
die() {
    echo "ERROR: $*" >&2
    exit 1
}

require_cmd() {
    command -v "$1" >/dev/null 2>&1 || die "Required command not found: $1"
}

log() {
    echo "[INFO] $*" >&2
}

# =============================================================================
# Validate dependencies
# =============================================================================
require_cmd jira
require_cmd jq

# =============================================================================
# Get project ID
# =============================================================================
log "Fetching project ID for: $PROJECT_KEY"
PROJECT_JSON=$(jira get "/rest/api/3/project/$PROJECT_KEY" 2>/dev/null) \
    || die "Failed to fetch project: $PROJECT_KEY"

PROJECT_ID=$(echo "$PROJECT_JSON" | jq -r '.id') \
    || die "Failed to parse project ID"

log "  Project ID: $PROJECT_ID"

# =============================================================================
# Get issue type ID
# =============================================================================
log "Fetching issue type ID for: $ISSUE_TYPE_NAME"
ISSUE_TYPES_JSON=$(jira get "/rest/api/3/issuetype" 2>/dev/null) \
    || die "Failed to fetch issue types"

ISSUE_TYPE_ID=$(echo "$ISSUE_TYPES_JSON" | jq -r --arg name "$ISSUE_TYPE_NAME" \
    '.[] | select(.name == $name) | .id') \
    || die "Failed to parse issue type ID"

[[ -n "$ISSUE_TYPE_ID" ]] || die "Issue type not found: $ISSUE_TYPE_NAME"

log "  Issue Type ID: $ISSUE_TYPE_ID"

# =============================================================================
# Fetch current workflow
# =============================================================================
log "Fetching current workflow..."
WORKFLOW_JSON=$(jira post /rest/api/3/workflows -d "{
    \"projectAndIssueTypes\": [{
        \"projectId\": \"$PROJECT_ID\",
        \"issueTypeId\": \"$ISSUE_TYPE_ID\"
    }]
}" 2>/dev/null) || die "Failed to fetch workflow"

# Extract workflow details
WORKFLOW_ID=$(echo "$WORKFLOW_JSON" | jq -r '.workflows[0].id')
WORKFLOW_NAME=$(echo "$WORKFLOW_JSON" | jq -r '.workflows[0].name')
VERSION_NUMBER=$(echo "$WORKFLOW_JSON" | jq -r '.workflows[0].version.versionNumber')
VERSION_ID=$(echo "$WORKFLOW_JSON" | jq -r '.workflows[0].version.id')

log "  Workflow: $WORKFLOW_NAME"
log "  ID: $WORKFLOW_ID"
log "  Version: $VERSION_NUMBER (id: $VERSION_ID)"

# =============================================================================
# Check if transition already exists
# =============================================================================
EXISTING_TRANSITION=$(echo "$WORKFLOW_JSON" | jq -r --arg name "$TRANSITION_NAME" \
    '.workflows[0].transitions[] | select(.name == $name) | .id')

if [[ -n "$EXISTING_TRANSITION" ]]; then
    die "Transition '$TRANSITION_NAME' already exists (ID: $EXISTING_TRANSITION)"
fi

# =============================================================================
# Check for existing global transition to same status
# =============================================================================
EXISTING_GLOBAL=$(echo "$WORKFLOW_JSON" | jq -r --arg to "$TO_STATUS_ID" \
    '.workflows[0].transitions[] | select(.type == "GLOBAL" and .toStatusReference == $to) | .id')

if [[ -n "$EXISTING_GLOBAL" ]]; then
    log "WARNING: There is already a global transition (ID: $EXISTING_GLOBAL) to status $TO_STATUS_ID"
    log "  Jira only allows ONE global transition per target status."
    log "  This script will REPLACE the existing global transition."
    REPLACE_ID="$EXISTING_GLOBAL"
else
    REPLACE_ID=""
fi

# =============================================================================
# Generate new transition ID
# =============================================================================
# Find the highest existing transition ID and add 10
MAX_ID=$(echo "$WORKFLOW_JSON" | jq '[.workflows[0].transitions[].id | tonumber] | max')
NEW_ID=$((MAX_ID + 10))

log "New transition ID: $NEW_ID"

# =============================================================================
# Build the update payload
# =============================================================================
log "Building update payload..."

# Build top-level statuses array (required by API)
STATUSES_ARRAY=$(echo "$WORKFLOW_JSON" | jq '[.statuses[] | {
    id: .id,
    name: .name,
    statusCategory: .statusCategory,
    statusReference: .statusReference
}]')

# Build workflow statuses with layouts preserved
WORKFLOW_STATUSES=$(echo "$WORKFLOW_JSON" | jq '.workflows[0].statuses | map({
    statusReference: .statusReference,
    layout: .layout,
    properties: (.properties // {})
})')

# Get startPointLayout
START_LAYOUT=$(echo "$WORKFLOW_JSON" | jq '.workflows[0].startPointLayout // {}')

# Build transitions array - either replace existing or add new
if [[ -n "$REPLACE_ID" ]]; then
    # Replace existing global transition
    TRANSITIONS=$(echo "$WORKFLOW_JSON" | jq --arg replace_id "$REPLACE_ID" \
        --arg new_name "$TRANSITION_NAME" \
        --arg to_status "$TO_STATUS_ID" \
        --arg group_id "$GROUP_ID" \
        '[.workflows[0].transitions[] |
            if .id == $replace_id then
                {
                    id: .id,
                    type: "GLOBAL",
                    name: $new_name,
                    toStatusReference: $to_status,
                    links: [],
                    properties: {},
                    conditions: {
                        operation: "ALL",
                        conditionGroups: [],
                        conditions: [{
                            ruleKey: "system:restrict-issue-transition",
                            parameters: {
                                accountIds: "",
                                roleIds: "",
                                permissionKeys: "",
                                groupIds: $group_id,
                                groupCustomFields: "",
                                allowUserCustomFields: "",
                                denyUserCustomFields: ""
                            }
                        }]
                    }
                }
            else
                {
                    id: .id,
                    type: .type,
                    name: .name,
                    toStatusReference: .toStatusReference,
                    links: .links,
                    properties: (.properties // {})
                } + (if .conditions then {conditions: .conditions} else {} end)
            end
        ]')
else
    # Add new transition
    EXISTING_TRANSITIONS=$(echo "$WORKFLOW_JSON" | jq '[.workflows[0].transitions[] | {
        id: .id,
        type: .type,
        name: .name,
        toStatusReference: .toStatusReference,
        links: .links,
        properties: (.properties // {})
    } + (if .conditions then {conditions: .conditions} else {} end)]')

    NEW_TRANSITION=$(jq -n \
        --arg id "$NEW_ID" \
        --arg name "$TRANSITION_NAME" \
        --arg to_status "$TO_STATUS_ID" \
        --arg group_id "$GROUP_ID" \
        '{
            id: $id,
            type: "GLOBAL",
            name: $name,
            toStatusReference: $to_status,
            links: [],
            properties: {},
            conditions: {
                operation: "ALL",
                conditionGroups: [],
                conditions: [{
                    ruleKey: "system:restrict-issue-transition",
                    parameters: {
                        accountIds: "",
                        roleIds: "",
                        permissionKeys: "",
                        groupIds: $group_id,
                        groupCustomFields: "",
                        allowUserCustomFields: "",
                        denyUserCustomFields: ""
                    }
                }]
            }
        }')

    TRANSITIONS=$(echo "$EXISTING_TRANSITIONS" | jq --argjson new "$NEW_TRANSITION" '. + [$new]')
fi

# Build final payload
PAYLOAD=$(jq -n \
    --argjson statuses "$STATUSES_ARRAY" \
    --arg workflow_id "$WORKFLOW_ID" \
    --argjson version_number "$VERSION_NUMBER" \
    --arg version_id "$VERSION_ID" \
    --argjson start_layout "$START_LAYOUT" \
    --argjson workflow_statuses "$WORKFLOW_STATUSES" \
    --argjson transitions "$TRANSITIONS" \
    '{
        statuses: $statuses,
        workflows: [{
            id: $workflow_id,
            version: {
                versionNumber: $version_number,
                id: $version_id
            },
            startPointLayout: $start_layout,
            statuses: $workflow_statuses,
            transitions: $transitions
        }]
    }')

# =============================================================================
# Execute or dry-run
# =============================================================================
if [[ "$DRY_RUN" == "true" ]]; then
    log "DRY RUN - would send the following payload:"
    echo "$PAYLOAD" | jq .
    echo ""
    log "To execute, run without --dry-run"
    exit 0
fi

log "Saving payload to /tmp/workflow-update-payload.json"
echo "$PAYLOAD" > /tmp/workflow-update-payload.json

log "Updating workflow..."
RESULT=$(jira post /rest/api/3/workflows/update -d @/tmp/workflow-update-payload.json 2>&1) || {
    echo "ERROR: Workflow update failed" >&2
    echo "$RESULT" >&2
    exit 1
}

# Check for errors in response
if echo "$RESULT" | jq -e '.errorMessages' >/dev/null 2>&1; then
    ERRORS=$(echo "$RESULT" | jq -r '.errorMessages[]')
    if [[ -n "$ERRORS" ]]; then
        echo "ERROR: Workflow update failed with errors:" >&2
        echo "$ERRORS" >&2
        exit 1
    fi
fi

# Extract new version
NEW_VERSION=$(echo "$RESULT" | jq -r '.workflows[0].version.versionNumber')

log "SUCCESS! Workflow updated to version $NEW_VERSION"
log ""
log "Summary:"
log "  - Added transition: $TRANSITION_NAME"
log "  - Target status: $TO_STATUS_ID"
log "  - Condition: User must be in group $GROUP_ID"
log "  - All status positions preserved"
log ""
log "Response saved to: /tmp/workflow-update-result.json"
echo "$RESULT" > /tmp/workflow-update-result.json
