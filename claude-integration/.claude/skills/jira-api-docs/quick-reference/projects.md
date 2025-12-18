# Projects Quick Reference

Scripts for project management tasks. **Read and use these scripts** — don't reinvent the wheel.

## Available Scripts

| Task | Script | Usage |
|------|--------|-------|
| Clone project (full isolation) | [`clone-jira-project.sh`](../scripts/clone-jira-project.sh) | `./scripts/clone-jira-project.sh --help` |
| Delete project | [`delete-jira-project.sh`](../scripts/delete-jira-project.sh) | `./scripts/delete-jira-project.sh PROJECT_KEY [--permanent]` |

## Clone Project Script

Creates a comprehensive clone with **zero shared objects** between source and target. Editing anything in the cloned project will NOT affect the source.

### What Gets Copied

- All workflows (duplicated, not shared)
- Workflow scheme
- Issue type scheme
- All screens (with tabs and fields)
- All screen schemes
- Issue type screen scheme
- All field configurations (with field settings)
- Field configuration scheme
- Permission scheme
- Notification scheme
- Issue security scheme
- Components, versions, project roles (optional)

### Usage Examples

```bash
# Full clone with all configuration
~/.claude/skills/jira-api-docs/scripts/clone-jira-project.sh \
  --source-project TESTPROJ \
  --new-key AISD \
  --new-name "AI Service Desk"

# Clone without optional items
~/.claude/skills/jira-api-docs/scripts/clone-jira-project.sh \
  --source-project TESTPROJ \
  --new-key AISD \
  --new-name "AI Service Desk" \
  --skip-components --skip-versions --skip-roles

# Preview what will be done
~/.claude/skills/jira-api-docs/scripts/clone-jira-project.sh \
  --source-project TESTPROJ \
  --new-key AISD \
  --new-name "AI Service Desk" \
  --dry-run
```

## Delete Project Script

Deletes a project with optional permanent deletion (bypasses trash for key reuse).

### Usage Examples

```bash
# Move to trash (can be restored)
~/.claude/skills/jira-api-docs/scripts/delete-jira-project.sh AISD

# Permanently delete (key may be reusable)
~/.claude/skills/jira-api-docs/scripts/delete-jira-project.sh AISD --permanent

# Preview deletion
~/.claude/skills/jira-api-docs/scripts/delete-jira-project.sh AISD --dry-run
```

### Gotchas for Key Reuse

1. **MOVED ISSUES LOCK THE KEY FOREVER** — If any issues were moved OUT of the project, the key is permanently reserved
2. **WORKFLOWS MAY BE RETAINED** — Old workflows may be reused when creating a new project with the same key
3. **TEAM-MANAGED PROJECT TIMELINE BUG** — Reusing a key for team-managed projects can break the timeline view (JRACLOUD-91439)

## Lessons Learned

- **Full isolation requires copying screens** — Screen schemes reference global screens by default; you must copy screens and create new screen schemes to achieve isolation
- **Issue Type Screen Scheme can have stale mappings** — When re-running the clone script, existing ITSS may still point to old screen schemes; the script now detects and recreates these
- **Field configuration scheme mappings** — Use `PUT /rest/api/3/fieldconfigurationscheme/{id}/mapping` to set mappings after creating the scheme
- **Screen scheme requires a default screen** — The API will reject screen scheme creation if the `default` screen is not specified
- **Permission bulk creation often fails** — The script adds permissions individually because Jira rejects bulk creation if ANY permission is invalid (e.g., Discovery permissions when Discovery isn't installed)
- **`((count++))` with `set -e`** — Arithmetic operations return exit code 1 when the result is 0; use `((count++)) || true` to prevent script termination

## Related APIs

- `POST /rest/api/3/project` — Create project
- `DELETE /rest/api/3/project/{projectKey}` — Delete project (use `?enableUndo=false` for permanent)
- `POST /rest/api/3/screens` — Create screen
- `POST /rest/api/3/screenscheme` — Create screen scheme
- `POST /rest/api/3/issuetypescreenscheme` — Create issue type screen scheme
- `POST /rest/api/3/fieldconfiguration` — Create field configuration
- `PUT /rest/api/3/fieldconfiguration/{id}/fields` — Update field configuration items
- `POST /rest/api/3/fieldconfigurationscheme` — Create field configuration scheme

## No script for your task?

1. Query the `jira-docs` MCP server for endpoint details
2. Check existing scripts in `../scripts/` for patterns
3. Write a new script and add it here when done
