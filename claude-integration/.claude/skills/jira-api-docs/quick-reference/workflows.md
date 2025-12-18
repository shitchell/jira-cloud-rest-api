# Workflows Quick Reference

Scripts for common workflow tasks. **Read and use these scripts** — don't reinvent the wheel.

## Available Scripts

| Task | Script | Usage |
|------|--------|-------|
| View workflow for project + issue type | [`fetch-workflow-table.sh`](../scripts/fetch-workflow-table.sh) | `./scripts/fetch-workflow-table.sh PROJECT_KEY ISSUE_TYPE` |
| Add global transition with group condition | [`add-conditional-transition.sh`](../scripts/add-conditional-transition.sh) | `./scripts/add-conditional-transition.sh --help` |
| Copy workflow to another project/issue-type | [`duplicate-workflow.sh`](../scripts/duplicate-workflow.sh) | `./scripts/duplicate-workflow.sh --help` |

## Usage Examples

```bash
# View the Bug workflow for HSP project
~/.claude/skills/jira-api-docs/scripts/fetch-workflow-table.sh HSP Bug

# Preview adding a transition (dry run)
~/.claude/skills/jira-api-docs/scripts/add-conditional-transition.sh \
  --project HSP --issue-type Bug --dry-run

# See all options
~/.claude/skills/jira-api-docs/scripts/add-conditional-transition.sh --help

```

## Restoring a Workflow Assignment

After running `duplicate-workflow.sh`, the script outputs the original workflow ID. To restore:

- **Simple case**: Update the workflow scheme to reassign the issue type back to the original workflow ID
- **With existing issues**: If issues exist in statuses not present in the target workflow, you'll need to provide status mappings (`statusMappingsByIssueTypeOverride`)
- The API will tell you which statuses need mapping if required

## Lessons Learned

- Workflow updates require ALL statuses/transitions in the payload, not just the ones you're changing — omitting any will delete them
- When creating workflows with `POST /rest/api/3/workflows/create`, use the status `id` field to reference existing global statuses (not create new ones)
- Workflow scheme updates require status mappings when moving issues from statuses that don't exist in the new workflow
- When multiple issue types use the same workflow, they must be combined into a single entry in `workflowsForIssueTypes` (e.g., `{"issueTypeIds": ["10004", "10005"], "workflowId": "xxx"}`)
- Workflow scheme updates use optimistic locking — fetch the latest version immediately before making changes to minimize race conditions
- The `statusMappingsByIssueTypeOverride` field maps OLD workflow statuses TO NEW workflow statuses (not the reverse)

## No script for your task?

1. Query the `jira-docs` MCP server for endpoint details
2. Check existing scripts in `../scripts/` for patterns
3. Write a new script and add it here when done
