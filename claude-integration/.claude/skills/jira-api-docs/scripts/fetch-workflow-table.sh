#!/usr/bin/env bash
#
# Fetch a Jira workflow for a project + issue type and print it as a table
#
# Usage: ./fetch-workflow-table.sh [PROJECT_KEY] [ISSUE_TYPE_NAME]
#
# If no arguments provided, uses the defaults below.

set -euo pipefail

# =============================================================================
# Configuration - modify these defaults as needed
# =============================================================================
DEFAULT_PROJECT_KEY="TESTPROJ"
DEFAULT_ISSUE_TYPE_NAME="Incident"

# =============================================================================
# Parse arguments
# =============================================================================
PROJECT_KEY="${1:-$DEFAULT_PROJECT_KEY}"
ISSUE_TYPE_NAME="${2:-$DEFAULT_ISSUE_TYPE_NAME}"

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

# =============================================================================
# Validate dependencies
# =============================================================================
require_cmd jira
require_cmd jq

# =============================================================================
# Get project ID
# =============================================================================
echo "Fetching project ID for: $PROJECT_KEY" >&2
PROJECT_JSON=$(jira get "/rest/api/3/project/$PROJECT_KEY" 2>/dev/null) \
    || die "Failed to fetch project: $PROJECT_KEY"

PROJECT_ID=$(echo "$PROJECT_JSON" | jq -r '.id') \
    || die "Failed to parse project ID"

echo "  Project ID: $PROJECT_ID" >&2

# =============================================================================
# Get issue type ID from project (not global list, which may have duplicates)
# =============================================================================
echo "Fetching issue type ID for: $ISSUE_TYPE_NAME" >&2
ISSUE_TYPE_ID=$(echo "$PROJECT_JSON" | jq -r --arg name "$ISSUE_TYPE_NAME" \
    '.issueTypes[] | select(.name == $name) | .id') \
    || die "Failed to parse issue type ID"

[[ -n "$ISSUE_TYPE_ID" ]] || die "Issue type '$ISSUE_TYPE_NAME' not found in project $PROJECT_KEY"

echo "  Issue Type ID: $ISSUE_TYPE_ID" >&2

# =============================================================================
# Fetch workflow
# =============================================================================
echo "Fetching workflow..." >&2
WORKFLOW_JSON=$(jira post /rest/api/3/workflows -d "{
    \"projectAndIssueTypes\": [{
        \"projectId\": \"$PROJECT_ID\",
        \"issueTypeId\": \"$ISSUE_TYPE_ID\"
    }]
}" 2>/dev/null) || die "Failed to fetch workflow"

# =============================================================================
# Extract workflow details
# =============================================================================
WORKFLOW_NAME=$(echo "$WORKFLOW_JSON" | jq -r '.workflows[0].name')
WORKFLOW_ID=$(echo "$WORKFLOW_JSON" | jq -r '.workflows[0].id')
WORKFLOW_VERSION=$(echo "$WORKFLOW_JSON" | jq -r '.workflows[0].version.versionNumber')

echo "" >&2
echo "================================================"
echo "WORKFLOW: $WORKFLOW_NAME"
echo "ID: $WORKFLOW_ID"
echo "Version: $WORKFLOW_VERSION"
echo "================================================"
echo ""

# =============================================================================
# Print statuses table
# =============================================================================
echo "STATUSES"
echo "--------"
printf "%-10s %-30s %-15s %-25s\n" "ID" "NAME" "CATEGORY" "LAYOUT (x, y)"
printf "%-10s %-30s %-15s %-25s\n" "----" "----" "--------" "------------"

# Get status details from top-level statuses array
echo "$WORKFLOW_JSON" | jq -r '
    # Build a map of status reference -> category from top-level statuses
    (.statuses | map({(.statusReference): .statusCategory}) | add) as $categories |
    # Get workflow statuses with layout
    .workflows[0].statuses[] |
    [
        .statusReference,
        ($categories[.statusReference] // "UNKNOWN"),
        (.layout.x // "N/A" | tostring),
        (.layout.y // "N/A" | tostring)
    ] | @tsv
' | while IFS=$'\t' read -r ref category x y; do
    # Get status name from top-level statuses
    name=$(echo "$WORKFLOW_JSON" | jq -r --arg ref "$ref" '.statuses[] | select(.statusReference == $ref) | .name')
    if [[ "$x" == "N/A" ]]; then
        layout="N/A"
    else
        layout="($x, $y)"
    fi
    printf "%-10s %-30s %-15s %-25s\n" "$ref" "$name" "$category" "$layout"
done

echo ""

# =============================================================================
# Print transitions table
# =============================================================================
echo "TRANSITIONS"
echo "-----------"
printf "%-6s %-10s %-30s %-20s %-30s\n" "ID" "TYPE" "NAME" "TO STATUS" "FROM STATUSES"
printf "%-6s %-10s %-30s %-20s %-30s\n" "----" "------" "----" "---------" "-------------"

echo "$WORKFLOW_JSON" | jq -r '
    # Build status name lookup
    (.statuses | map({(.statusReference): .name}) | add) as $names |
    .workflows[0].transitions[] |
    [
        .id,
        .type,
        .name,
        .toStatusReference,
        # Get unique from statuses from links
        ([.links[]?.fromStatusReference // empty] | unique | join(", "))
    ] | @tsv
' | while IFS=$'\t' read -r id type name to_ref from_refs; do
    # Get to status name
    to_name=$(echo "$WORKFLOW_JSON" | jq -r --arg ref "$to_ref" '.statuses[] | select(.statusReference == $ref) | .name')

    # Convert from refs to names
    if [[ -n "$from_refs" ]]; then
        from_names=""
        IFS=', ' read -ra refs <<< "$from_refs"
        for ref in "${refs[@]}"; do
            ref_name=$(echo "$WORKFLOW_JSON" | jq -r --arg ref "$ref" '.statuses[] | select(.statusReference == $ref) | .name')
            if [[ -n "$from_names" ]]; then
                from_names="$from_names, $ref_name"
            else
                from_names="$ref_name"
            fi
        done
    else
        from_names="(any)"
    fi

    printf "%-6s %-10s %-30s %-20s %-30s\n" "$id" "$type" "$name" "$to_name" "$from_names"
done

echo ""

# =============================================================================
# Print conditions summary
# =============================================================================
echo "TRANSITION CONDITIONS"
echo "---------------------"

has_conditions=false
echo "$WORKFLOW_JSON" | jq -r '
    .workflows[0].transitions[] |
    select(.conditions != null and .conditions.conditions != null and (.conditions.conditions | length) > 0) |
    "Transition: \(.name) (ID: \(.id))\n  Conditions: \(.conditions.conditions | map("    - \(.ruleKey): \(.parameters | to_entries | map("\(.key)=\(.value)") | join(", "))") | join("\n"))"
' | while IFS= read -r line; do
    has_conditions=true
    echo "$line"
done

if [[ "$has_conditions" == "false" ]]; then
    # Check if any conditions were printed
    condition_count=$(echo "$WORKFLOW_JSON" | jq '[.workflows[0].transitions[] | select(.conditions != null and .conditions.conditions != null and (.conditions.conditions | length) > 0)] | length')
    if [[ "$condition_count" == "0" ]]; then
        echo "(No transitions have conditions)"
    fi
fi

echo ""
echo "================================================"
echo "Raw JSON saved to: /tmp/workflow-$PROJECT_KEY-$ISSUE_TYPE_NAME.json" >&2
echo "$WORKFLOW_JSON" > "/tmp/workflow-$PROJECT_KEY-$ISSUE_TYPE_NAME.json"
