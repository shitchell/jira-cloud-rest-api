# Jira Docs MCP Server

An MCP (Model Context Protocol) server that provides semantic search over Jira Cloud REST API documentation. Enables Claude and other LLMs to quickly find relevant API endpoints, models, and usage patterns.

## Features

- **Semantic search** over 2900+ API documentation chunks
- **Two embedding backends**: sentence-transformers (free, local) or OpenAI (optional)
- **Filtering** by API version (v2, v3) and doc type (api, model)
- **Fast queries** via ChromaDB vector storage

## Quick Start

```bash
# Clone the repo (if you haven't)
git clone https://github.com/shitchell/jira-cloud-rest-api.git
cd jira-cloud-rest-api/mcp-server

# Run setup (installs deps + builds index)
./setup.sh

# Add to Claude Code
claude mcp add jira-docs .venv/bin/python "$(pwd)/server.py"
```

## Setup Options

```bash
# Default: use sentence-transformers (free, local, ~90MB model)
./setup.sh

# Use OpenAI embeddings (better quality, requires API key)
OPENAI_API_KEY=sk-... ./setup.sh --openai

# Force rebuild index
./setup.sh --force

# Only install deps (skip index building)
./setup.sh --skip-index
```

## Manual Configuration

If you prefer to configure manually, add to `~/.claude/settings.json`:

```json
{
  "mcpServers": {
    "jira-docs": {
      "command": "/path/to/mcp-server/.venv/bin/python",
      "args": ["/path/to/mcp-server/server.py"]
    }
  }
}
```

## Available Tools

### `search`

Search Jira API documentation semantically.

**Parameters:**
- `query` (required): Natural language search query
- `top_k` (optional): Number of results (default: 5, max: 20)
- `api_version` (optional): Filter by "v2" or "v3"
- `doc_type` (optional): Filter by "api" (endpoints) or "model" (data structures)

**Example queries:**
- "create an issue with custom fields"
- "filter board by sprint"
- "IssueBean fields and properties"
- "transition issue workflow"

## How It Works

1. **Chunking**: API docs are split by endpoint (each method becomes a chunk). Model docs are kept whole.
2. **Embedding**: Text is converted to 384-dimensional vectors using sentence-transformers or OpenAI.
3. **Storage**: Vectors are stored in ChromaDB for fast similarity search.
4. **Search**: Queries are embedded and compared against stored vectors using cosine similarity.

## Files

```
mcp-server/
├── setup.sh           # One-command installation
├── requirements.txt   # Python dependencies
├── chunk_docs.py      # Document chunking logic
├── build_index.py     # Embedding generation
├── server.py          # MCP server implementation
├── .gitignore         # Ignores .venv, chroma_db, etc.
└── README.md          # This file
```

## Requirements

- Python 3.9+
- ~8GB disk space (PyTorch + model + index)
- ~1GB RAM during index building

## Troubleshooting

**SQLite version error**: The setup automatically installs `pysqlite3-binary` to work around older system SQLite versions.

**Slow first query**: The embedding model loads on first query (~10-15 seconds). Subsequent queries are fast.

**Index out of date**: Run `./setup.sh --force` to rebuild after doc changes.
