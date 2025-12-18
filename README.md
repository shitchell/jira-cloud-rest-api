# Jira Cloud REST API Documentation

Markdown documentation for the Jira Cloud REST API v2 and v3, generated from Atlassian's OpenAPI specs. Includes an MCP server for semantic search.

## Repository Structure

```
jira-cloud-rest-api/
├── v2/                    # API version 2 documentation
│   ├── Apis/              # 96 endpoint files (one per API group)
│   ├── Models/            # 841 data model definitions
│   ├── openapi.json       # Source OpenAPI specification
│   └── README.md          # Auto-generated index
├── v3/                    # API version 3 documentation
│   ├── Apis/              # 97 endpoint files
│   ├── Models/            # 898 data model definitions
│   ├── openapi.json       # Source OpenAPI specification
│   └── README.md          # Auto-generated index
├── mcp-server/            # MCP server for semantic search
│   ├── setup.sh           # One-command installation
│   ├── server.py          # MCP server implementation
│   └── README.md          # Setup & usage instructions
└── claude-integration/    # Claude Code integration
    ├── CLAUDE.md          # Instructions snippet for ~/.claude/CLAUDE.md
    └── .claude/skills/jira-api-docs/
        ├── SKILL.md       # Skill definition
        ├── quick-reference/  # Task → script mappings
        └── scripts/       # Pre-tested automation scripts
```

## API Documentation

### Endpoints (`Apis/`)

Each file covers one API group (e.g., `IssuesApi.md`, `WorkflowsApi.md`) and contains:

- Method signatures with HTTP verb and path
- Parameter tables (name, type, description, required/optional)
- Return types (linking to Models)
- Authorization requirements
- Request/response content types

**Example:** `v3/Apis/FiltersApi.md` documents endpoints like:
- `GET /rest/api/3/filter` - Get filters
- `POST /rest/api/3/filter` - Create filter
- `GET /rest/api/3/filter/{id}` - Get filter by ID
- `PUT /rest/api/3/filter/{id}` - Update filter

### Data Models (`Models/`)

Each file defines one data structure used in API requests/responses:

- Property tables (name, type, description)
- Links to related models
- Enum values where applicable

**Example:** `v3/Models/Filter.md` defines the Filter object with properties like `id`, `name`, `jql`, `owner`, etc.

### v2 vs v3

- **v3** is the current version - use this unless you have a specific reason for v2
- **v2** is maintained for backwards compatibility
- Most endpoints exist in both versions with identical functionality
- Some newer features are v3-only

## Claude Integration

The `claude-integration/` directory contains everything needed to integrate this documentation with Claude Code:
- **MCP server** for semantic search over API docs
- **Skill** with quick-reference guides and tested scripts
- **CLAUDE.md snippet** with instructions for working with Jira APIs

### Full Setup

```bash
# 1. Clone the repo
git clone https://github.com/shitchell/jira-cloud-rest-api.git
cd jira-cloud-rest-api

# 2. Set up the MCP server
cd mcp-server && ./setup.sh
claude mcp add jira-docs .venv/bin/python "$(pwd)/server.py"
cd ..

# 3. Install the skill (copy to ~/.claude/skills/)
cp -r ./claude-integration/.claude/skills/jira-api-docs/ ~/.claude/skills/

# 4. Fix the api-reference symlink to point to this repo
rm ~/.claude/skills/jira-api-docs/api-reference
ln -s "$(pwd)" ~/.claude/skills/jira-api-docs/api-reference

# 5. Add the CLAUDE.md snippet to your global instructions
cat ./claude-integration/CLAUDE.md >> ~/.claude/CLAUDE.md
```

### What Each Step Does

**Step 2: MCP Server** - Provides semantic search over 2900+ API documentation chunks. Claude can query endpoints, models, and usage patterns via the `jira-docs` MCP server.

**Step 3: Skill Installation** - Copies the `jira-api-docs` skill which includes:
- Quick-reference guides mapping tasks to working scripts
- Pre-tested scripts for common operations (workflows, projects, filters)
- API reference navigation for complex tasks

**Step 4: Symlink Fix** - The skill references `api-reference/` which needs to point to the actual repo location on your machine.

**Step 5: CLAUDE.md Snippet** - Adds instructions telling Claude when/how to use the skill and MCP server for Jira tasks.

### Setup Options

```bash
# MCP: Use OpenAI embeddings (better quality, requires API key)
OPENAI_API_KEY=sk-... ./mcp-server/setup.sh --openai

# MCP: Force rebuild index after doc changes
./mcp-server/setup.sh --force
```

See [`mcp-server/README.md`](mcp-server/README.md) for detailed MCP server configuration.

## Source

Documentation generated from Atlassian's official OpenAPI specifications:
- https://developer.atlassian.com/cloud/jira/platform/rest/v3/
- https://developer.atlassian.com/cloud/jira/platform/rest/v2/
