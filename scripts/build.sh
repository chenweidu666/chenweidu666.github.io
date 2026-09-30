#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HUGO_BIN="${HUGO_BIN:-/home/chenwei/opt/hugo/hugo}"

cd "$ROOT"
exec "$HUGO_BIN" --minify --cleanDestinationDir
