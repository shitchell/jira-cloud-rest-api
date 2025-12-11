#!/usr/bin/env python3
"""
Build the vector index from chunked Jira API documentation.

Supports two embedding backends:
- sentence-transformers (local, free, default)
- OpenAI (optional, requires OPENAI_API_KEY)

The index is stored in ChromaDB for persistent storage.
"""

# Swap in pysqlite3 for older systems (ChromaDB needs sqlite >= 3.35.0)
__import__("pysqlite3")
import sys
sys.modules["sqlite3"] = sys.modules.pop("pysqlite3")

import argparse
import json
import os
from pathlib import Path

import chromadb
from chromadb.config import Settings

from chunk_docs import get_all_chunks, compute_docs_hash


# Paths
MCP_SERVER_DIR = Path(__file__).parent
CHROMA_DB_DIR = MCP_SERVER_DIR / "chroma_db"
INDEX_META_FILE = MCP_SERVER_DIR / "index_meta.json"
SUMMARIES_FILE = MCP_SERVER_DIR / "summaries.json"

# Collection name
COLLECTION_NAME = "jira_docs"


def load_summaries() -> dict:
    """Load summaries if file exists."""
    if SUMMARIES_FILE.exists():
        return json.loads(SUMMARIES_FILE.read_text())
    return {}


def get_embedding_function(backend: str):
    """
    Get the appropriate embedding function for the specified backend.
    """
    if backend == "openai":
        from chromadb.utils.embedding_functions import OpenAIEmbeddingFunction

        api_key = os.environ.get("OPENAI_API_KEY")
        if not api_key:
            print("Error: OPENAI_API_KEY environment variable not set")
            sys.exit(1)

        return OpenAIEmbeddingFunction(
            api_key=api_key,
            model_name="text-embedding-3-small"
        )

    else:  # sentence-transformers (default)
        from chromadb.utils.embedding_functions import SentenceTransformerEmbeddingFunction

        return SentenceTransformerEmbeddingFunction(
            model_name="all-MiniLM-L6-v2"
        )


def load_index_meta() -> dict:
    """Load index metadata if it exists."""
    if INDEX_META_FILE.exists():
        return json.loads(INDEX_META_FILE.read_text())
    return {}


def save_index_meta(meta: dict):
    """Save index metadata."""
    INDEX_META_FILE.write_text(json.dumps(meta, indent=2))


def needs_rebuild(docs_hash: str, backend: str) -> bool:
    """Check if the index needs to be rebuilt."""
    meta = load_index_meta()
    if meta.get("docs_hash") != docs_hash:
        return True
    if meta.get("backend") != backend:
        return True
    if not CHROMA_DB_DIR.exists():
        return True
    return False


def build_index(backend: str = "sentence-transformers", force: bool = False):
    """
    Build the vector index from documentation chunks.

    Args:
        backend: Embedding backend ("sentence-transformers" or "openai")
        force: Force rebuild even if index is up to date
    """
    docs_hash = compute_docs_hash()

    if not force and not needs_rebuild(docs_hash, backend):
        print(f"Index is up to date (hash: {docs_hash}, backend: {backend})")
        print("Use --force to rebuild anyway.")
        return

    print(f"Building index with {backend} embeddings...")

    # Get embedding function
    embed_fn = get_embedding_function(backend)

    # Initialize ChromaDB
    CHROMA_DB_DIR.mkdir(parents=True, exist_ok=True)

    client = chromadb.PersistentClient(
        path=str(CHROMA_DB_DIR),
        settings=Settings(anonymized_telemetry=False)
    )

    # Delete existing collection if it exists
    try:
        client.delete_collection(COLLECTION_NAME)
    except Exception:
        pass  # Collection doesn't exist

    # Create new collection
    collection = client.create_collection(
        name=COLLECTION_NAME,
        embedding_function=embed_fn,
        metadata={"hnsw:space": "cosine"}
    )

    # Get all chunks
    chunks = list(get_all_chunks())
    print(f"Processing {len(chunks)} chunks...")

    # Load summaries if available
    summaries = load_summaries()
    if summaries:
        print(f"Loaded {len(summaries)} summaries")

    # Truncate oversized chunks for OpenAI (8192 token limit, ~4 chars/token)
    if backend == "openai":
        max_chars = 25000  # ~6250 tokens, safe margin
        for chunk in chunks:
            if len(chunk["content"]) > max_chars:
                chunk["content"] = chunk["content"][:max_chars] + "\n\n[truncated]"

    # Batch insert (ChromaDB handles batching internally, but we'll show progress)
    batch_size = 100
    summaries_added = 0
    for i in range(0, len(chunks), batch_size):
        batch = chunks[i:i + batch_size]

        ids = [c["id"] for c in batch]
        documents = [c["content"] for c in batch]

        # Add summary to metadata if available
        metadatas = []
        for c in batch:
            meta = c["metadata"].copy()
            if c["id"] in summaries:
                meta["summary"] = summaries[c["id"]]
                summaries_added += 1
            metadatas.append(meta)

        collection.add(
            ids=ids,
            documents=documents,
            metadatas=metadatas
        )

        print(f"  Indexed {min(i + batch_size, len(chunks))}/{len(chunks)} chunks")

    if summaries_added:
        print(f"  Added summaries to {summaries_added} chunks")

    # Save metadata
    save_index_meta({
        "docs_hash": docs_hash,
        "backend": backend,
        "chunk_count": len(chunks),
    })

    print(f"\nIndex built successfully!")
    print(f"  Chunks indexed: {len(chunks)}")
    print(f"  Backend: {backend}")
    print(f"  Docs hash: {docs_hash}")
    print(f"  Database path: {CHROMA_DB_DIR}")


def main():
    parser = argparse.ArgumentParser(
        description="Build vector index for Jira API documentation"
    )
    parser.add_argument(
        "--backend",
        choices=["sentence-transformers", "openai"],
        default="sentence-transformers",
        help="Embedding backend to use (default: sentence-transformers)"
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Force rebuild even if index is up to date"
    )

    args = parser.parse_args()
    build_index(backend=args.backend, force=args.force)


if __name__ == "__main__":
    main()
