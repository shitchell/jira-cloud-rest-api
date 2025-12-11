#!/usr/bin/env python3
"""
Chunk Jira API documentation into semantic pieces for vector embedding.

Chunking strategy:
- API files: Split by endpoint section (each <a name="..."> block)
- Model files: Keep whole (they're small property tables)
"""

import hashlib
import json
import re
from pathlib import Path
from typing import Iterator


def get_docs_root() -> Path:
    """Get the root directory of the API docs."""
    return Path(__file__).parent.parent


def chunk_api_file(file_path: Path, api_version: str) -> Iterator[dict]:
    """
    Split an API file into chunks by endpoint.

    Each endpoint section starts with <a name="endpointName"> and ends
    before the next <a name="..."> or EOF.
    """
    content = file_path.read_text(encoding="utf-8")
    filename = file_path.stem  # e.g., "IssuesApi"

    # First, extract the method table at the top for context
    lines = content.split("\n")
    header_lines = []
    in_table = False
    table_end = 0

    for i, line in enumerate(lines):
        if line.startswith("| Method |"):
            in_table = True
        if in_table:
            header_lines.append(line)
            if line.strip() == "" or (not line.startswith("|") and in_table and len(header_lines) > 1):
                table_end = i
                break

    header = "\n".join(header_lines).strip()

    # Split by <a name="..."> anchors
    pattern = r'<a name="([^"]+)"></a>\s*'
    sections = re.split(pattern, content)

    # sections[0] is the header content (before first anchor)
    # Then alternating: [endpoint_name, content, endpoint_name, content, ...]

    if len(sections) < 3:
        # No anchors found, yield the whole file
        yield {
            "id": f"{api_version}/{filename}",
            "content": content,
            "metadata": {
                "file_path": str(file_path.relative_to(get_docs_root())),
                "api_version": api_version,
                "doc_type": "api",
                "api_name": filename,
                "endpoint": None,
            }
        }
        return

    # Process each endpoint section
    for i in range(1, len(sections), 2):
        if i + 1 >= len(sections):
            break

        endpoint_name = sections[i]
        endpoint_content = sections[i + 1].strip()

        # Skip empty sections
        if not endpoint_content:
            continue

        # Build the chunk with context
        chunk_content = f"# {filename}\n\n## {endpoint_name}\n\n{endpoint_content}"

        yield {
            "id": f"{api_version}/{filename}/{endpoint_name}",
            "content": chunk_content,
            "metadata": {
                "file_path": str(file_path.relative_to(get_docs_root())),
                "api_version": api_version,
                "doc_type": "api",
                "api_name": filename,
                "endpoint": endpoint_name,
            }
        }


def chunk_model_file(file_path: Path, api_version: str) -> Iterator[dict]:
    """
    Yield a model file as a single chunk.
    Model files are small property tables, no need to split.
    """
    content = file_path.read_text(encoding="utf-8")
    filename = file_path.stem  # e.g., "IssueBean"

    yield {
        "id": f"{api_version}/Models/{filename}",
        "content": content,
        "metadata": {
            "file_path": str(file_path.relative_to(get_docs_root())),
            "api_version": api_version,
            "doc_type": "model",
            "model_name": filename,
        }
    }


def get_all_chunks() -> Iterator[dict]:
    """
    Iterate over all documentation and yield chunks.
    """
    docs_root = get_docs_root()

    for version in ["v2", "v3"]:
        # Process API files
        apis_dir = docs_root / version / "Apis"
        if apis_dir.exists():
            for api_file in sorted(apis_dir.glob("*.md")):
                yield from chunk_api_file(api_file, version)

        # Process Model files
        models_dir = docs_root / version / "Models"
        if models_dir.exists():
            for model_file in sorted(models_dir.glob("*.md")):
                yield from chunk_model_file(model_file, version)


def compute_docs_hash() -> str:
    """
    Compute a hash of all documentation files for change detection.
    """
    docs_root = get_docs_root()
    hasher = hashlib.sha256()

    for version in ["v2", "v3"]:
        for subdir in ["Apis", "Models"]:
            dir_path = docs_root / version / subdir
            if dir_path.exists():
                for md_file in sorted(dir_path.glob("*.md")):
                    hasher.update(md_file.name.encode())
                    hasher.update(str(md_file.stat().st_mtime).encode())

    return hasher.hexdigest()[:16]


def main():
    """Print chunk statistics."""
    chunks = list(get_all_chunks())

    api_chunks = [c for c in chunks if c["metadata"]["doc_type"] == "api"]
    model_chunks = [c for c in chunks if c["metadata"]["doc_type"] == "model"]

    v2_chunks = [c for c in chunks if c["metadata"]["api_version"] == "v2"]
    v3_chunks = [c for c in chunks if c["metadata"]["api_version"] == "v3"]

    print(f"Total chunks: {len(chunks)}")
    print(f"  API endpoint chunks: {len(api_chunks)}")
    print(f"  Model chunks: {len(model_chunks)}")
    print(f"  v2 chunks: {len(v2_chunks)}")
    print(f"  v3 chunks: {len(v3_chunks)}")
    print(f"\nDocs hash: {compute_docs_hash()}")

    # Sample a chunk
    if chunks:
        sample = chunks[0]
        print(f"\nSample chunk ID: {sample['id']}")
        print(f"Sample metadata: {json.dumps(sample['metadata'], indent=2)}")
        print(f"Sample content (first 200 chars): {sample['content'][:200]}...")


if __name__ == "__main__":
    main()
