#!/bin/bash
set -euo pipefail

# Only run in Claude Code on the web. Local sessions skip this.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# This repo is markdown/prompts only. Routines reach out via curl and Python
# (urllib/requests) per CLAUDE.md, so make sure those tools are available
# and that `requests` is importable without on-the-fly pip installs mid-run.

for bin in curl git python3; do
  if ! command -v "$bin" >/dev/null 2>&1; then
    echo "session-start: missing required tool: $bin" >&2
    exit 1
  fi
done

if ! python3 -c "import requests" >/dev/null 2>&1; then
  python3 -m pip install --quiet --disable-pip-version-check --no-input requests
fi

echo "session-start: ok"
