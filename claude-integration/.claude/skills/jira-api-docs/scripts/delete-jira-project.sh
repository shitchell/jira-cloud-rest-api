#!/usr/bin/env bash
#
# Delete a Jira project
#
# This script deletes a Jira project, with an optional flag to permanently
# delete it from the trash (allowing the project key to be reused).
#
# IMPORTANT GOTCHAS when reusing project keys:
#
# 1. MOVED ISSUES LOCK THE KEY FOREVER
#    If any issues were ever moved OUT of the project to another project,
#    the key is permanently reserved. Jira maintains the mapping so that
#    ABC-123 can still be found after being moved to DEF-876. You can only
#    reuse a key if no issues were ever moved out.
#
# 2. WORKFLOWS MAY BE RETAINED
#    When you delete a project, its workflows may be retained in Jira.
#    If you create a new project with the same key, Jira might reuse the
#    old workflow instead of creating a new one. This could be helpful or
#    problematic depending on your needs.
#
# 3. TEAM-MANAGED PROJECT TIMELINE BUG
#    For team-managed software projects, deleting the original project key
#    and reusing it can break the project timeline view. This is a known
#    Atlassian bug (JRACLOUD-91439).
#
# Usage:
#   delete-jira-project.sh PROJECT_KEY [--permanent]
#
# Options:
#   --permanent, -p    Permanently delete from trash (allows key reuse)
#   --dry-run, -n      Show what would be done without executing
#   -h, --help         Show this help
#
# Examples:
#   delete-jira-project.sh AISD           # Move to trash
#   delete-jira-project.sh AISD --permanent  # Move to trash and permanently delete
#

set -euo pipefail

# =============================================================================
# Configuration
# =============================================================================
SCRIPT_NAME=$(basename "$0")
PROJECT_KEY=""
PERMANENT=false
DRY_RUN=false

# =============================================================================
# Helper functions
# =============================================================================
log() {
    echo "[$(date '+%H:%M:%S')] $*"
}

die() {
    echo "ERROR: $*" >&2
    exit 1
}

usage() {
    head -44 "$0" | tail -40 | sed 's/^# \?//'
    exit 0
}

jira_api() {
    local method="$1"
    local endpoint="$2"
    shift 2
    local data="${1:-}"
    local result

    if [[ "$DRY_RUN" == "true" ]]; then
        echo "[DRY RUN] jira $method $endpoint"
        [[ -n "$data" ]] && echo "  Data: $data"
        return 0
    fi

    if [[ -n "$data" ]]; then
        result=$(jira "$method" "$endpoint" -d "$data" 2>&1)
    else
        result=$(jira "$method" "$endpoint" 2>&1)
    fi

    # Check if response contains error indicators
    if echo "$result" | jq -e '.errorMessages[0] // .errors | length > 0' >/dev/null 2>&1; then
        echo "$result"
        return 1
    fi

    echo "$result"
}

# =============================================================================
# Argument parsing
# =============================================================================
while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            usage
            ;;
        -p|--permanent)
            PERMANENT=true
            shift
            ;;
        -n|--dry-run)
            DRY_RUN=true
            shift
            ;;
        -*)
            die "Unknown option: $1"
            ;;
        *)
            if [[ -z "$PROJECT_KEY" ]]; then
                PROJECT_KEY="$1"
            else
                die "Unexpected argument: $1"
            fi
            shift
            ;;
    esac
done

# Validate required arguments
[[ -z "$PROJECT_KEY" ]] && die "PROJECT_KEY is required. Use --help for usage."

# =============================================================================
# Main logic
# =============================================================================

# Step 1: Verify project exists
log "Checking if project $PROJECT_KEY exists..."
PROJECT_INFO=$(jira_api get "/rest/api/3/project/$PROJECT_KEY" 2>/dev/null) || {
    # Check if it's in the trash
    log "Project not found in active projects, checking trash..."
    TRASH_PROJECTS=$(jira_api get "/rest/api/3/project/search?status=deleted" 2>/dev/null) || die "Failed to query trash"

    IN_TRASH=$(echo "$TRASH_PROJECTS" | jq -r --arg key "$PROJECT_KEY" '.values[]? | select(.key == $key) | .key' 2>/dev/null)

    if [[ -n "$IN_TRASH" ]]; then
        log "Project $PROJECT_KEY is already in trash"
        if [[ "$PERMANENT" == "true" ]]; then
            log "Permanently deleting $PROJECT_KEY from trash..."
            jira_api delete "/rest/api/3/project/$PROJECT_KEY?enableUndo=false" || die "Failed to permanently delete project"
            log "Project $PROJECT_KEY permanently deleted. Key may now be available for reuse."
            log ""
            log "NOTE: Key reuse is only possible if no issues were ever moved out of this project."
        else
            log "Use --permanent to permanently delete from trash"
        fi
        exit 0
    else
        die "Project $PROJECT_KEY not found (not active and not in trash)"
    fi
}

PROJECT_NAME=$(echo "$PROJECT_INFO" | jq -r '.name')
PROJECT_ID=$(echo "$PROJECT_INFO" | jq -r '.id')

log "Found project: $PROJECT_NAME (ID: $PROJECT_ID)"

# Step 2: Delete project
if [[ "$PERMANENT" == "true" ]]; then
    log "Permanently deleting project $PROJECT_KEY (skipping trash)..."
    if [[ "$DRY_RUN" == "true" ]]; then
        log "[DRY RUN] Would permanently delete project $PROJECT_KEY"
    else
        # enableUndo=false skips the trash and permanently deletes
        DELETE_RESULT=$(jira_api delete "/rest/api/3/project/$PROJECT_KEY?enableUndo=false" 2>&1) || {
            if [[ -z "$DELETE_RESULT" ]]; then
                log "Project permanently deleted"
            else
                die "Failed to permanently delete project: $DELETE_RESULT"
            fi
        }
        log "Project $PROJECT_KEY permanently deleted"
    fi
else
    log "Moving project $PROJECT_KEY to trash..."
    if [[ "$DRY_RUN" == "true" ]]; then
        log "[DRY RUN] Would move project $PROJECT_KEY to trash"
    else
        # enableUndo=true (default) moves to trash
        DELETE_RESULT=$(jira_api delete "/rest/api/3/project/$PROJECT_KEY" 2>&1) || {
            if [[ -z "$DELETE_RESULT" ]]; then
                log "Project moved to trash"
            else
                die "Failed to delete project: $DELETE_RESULT"
            fi
        }
        log "Project $PROJECT_KEY moved to trash"
    fi
fi

if [[ "$PERMANENT" == "true" ]]; then

    log ""
    log "============================================"
    log "Project $PROJECT_KEY has been permanently deleted."
    log "============================================"
    log ""
    log "The project key MAY be available for reuse, UNLESS:"
    log "  - Issues were moved out of this project (key locked forever)"
    log ""
    log "If you create a new project with this key, be aware:"
    log "  - Old workflows may be reused instead of creating new ones"
    log "  - Team-managed projects may have timeline view issues"
else
    log ""
    log "============================================"
    log "Project $PROJECT_KEY has been moved to trash."
    log "============================================"
    log ""
    log "To permanently delete and potentially reuse the key:"
    log "  $SCRIPT_NAME $PROJECT_KEY --permanent"
    log ""
    log "Or restore from Jira UI: Settings > Projects > Trash"
fi
