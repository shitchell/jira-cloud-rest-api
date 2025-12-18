# API Reference Navigation Guide

You're reading this because the MCP server didn't have what you needed after 2-3 attempts. This guide helps you navigate the raw API reference markdown files.

**Warning**: These files are HUGE. Use Grep/Glob to find what you need rather than reading entire files.

## Directory Structure

```
./api-reference/
├── v2/
│   ├── Apis/           # Endpoint docs (IssuesApi.md, ProjectsApi.md, etc.)
│   ├── Models/         # Data structures (IssueBean.md, ProjectBean.md, etc.)
│   └── README.md       # v2 overview
└── v3/
    ├── Apis/           # v3 endpoint docs
    ├── Models/         # v3 data structures
    └── README.md       # v3 overview
```

## Finding Endpoints

```bash
# List available API files
ls ~/.claude/skills/jira-api-docs/api-reference/v3/Apis/

# Common endpoint files:
# - IssuesApi.md        - CRUD operations for issues
# - IssueSearchApi.md   - Search and JQL endpoints
# - ProjectsApi.md      - Project management
# - UsersApi.md         - User operations
# - WorkflowsApi.md     - Workflow operations
# - WorkflowSchemesApi.md - Workflow scheme management
```

## Finding Models

```bash
# List available model files
ls ~/.claude/skills/jira-api-docs/api-reference/v3/Models/

# Common models:
# - IssueBean.md        - Issue object structure
# - ProjectBean.md      - Project structure
# - UserBean.md         - User object
# - WorkflowRead*.md    - Workflow response structures
```

## Common API Tasks

### Creating Issues

Files: `./api-reference/v3/Apis/IssuesApi.md`, `./api-reference/v3/Models/IssueUpdateDetails.md`

Look for:
- POST `/rest/api/3/issue` endpoint
- Required fields in IssueUpdateDetails model
- Example request bodies

### Searching Issues

Files: `./api-reference/v3/Apis/IssueSearchApi.md`

Look for:
- POST `/rest/api/3/search/jql` endpoint
- JQL query parameters
- Pagination (startAt, maxResults)

### Managing Projects

Files: `./api-reference/v3/Apis/ProjectsApi.md`

Look for:
- GET/POST/PUT/DELETE project endpoints
- Project configuration
- Components and versions

### User Operations

Files: `./api-reference/v3/Apis/UsersApi.md`, `./api-reference/v3/Apis/UserSearchApi.md`

Look for:
- User search and lookup
- Account ID lookups
- User properties

### Workflows

Files: `./api-reference/v3/Apis/WorkflowsApi.md`, `./api-reference/v3/Apis/WorkflowSchemesApi.md`

**Note**: Check `./quick-reference/workflows.md` and `./scripts/` first — there are working scripts for common workflow tasks.

### Project Cloning / Management

Files: `./api-reference/v3/Apis/ProjectsApi.md`, `./api-reference/v3/Apis/ScreensApi.md`, `./api-reference/v3/Apis/ScreenSchemesApi.md`

**Note**: Check `./quick-reference/projects.md` for the full clone script that creates projects with zero shared objects (screens, schemes, etc.).

## Tips

- **Prefer v3** for new work, but some features only exist in v2
- **Grep for endpoints**: `grep -r "POST.*issue" ./api-reference/v3/Apis/`
- **Check both versions** if something seems missing
- **Models define structure**: If an endpoint mentions `IssueBean`, check `Models/IssueBean.md`

## Quick Reference Paths

```bash
# v3 (preferred)
~/.claude/skills/jira-api-docs/api-reference/v3/Apis/
~/.claude/skills/jira-api-docs/api-reference/v3/Models/

# v2 (fallback)
~/.claude/skills/jira-api-docs/api-reference/v2/Apis/
~/.claude/skills/jira-api-docs/api-reference/v2/Models/
```
