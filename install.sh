#!/usr/bin/env bash
set -euo pipefail

source_ref="${1:-Hoddz-Trends-LLC/luna-agent-foundry}"
if (( $# > 1 )); then
  printf 'Usage: bash install.sh [marketplace-source]\n' >&2
  exit 2
fi
if ! command -v claude >/dev/null 2>&1; then
  printf 'Install Claude Code first: https://code.claude.com/docs/en/quickstart\n' >&2
  exit 127
fi
if [[ "$source_ref" == -* ]]; then
  printf 'Invalid marketplace source.\n' >&2
  exit 2
fi

claude plugin install luna-agent-foundry --marketplace "$source_ref" --scope user
printf 'Installed Luna Agent Foundry. Start a new Claude Code session to use it.\n'
