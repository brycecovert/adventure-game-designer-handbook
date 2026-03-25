#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MMDC="/home/noti/.nvm/versions/node/v22.17.1/bin/mmdc"
SRC_DIR="$SCRIPT_DIR/src/inspiration"

echo "Rendering Mermaid charts to SVG..."
for mmd in "$SRC_DIR"/*-chart.mmd; do
    base=$(basename "$mmd" .mmd)
    svg="$SRC_DIR/${base}.svg"
    echo "  Generating: ${base}.svg"
    "$MMDC" -i "$mmd" -o "$svg" -w 1600
done
echo "Done."

echo "Building mdbook..."
cd "$SCRIPT_DIR"
mdbook build
