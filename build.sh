#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MMDC="/home/noti/.nvm/versions/node/v22.17.1/bin/mmdc"
SRC_DIR="$SCRIPT_DIR/src/inspiration"

echo "Rendering Mermaid charts to SVG..."
"$MMDC" -i "$SRC_DIR/kings-quest-vi-chart.mmd" -o "$SRC_DIR/kings-quest-vi-chart.svg" -w 1600
echo "Done."

echo "Building mdbook..."
cd "$SCRIPT_DIR"
mdbook build
