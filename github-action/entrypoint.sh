#!/bin/bash

set -e

APPCENTER_TOKEN="${1}"
TEMPLATE="${2}"
CUSTOM_SCRIPT="${3}"
FILE="${4}"
APP="${5}"
GROUP="${6}"
RELEASE_NOTES_FILE="${7}"
OUTPUT="${8}"
BUILD_VERSION="${9}"
PARAMETERS="${10}"

echo "AppCenter version:"
appcenter --version
export APPCENTER_ACCESS_TOKEN="$APPCENTER_TOKEN"
echo "Template: $TEMPLATE"

case $TEMPLATE in

  "custom-script")
    eval "$CUSTOM_SCRIPT"
    ;;

  "distribute-release")
    sh /templates/distribute-release.sh "$FILE" "$APP" "$GROUP" "$RELEASE_NOTES" "$OUTPUT" "$BUILD_VERSION" "$PARAMETERS"
    ;;

  *)
    echo -n "$TEMPLATE is unknown template, please check documentation for available templates"
    exit 1
    ;;

esac

exit 0
