#!/usr/bin/env python3
"""
Generate summaries for documentation chunks using Claude Haiku.

Summaries are stored in summaries.json and used by the MCP server
to provide better search result previews.

Requires ANTHROPIC_API_KEY environment variable.
"""

import argparse
import asyncio
import json
import os
import sys
from pathlib import Path
from typing import Optional

try:
    import anthropic
except ImportError:
    print("Error: anthropic package not installed")
    print("Run: pip install anthropic")
    sys.exit(1)

from chunk_docs import get_all_chunks

# Paths
MCP_SERVER_DIR = Path(__file__).parent
SUMMARIES_FILE = MCP_SERVER_DIR / "summaries.json"

# Model config
DEFAULT_MODEL = "claude-3-haiku-20240307"  # Cheapest option
MAX_CONCURRENT = 10  # Reasonable default to avoid rate limits

SYSTEM_PROMPT = """You are summarizing Jira API documentation for a search index.
Write a 1-2 sentence summary that captures:
- What this endpoint/model does
- Key parameters or properties (if notable)
- When you'd use it

Be concise and technical. No fluff. Start directly with the content."""


def load_existing_summaries() -> dict:
    """Load existing summaries if file exists."""
    if SUMMARIES_FILE.exists():
        return json.loads(SUMMARIES_FILE.read_text())
    return {}


def save_summaries(summaries: dict):
    """Save summaries to JSON file."""
    SUMMARIES_FILE.write_text(json.dumps(summaries, indent=2, sort_keys=True))


async def generate_summary(
    client: anthropic.AsyncAnthropic,
    chunk_id: str,
    content: str,
    model: str,
    semaphore: asyncio.Semaphore
) -> tuple[str, Optional[str]]:
    """Generate a summary for a single chunk."""
    async with semaphore:
        try:
            # Truncate very long content to save tokens
            if len(content) > 8000:
                content = content[:8000] + "\n\n[truncated]"

            response = await client.messages.create(
                model=model,
                max_tokens=150,
                system=SYSTEM_PROMPT,
                messages=[
                    {"role": "user", "content": f"Summarize this documentation:\n\n{content}"}
                ]
            )

            summary = response.content[0].text.strip()
            return (chunk_id, summary)

        except anthropic.RateLimitError:
            print(f"  Rate limited on {chunk_id}, waiting...")
            await asyncio.sleep(5)
            return await generate_summary(client, chunk_id, content, model, semaphore)

        except Exception as e:
            print(f"  Error on {chunk_id}: {e}")
            return (chunk_id, None)


async def generate_all_summaries(
    model: str = DEFAULT_MODEL,
    max_concurrent: int = MAX_CONCURRENT,
    api_version: Optional[str] = None,
    force: bool = False
):
    """Generate summaries for all chunks."""
    api_key = os.environ.get("ANTHROPIC_API_KEY")
    if not api_key:
        print("Error: ANTHROPIC_API_KEY environment variable not set")
        sys.exit(1)

    client = anthropic.AsyncAnthropic(api_key=api_key)

    # Load existing summaries
    summaries = load_existing_summaries()
    print(f"Loaded {len(summaries)} existing summaries")

    # Get all chunks
    chunks = list(get_all_chunks())

    # Filter by API version if specified
    if api_version:
        chunks = [c for c in chunks if c["metadata"]["api_version"] == api_version]

    # Filter out chunks that already have summaries (unless force)
    if not force:
        chunks = [c for c in chunks if c["id"] not in summaries]

    if not chunks:
        print("All chunks already have summaries. Use --force to regenerate.")
        return

    print(f"Generating summaries for {len(chunks)} chunks...")
    print(f"Model: {model}")
    print(f"Concurrency: {max_concurrent}")

    semaphore = asyncio.Semaphore(max_concurrent)

    # Create tasks
    tasks = [
        generate_summary(client, c["id"], c["content"], model, semaphore)
        for c in chunks
    ]

    # Process with progress
    completed = 0
    failed = 0

    for coro in asyncio.as_completed(tasks):
        chunk_id, summary = await coro
        completed += 1

        if summary:
            summaries[chunk_id] = summary
            # Save periodically
            if completed % 50 == 0:
                save_summaries(summaries)
                print(f"  Progress: {completed}/{len(chunks)} (saved checkpoint)")
        else:
            failed += 1

        if completed % 100 == 0:
            print(f"  Progress: {completed}/{len(chunks)}")

    # Final save
    save_summaries(summaries)

    print(f"\nDone!")
    print(f"  Generated: {completed - failed}")
    print(f"  Failed: {failed}")
    print(f"  Total summaries: {len(summaries)}")
    print(f"  Saved to: {SUMMARIES_FILE}")


def main():
    parser = argparse.ArgumentParser(
        description="Generate summaries for Jira API documentation chunks"
    )
    parser.add_argument(
        "--model",
        default=DEFAULT_MODEL,
        help=f"Model to use (default: {DEFAULT_MODEL})"
    )
    parser.add_argument(
        "--concurrency",
        type=int,
        default=MAX_CONCURRENT,
        help=f"Max concurrent requests (default: {MAX_CONCURRENT})"
    )
    parser.add_argument(
        "--api-version",
        choices=["v2", "v3"],
        help="Only generate for specific API version"
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Regenerate all summaries even if they exist"
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Show what would be generated without making API calls"
    )

    args = parser.parse_args()

    if args.dry_run:
        summaries = load_existing_summaries()
        chunks = list(get_all_chunks())
        if args.api_version:
            chunks = [c for c in chunks if c["metadata"]["api_version"] == args.api_version]
        if not args.force:
            chunks = [c for c in chunks if c["id"] not in summaries]

        print(f"Would generate {len(chunks)} summaries")
        print(f"Existing summaries: {len(summaries)}")

        # Estimate cost
        total_input_tokens = sum(len(c["content"]) // 4 for c in chunks)
        total_input_tokens += len(chunks) * 50  # system prompt
        total_output_tokens = len(chunks) * 75

        print(f"\nEstimated tokens:")
        print(f"  Input: ~{total_input_tokens:,}")
        print(f"  Output: ~{total_output_tokens:,}")
        print(f"\nEstimated cost (Haiku 3): ~${(total_input_tokens * 0.25 + total_output_tokens * 1.25) / 1_000_000:.2f}")
        return

    asyncio.run(generate_all_summaries(
        model=args.model,
        max_concurrent=args.concurrency,
        api_version=args.api_version,
        force=args.force
    ))


if __name__ == "__main__":
    main()
