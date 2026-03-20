#!/bin/bash
set -e

MMDC="/home/noti/.nvm/versions/node/v22.17.1/bin/mmdc"
SRC_DIR="src/inspiration"

echo "Rendering Mermaid charts to SVG..."

"$MMDC" -i "$SRC_DIR/kings-quest-vi-chart.mmd" -o "$SRC_DIR/kings-quest-vi-chart.svg" -w 1600

echo "Done."
