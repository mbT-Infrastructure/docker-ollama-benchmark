#!/usr/bin/env bash
set -e -o pipefail

# exec ollamark -o "$SERVER_URL" "$@"

exec ollama-benchmark --host "$SERVER_URL" "$@"
