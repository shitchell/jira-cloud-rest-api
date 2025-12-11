#!/usr/bin/env bash
#
# Setup script for the Jira Docs MCP server.
#
# Usage:
#   ./setup.sh                    # Use sentence-transformers (default, free)
#   ./setup.sh --openai           # Use OpenAI embeddings (requires OPENAI_API_KEY)
#   ./setup.sh --force            # Force rebuild index
#   ./setup.sh --skip-index       # Only install deps, skip index building
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENV_DIR="${SCRIPT_DIR}/.venv"

# Parse arguments
BACKEND="sentence-transformers"
FORCE=""
SKIP_INDEX=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        --openai)
            BACKEND="openai"
            shift
            ;;
        --force)
            FORCE="--force"
            shift
            ;;
        --skip-index)
            SKIP_INDEX="1"
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --openai      Use OpenAI embeddings (requires OPENAI_API_KEY)"
            echo "  --force       Force rebuild the index"
            echo "  --skip-index  Only install dependencies, skip index building"
            echo "  -h, --help    Show this help message"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

echo "=== Jira Docs MCP Server Setup ==="
echo ""

# Check Python
if ! command -v python3 &>/dev/null; then
    echo "Error: python3 not found. Please install Python 3.9+."
    exit 1
fi

PYTHON_VERSION=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
echo "Python version: ${PYTHON_VERSION}"

# Create virtual environment
if [[ ! -d "${VENV_DIR}" ]]; then
    echo "Creating virtual environment..."
    python3 -m venv "${VENV_DIR}"
fi

# Activate venv
source "${VENV_DIR}/bin/activate"

# Upgrade pip
echo "Upgrading pip..."
pip install --quiet --upgrade pip

# Install dependencies
echo "Installing dependencies..."
pip install --quiet -r "${SCRIPT_DIR}/requirements.txt"

if [[ -z "${SKIP_INDEX}" ]]; then
    # Check for OpenAI key if using OpenAI backend
    if [[ "${BACKEND}" == "openai" ]] && [[ -z "${OPENAI_API_KEY:-}" ]]; then
        echo ""
        echo "Error: OPENAI_API_KEY environment variable not set."
        echo "Either set it or use sentence-transformers backend (default)."
        exit 1
    fi

    # Build index
    echo ""
    echo "Building vector index with ${BACKEND}..."
    python "${SCRIPT_DIR}/build_index.py" --backend "${BACKEND}" ${FORCE}
fi

echo ""
echo "=== Setup Complete ==="
echo ""
echo "To use this MCP server with Claude Code, add to your Claude settings:"
echo ""
echo "  claude mcp add jira-docs ${VENV_DIR}/bin/python ${SCRIPT_DIR}/server.py"
echo ""
echo "Or manually add to ~/.claude/settings.json:"
echo ""
cat <<EOF
  "mcpServers": {
    "jira-docs": {
      "command": "${VENV_DIR}/bin/python",
      "args": ["${SCRIPT_DIR}/server.py"]
    }
  }
EOF
echo ""
