#!/bin/bash
set -e

WORKFLOW_NAME="Trimmy"
OUTPUT_FILE="${WORKFLOW_NAME}.alfredworkflow"

# Files to include in the workflow
WORKFLOW_FILES=(
    "info.plist"
    "icon.png"
)

# Remove old build
rm -f "$OUTPUT_FILE"

# Create workflow (alfredworkflow is just a zip)
zip -j "$OUTPUT_FILE" "${WORKFLOW_FILES[@]}"

echo "Built: $OUTPUT_FILE"
echo "Double-click to install in Alfred"
