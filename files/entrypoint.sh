#!/usr/bin/env bash
set -e -o pipefail

exec ollama-benchmark --host "$SERVER_URL" "$@"
