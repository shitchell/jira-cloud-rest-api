#!/usr/bin/env bash
# duplicate-filter.sh - Duplicate a Jira saved filter by name
#
# Usage:
#   duplicate-filter.sh <source-filter-name> [options]
#
# Options:
#   -n, --name <name>        Name for the new filter (default: "<source> (Copy)")
#   -j, --jql <jql>          Override JQL query (default: copy from source)
#   -d, --description <desc> Description for the new filter
#   -q, --quiet              Only output the new filter ID
#   -h, --help               Show this help message
#
# Examples:
#   duplicate-filter.sh "My Filter"
#   duplicate-filter.sh "My Filter" -n "My New Filter"
#   duplicate-filter.sh "My Filter" -j 'project = DEVOPS AND status = Open'
#   duplicate-filter.sh "My Filter" -n "Open Issues" -j 'status = Open' -d "All open issues"

set -euo pipefail

usage() {
    sed -n '3,16p' "$0" | sed 's/^# \?//'
    exit "${1:-0}"
}

die() {
    echo "Error: $*" >&2
    exit 1
}

# Parse arguments
SOURCE_NAME=""
NEW_NAME=""
NEW_JQL=""
NEW_DESC=""
QUIET=false

while [[ $# -gt 0 ]]; do
    case "$1" in
        -n|--name)
            NEW_NAME="$2"
            shift 2
            ;;
        -j|--jql)
            NEW_JQL="$2"
            shift 2
            ;;
        -d|--description)
            NEW_DESC="$2"
            shift 2
            ;;
        -q|--quiet)
            QUIET=true
            shift
            ;;
        -h|--help)
            usage 0
            ;;
        -*)
            die "Unknown option: $1"
            ;;
        *)
            if [[ -z "$SOURCE_NAME" ]]; then
                SOURCE_NAME="$1"
            else
                die "Unexpected argument: $1"
            fi
            shift
            ;;
    esac
done

[[ -n "$SOURCE_NAME" ]] || { usage 1; }

# URL-encode a string
urlencode() {
    python3 -c "import urllib.parse; print(urllib.parse.quote('''$1''', safe=''))"
}

# Search for filter by name
encoded_name=$(urlencode "$SOURCE_NAME")
search_result=$(jira get "/filter/search?filterName=${encoded_name}&maxResults=100" 2>/dev/null) || \
    die "Failed to search for filters"

# Find exact match (API does partial matching)
filter_id=$(echo "$search_result" | jq -r --arg name "$SOURCE_NAME" \
    '.values[] | select(.name == $name) | .id' | head -1)

[[ -n "$filter_id" ]] || die "Filter not found: $SOURCE_NAME"

# Get full filter details
source_filter=$(jira get "/filter/${filter_id}" 2>/dev/null) || \
    die "Failed to get filter details for ID: $filter_id"

# Extract source values
source_jql=$(echo "$source_filter" | jq -r '.jql')
source_desc=$(echo "$source_filter" | jq -r '.description // empty')

# Set defaults
[[ -n "$NEW_NAME" ]] || NEW_NAME="${SOURCE_NAME} (Copy)"
[[ -n "$NEW_JQL" ]] || NEW_JQL="$source_jql"
[[ -n "$NEW_DESC" ]] || NEW_DESC="$source_desc"

# Build the request body
request_body=$(jq -n \
    --arg name "$NEW_NAME" \
    --arg jql "$NEW_JQL" \
    --arg desc "$NEW_DESC" \
    '{name: $name, jql: $jql} + (if $desc != "" then {description: $desc} else {} end)')

# Create the new filter
new_filter=$(jira post -d "$request_body" /filter 2>/dev/null) || \
    die "Failed to create filter"

new_id=$(echo "$new_filter" | jq -r '.id')
new_url=$(echo "$new_filter" | jq -r '.viewUrl')

if $QUIET; then
    echo "$new_id"
else
    echo "Created filter: $NEW_NAME"
    echo "  ID:  $new_id"
    echo "  URL: $new_url"
    echo "  JQL: $NEW_JQL"
fi
