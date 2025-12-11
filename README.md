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
└── mcp-server/            # MCP server for semantic search
    └── README.md          # Setup & usage instructions
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

## MCP Server

The `mcp-server/` directory contains an MCP (Model Context Protocol) server that enables semantic search over this documentation. See [`mcp-server/README.md`](mcp-server/README.md) for setup and usage.

**Quick start:**
```bash
cd mcp-server && ./setup.sh
claude mcp add jira-docs .venv/bin/python "$(pwd)/server.py"
```

## Source

Documentation generated from Atlassian's official OpenAPI specifications:
- https://developer.atlassian.com/cloud/jira/platform/rest/v3/
- https://developer.atlassian.com/cloud/jira/platform/rest/v2/
