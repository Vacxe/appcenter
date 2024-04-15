#!/bin/bash

set -e

FILE="${1}"
APP="${2}"
GROUP="${3}"
RELEASE_NOTES="${3}"
OUTPUT="${4}"
BUILD_VERSION="${5}"
PARAMETERS="${6}"

echo "---"
echo "File: $FILE"
echo "App: $APP"
echo "Group: $GROUP"
echo "Release notes: $RELEASE_NOTES"
echo "Output: $OUTPUT"
echo "Parameters: $PARAMETERS"
echo "---"

appcenter distribute release --file "$FILE" --app "$APP" --group "$GROUP" \
  ${RELEASE_NOTES:+ --release_notes_file "$RELEASE_NOTES"} \
  ${BUILD_VERSION:+ --build-version "$BUILD_VERSION"} \
  ${OUTPUT:+ --output "$OUTPUT"} \
  ${PARAMETERS:+ --output "$PARAMETERS"}
