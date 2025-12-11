#!/usr/bin/env python3
"""
MCP server for Jira API documentation search.

Provides semantic search over Jira Cloud REST API v2 and v3 documentation.
"""

# Swap in pysqlite3 for older systems (ChromaDB needs sqlite >= 3.35.0)
__import__("pysqlite3")
import sys
sys.modules["sqlite3"] = sys.modules.pop("pysqlite3")

import json
import os
import re
from pathlib import Path

import chromadb
from chromadb.config import Settings
from mcp.server import Server
from mcp.server.stdio import stdio_server
from mcp.types import Tool, TextContent

# Paths
MCP_SERVER_DIR = Path(__file__).parent
DOCS_ROOT = MCP_SERVER_DIR.parent  # Parent contains v2/, v3/ directories
CHROMA_DB_DIR = MCP_SERVER_DIR / "chroma_db"
INDEX_META_FILE = MCP_SERVER_DIR / "index_meta.json"
COLLECTION_NAME = "jira_docs"

# Initialize server
server = Server("jira-docs")

# Global collection reference
_collection = None


def get_embedding_function(backend: str):
    """Get the embedding function based on backend type."""
    if backend == "openai":
        from chromadb.utils.embedding_functions import OpenAIEmbeddingFunction

        api_key = os.environ.get("OPENAI_API_KEY")
        if not api_key:
            raise RuntimeError("OPENAI_API_KEY environment variable not set")

        return OpenAIEmbeddingFunction(
            api_key=api_key,
            model_name="text-embedding-3-small"
        )
    else:
        from chromadb.utils.embedding_functions import SentenceTransformerEmbeddingFunction

        return SentenceTransformerEmbeddingFunction(
            model_name="all-MiniLM-L6-v2"
        )


def get_collection():
    """Get or initialize the ChromaDB collection."""
    global _collection

    if _collection is not None:
        return _collection

    if not CHROMA_DB_DIR.exists():
        raise RuntimeError(
            f"Index not found at {CHROMA_DB_DIR}. "
            "Run 'python build_index.py' first."
        )

    # Load index metadata to get backend type
    if INDEX_META_FILE.exists():
        meta = json.loads(INDEX_META_FILE.read_text())
        backend = meta.get("backend", "sentence-transformers")
    else:
        backend = "sentence-transformers"

    embed_fn = get_embedding_function(backend)

    client = chromadb.PersistentClient(
        path=str(CHROMA_DB_DIR),
        settings=Settings(anonymized_telemetry=False)
    )

    _collection = client.get_collection(
        name=COLLECTION_NAME,
        embedding_function=embed_fn
    )

    return _collection


def extract_sections(content: str) -> list[str]:
    """Extract section headers (###, ####, or #####) from content."""
    # Match headers like "### Parameters" or "#### Conditions ####" or "##### Always false #####"
    headers = re.findall(r'^#{3,5}\s+(.+?)(?:\s*#{3,5})?\s*$', content, re.MULTILINE)
    # Deduplicate while preserving order
    seen = set()
    unique = []
    for h in headers:
        h_clean = h.strip()
        if h_clean and h_clean not in seen:
            seen.add(h_clean)
            unique.append(h_clean)
    return unique[:10]  # Limit to 10 headers


def make_snippet(content: str, max_len: int = 200) -> str:
    """Create a snippet from the first meaningful lines of content."""
    lines = content.split('\n')
    text_lines = []
    for line in lines:
        stripped = line.strip()
        # Skip empty lines and headers
        if not stripped or stripped.startswith('#'):
            continue
        # Skip table rows and separators
        if stripped.startswith('|'):
            continue
        # Skip markdown links back to index
        if stripped.startswith('[[Back to'):
            continue
        text_lines.append(stripped)
        if len(' '.join(text_lines)) >= max_len:
            break

    snippet = ' '.join(text_lines)
    if len(snippet) > max_len:
        snippet = snippet[:max_len].rsplit(' ', 1)[0] + '...'
    return snippet if snippet else "(table/structured content)"


@server.list_tools()
async def list_tools():
    """List available tools."""
    return [
        Tool(
            name="search",
            description=(
                "Search Jira Cloud REST API documentation semantically. "
                "Returns lightweight results (ID, score, sections, snippet) by default. "
                "Use get_chunk to fetch full content for specific results."
            ),
            inputSchema={
                "type": "object",
                "properties": {
                    "query": {
                        "type": "string",
                        "description": "Natural language search query (e.g., 'create an issue', 'filter board by sprint', 'IssueBean fields')"
                    },
                    "top_k": {
                        "type": "integer",
                        "description": "Number of results to return (default: 5, max: 20)",
                        "default": 5,
                        "minimum": 1,
                        "maximum": 20
                    },
                    "api_version": {
                        "type": "string",
                        "description": "Filter by API version: 'v2', 'v3', or null for both",
                        "enum": ["v2", "v3"]
                    },
                    "doc_type": {
                        "type": "string",
                        "description": "Filter by doc type: 'api' for endpoints, 'model' for data structures",
                        "enum": ["api", "model"]
                    },
                    "include_content": {
                        "type": "boolean",
                        "description": "Include full content in results (default: false, use get_chunk instead)",
                        "default": False
                    }
                },
                "required": ["query"]
            }
        ),
        Tool(
            name="list_endpoints",
            description=(
                "List API endpoint files matching a regex pattern. "
                "Use this to find available API files (e.g., 'Filter', 'Issue', 'Workflow')."
            ),
            inputSchema={
                "type": "object",
                "properties": {
                    "pattern": {
                        "type": "string",
                        "description": "Regex pattern to match endpoint names (case-insensitive). E.g., 'filter', 'issue.*search', '^Work'"
                    },
                    "api_version": {
                        "type": "string",
                        "description": "Filter by API version: 'v2', 'v3', or null for both",
                        "enum": ["v2", "v3"]
                    }
                },
                "required": ["pattern"]
            }
        ),
        Tool(
            name="list_models",
            description=(
                "List data model files matching a regex pattern. "
                "Use this to find available model files (e.g., 'Filter', 'Issue', 'User')."
            ),
            inputSchema={
                "type": "object",
                "properties": {
                    "pattern": {
                        "type": "string",
                        "description": "Regex pattern to match model names (case-insensitive). E.g., 'filter', 'issue.*bean', '^User'"
                    },
                    "api_version": {
                        "type": "string",
                        "description": "Filter by API version: 'v2', 'v3', or null for both",
                        "enum": ["v2", "v3"]
                    }
                },
                "required": ["pattern"]
            }
        ),
        Tool(
            name="get_model",
            description=(
                "Get the full content of a specific data model by name. "
                "Model files are small and contain property definitions. "
                "Use list_models first to find available model names."
            ),
            inputSchema={
                "type": "object",
                "properties": {
                    "name": {
                        "type": "string",
                        "description": "Model name (e.g., 'Filter', 'IssueBean', 'User'). Do not include .md extension."
                    },
                    "api_version": {
                        "type": "string",
                        "description": "API version: 'v3' (default) or 'v2'",
                        "enum": ["v2", "v3"],
                        "default": "v3"
                    }
                },
                "required": ["name"]
            }
        ),
        Tool(
            name="get_chunk",
            description=(
                "Get the full content of a specific chunk by ID. "
                "Use this after searching to fetch complete documentation for relevant results. "
                "Chunk IDs are returned by the search tool."
            ),
            inputSchema={
                "type": "object",
                "properties": {
                    "chunk_id": {
                        "type": "string",
                        "description": "The chunk ID from search results (e.g., 'v3/WorkflowsApi/createWorkflow', 'v3/Models/Filter')"
                    }
                },
                "required": ["chunk_id"]
            }
        )
    ]


@server.call_tool()
async def call_tool(name: str, arguments: dict):
    """Handle tool calls."""
    if name == "search":
        return await handle_search(arguments)
    elif name == "list_endpoints":
        return await handle_list_endpoints(arguments)
    elif name == "list_models":
        return await handle_list_models(arguments)
    elif name == "get_model":
        return await handle_get_model(arguments)
    elif name == "get_chunk":
        return await handle_get_chunk(arguments)
    else:
        raise ValueError(f"Unknown tool: {name}")


async def handle_search(arguments: dict):
    """Handle semantic search."""
    query = arguments.get("query", "")
    top_k = min(arguments.get("top_k", 5), 20)
    api_version = arguments.get("api_version")
    doc_type = arguments.get("doc_type")
    include_content = arguments.get("include_content", False)

    if not query:
        return [TextContent(type="text", text="Error: query is required")]

    try:
        collection = get_collection()
    except RuntimeError as e:
        return [TextContent(type="text", text=f"Error: {e}")]

    # Build where filter
    # ChromaDB requires $and operator for multiple conditions
    conditions = []
    if api_version:
        conditions.append({"api_version": api_version})
    if doc_type:
        conditions.append({"doc_type": doc_type})

    if len(conditions) == 0:
        where = None
    elif len(conditions) == 1:
        where = conditions[0]
    else:
        where = {"$and": conditions}

    # Query the collection
    results = collection.query(
        query_texts=[query],
        n_results=top_k,
        where=where,
        include=["documents", "metadatas", "distances"]
    )

    # Format results
    output_parts = []
    output_parts.append(f"## Search Results for: \"{query}\"\n")

    if not results["ids"][0]:
        output_parts.append("No results found.")
    elif include_content:
        # Full content mode (legacy behavior)
        for i, (doc_id, doc, meta, distance) in enumerate(zip(
            results["ids"][0],
            results["documents"][0],
            results["metadatas"][0],
            results["distances"][0]
        )):
            similarity = 1 - distance

            output_parts.append(f"### Result {i + 1} (similarity: {similarity:.3f})")
            output_parts.append(f"**ID:** `{doc_id}`")
            output_parts.append(f"**Path:** `{meta.get('file_path', 'unknown')}`")

            if meta.get("doc_type") == "api":
                output_parts.append(f"**API:** {meta.get('api_name')} / {meta.get('endpoint')}")
            else:
                output_parts.append(f"**Model:** {meta.get('model_name')}")

            output_parts.append(f"**Version:** {meta.get('api_version')}")
            output_parts.append("")

            content = doc
            if len(content) > 2000:
                content = content[:2000] + "\n\n... [truncated, use get_chunk for full content]"

            output_parts.append(content)
            output_parts.append("\n---\n")
    else:
        # Lightweight mode (default) - table format
        output_parts.append("| # | Score | ID | Sections | Summary |")
        output_parts.append("|---|-------|-----|----------|---------|")

        for i, (doc_id, doc, meta, distance) in enumerate(zip(
            results["ids"][0],
            results["documents"][0],
            results["metadatas"][0],
            results["distances"][0]
        )):
            similarity = 1 - distance
            sections = extract_sections(doc)
            sections_str = ", ".join(sections[:5]) if sections else "-"
            if len(sections) > 5:
                sections_str += f" (+{len(sections)-5} more)"

            # Use summary if available, otherwise fall back to auto-generated snippet
            summary = meta.get("summary")
            if summary:
                preview = summary
            else:
                preview = make_snippet(doc)

            # Escape pipes for table and truncate if needed
            preview = preview.replace("|", "\\|")
            if len(preview) > 200:
                preview = preview[:200] + "..."

            output_parts.append(
                f"| {i+1} | {similarity:.2f} | `{doc_id}` | {sections_str} | {preview} |"
            )

        output_parts.append("")
        output_parts.append("Use `get_chunk(chunk_id)` to fetch full content for any result.")

    return [TextContent(type="text", text="\n".join(output_parts))]


async def handle_list_endpoints(arguments: dict):
    """List API endpoint files matching a regex pattern."""
    pattern = arguments.get("pattern", "")
    api_version = arguments.get("api_version")

    if not pattern:
        return [TextContent(type="text", text="Error: pattern is required")]

    try:
        regex = re.compile(pattern, re.IGNORECASE)
    except re.error as e:
        return [TextContent(type="text", text=f"Error: Invalid regex pattern: {e}")]

    versions = [api_version] if api_version else ["v2", "v3"]
    matches = []

    for version in versions:
        apis_dir = DOCS_ROOT / version / "Apis"
        if apis_dir.exists():
            for api_file in sorted(apis_dir.glob("*.md")):
                name = api_file.stem  # Remove .md extension
                if regex.search(name):
                    matches.append(f"{version}/Apis/{name}")

    output_parts = [f"## Endpoints matching: `{pattern}`\n"]
    if not matches:
        output_parts.append("No matching endpoints found.")
    else:
        output_parts.append(f"Found {len(matches)} matches:\n")
        for match in matches:
            output_parts.append(f"- `{match}`")

    return [TextContent(type="text", text="\n".join(output_parts))]


async def handle_list_models(arguments: dict):
    """List data model files matching a regex pattern."""
    pattern = arguments.get("pattern", "")
    api_version = arguments.get("api_version")

    if not pattern:
        return [TextContent(type="text", text="Error: pattern is required")]

    try:
        regex = re.compile(pattern, re.IGNORECASE)
    except re.error as e:
        return [TextContent(type="text", text=f"Error: Invalid regex pattern: {e}")]

    versions = [api_version] if api_version else ["v2", "v3"]
    matches = []

    for version in versions:
        models_dir = DOCS_ROOT / version / "Models"
        if models_dir.exists():
            for model_file in sorted(models_dir.glob("*.md")):
                name = model_file.stem  # Remove .md extension
                if regex.search(name):
                    matches.append(f"{version}/Models/{name}")

    output_parts = [f"## Models matching: `{pattern}`\n"]
    if not matches:
        output_parts.append("No matching models found.")
    else:
        output_parts.append(f"Found {len(matches)} matches:\n")
        for match in matches:
            output_parts.append(f"- `{match}`")

    return [TextContent(type="text", text="\n".join(output_parts))]


async def handle_get_model(arguments: dict):
    """Get the full content of a specific data model."""
    name = arguments.get("name", "")
    api_version = arguments.get("api_version", "v3")

    if not name:
        return [TextContent(type="text", text="Error: name is required")]

    # Remove .md extension if provided
    if name.endswith(".md"):
        name = name[:-3]

    model_path = DOCS_ROOT / api_version / "Models" / f"{name}.md"

    if not model_path.exists():
        # Try the other version
        other_version = "v2" if api_version == "v3" else "v3"
        alt_path = DOCS_ROOT / other_version / "Models" / f"{name}.md"
        if alt_path.exists():
            return [TextContent(
                type="text",
                text=f"Error: Model '{name}' not found in {api_version}, but exists in {other_version}. "
                     f"Use api_version='{other_version}' to fetch it."
            )]
        return [TextContent(
            type="text",
            text=f"Error: Model '{name}' not found in {api_version}/Models/. "
                 f"Use list_models to find available models."
        )]

    content = model_path.read_text(encoding="utf-8")

    output_parts = [
        f"## Model: {name} ({api_version})\n",
        f"**Path:** `{api_version}/Models/{name}.md`\n",
        content
    ]

    return [TextContent(type="text", text="\n".join(output_parts))]


async def handle_get_chunk(arguments: dict):
    """Get the full content of a specific chunk by ID."""
    chunk_id = arguments.get("chunk_id", "")

    if not chunk_id:
        return [TextContent(type="text", text="Error: chunk_id is required")]

    try:
        collection = get_collection()
    except RuntimeError as e:
        return [TextContent(type="text", text=f"Error: {e}")]

    # Fetch the chunk by ID
    results = collection.get(
        ids=[chunk_id],
        include=["documents", "metadatas"]
    )

    if not results["ids"]:
        return [TextContent(
            type="text",
            text=f"Error: Chunk '{chunk_id}' not found. Use search to find valid chunk IDs."
        )]

    doc = results["documents"][0]
    meta = results["metadatas"][0]

    output_parts = [
        f"## Chunk: {chunk_id}\n",
        f"**Path:** `{meta.get('file_path', 'unknown')}`",
        f"**Version:** {meta.get('api_version')}",
        f"**Type:** {meta.get('doc_type')}",
    ]

    if meta.get("doc_type") == "api":
        output_parts.append(f"**API:** {meta.get('api_name')} / {meta.get('endpoint')}")
    else:
        output_parts.append(f"**Model:** {meta.get('model_name')}")

    output_parts.append("")
    output_parts.append(doc)

    return [TextContent(type="text", text="\n".join(output_parts))]


async def main():
    """Run the MCP server."""
    async with stdio_server() as (read_stream, write_stream):
        await server.run(
            read_stream,
            write_stream,
            server.create_initialization_options()
        )


if __name__ == "__main__":
    import asyncio
    asyncio.run(main())
