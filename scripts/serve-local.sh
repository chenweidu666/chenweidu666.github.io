#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PORT="${PORT:-8080}"
BIND="${BIND:-0.0.0.0}"

"$ROOT/scripts/build.sh"

echo "serving $ROOT/public on http://${BIND}:${PORT}/"
exec /usr/bin/python3 -m http.server "$PORT" --bind "$BIND" --directory "$ROOT/public"
