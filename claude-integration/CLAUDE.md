## Jira

### Multi-step Jira Tasks

⚠️ **STOP: Before making ANY Jira API calls**, check if your task involves:
- Workflows, transitions, or statuses
- More than a simple GET on one resource
- Anything you're not 100% sure about

If yes -> invoke the `jira-api-docs` skill FIRST.

#### Simple tasks
1-2 endpoints, well-known, e.g.:
- Get single issue: `jira get /issue/KEY`
- Add comment: `jira post -d '...' /issue/KEY/comment`

#### Everything else:
1. Invoke `jira-api-docs` skill
2. Read the quick-reference file for your task
3. READ and RUN the referenced scripts
4. If no script exists, THEN query the MCP server:
   1. Query `jira-docs` MCP server for endpoint details
   2. Read existing scripts in `~/.claude/skills/jira-api-docs/scripts/` for patterns
   3. Write a new script, iterating until it completes the task end-to-end
   4. Test ONLY on `TESTPROJ` (Service Desk) or `HSP` (Software) projects
   5. Add the script to quick-reference; note any non-obvious gotchas as code comments or a one-line bullet in the quick-reference

#### After creating a new Jira script:
Save it to `~/.claude/skills/jira-api-docs/scripts/` and add an entry to the relevant quick-reference file.

#### After debugging/fixing a Jira script:
Update the script + add a one-liner to quick-reference's Lessons Learned.
