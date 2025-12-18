# Skill Maintenance Notes

Meta-documentation about maintaining the `jira-api-docs` skill itself.

## Optional: Pre-completion Checklist

Before marking a Jira API task complete, consider:

- [ ] Did I hit any API gotchas or unexpected behavior?
- [ ] If I debugged something, did I update Lessons Learned?
- [ ] If I wrote a new script, did I add it to quick-reference?
- [ ] Could this task be scripted for future reuse?

## Documentation Hierarchy

The skill is designed to minimize cognitive load:

1. **CLAUDE.md** — Entry point, tells Claude to invoke skill
2. **SKILL.md** — Lightweight, points to quick-reference + scripts
3. **quick-reference/*.md** — Task → script mappings, lessons learned
4. **scripts/** — Working examples (the actual documentation)
5. **api-reference-guide.md** — Only for Task agents when MCP fails
6. **api-reference/** — Raw docs, never read directly (huge files)

## Adding New Task Categories

When adding support for a new Jira domain (e.g., filters, dashboards):

1. Create `quick-reference/{domain}.md` with task → script table
2. Add working scripts to `scripts/`
3. Add a section to SKILL.md under "Common API Tasks" pointing to the quick-reference
4. Update the directory tree in SKILL.md

## Why Scripts Are Primary

Scripts serve as:
- **Tested examples** — Known to work
- **Implicit documentation** — Show correct payloads, endpoints, jq patterns
- **Reusable tools** — Claude can run them directly
- **Living lessons** — Comments capture gotchas discovered during development

The markdown files exist to point Claude at scripts, not to explain APIs.

## Future Enhancements

### Pre-generated Chunk Summaries (Implemented)

Summaries are generated via `generate_summaries.py` using Claude Haiku and stored in `summaries.json`.
These are included in search results to help agents quickly assess relevance.

**Current state:**
- 2924 summaries generated (~$0.50 cost)
- Summaries describe what each endpoint/model does
- Stored in `mcp-server/summaries.json` (committed to repo)

**Limitation:** Summaries capture what's in the docs, but NOT experiential gotchas like:
- "Workflow updates require ALL statuses/transitions or omitted ones get deleted"
- "No copy endpoint exists - must read then create"

### Enriching Summaries with Lessons Learned (Future)

To make summaries more useful for avoiding footguns:

1. **Manual enrichment** - For key endpoints with known gotchas, edit `summaries.json` directly:
   ```json
   "v3/WorkflowsApi/updateWorkflows": "Updates workflows. ⚠️ IMPORTANT: Request must include ALL existing statuses and transitions - omitting any will DELETE them. Use readWorkflows first to get current state. Requires Administer Jira permission."
   ```

2. **Script-based enrichment** - Create a mapping file of chunk_id → gotcha notes, merge during index build

3. **Auto-enrichment** - Parse lessons learned from quick-reference files, match to chunk IDs, append to summaries

**When to enrich:**
- After discovering a gotcha through debugging
- When a lesson learned is added to quick-reference
- Before committing, check: "Would this gotcha help future searches?"

**Format for gotcha prefixes:**
- `⚠️ IMPORTANT:` - Critical gotcha that causes data loss or failures
- `💡 Note:` - Helpful tip or non-obvious behavior
- `🔗 Related:` - Points to related endpoints/models
