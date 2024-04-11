#! /bin/bash

set -e

function checkParameter() {
if [ -z "$2" ]
then
  echo "$1 is required, but not provided"
  exit 1
fi
}

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

checkParameter "AppCenter Access Token" "$APPCENTER_TOKEN"
export APPCENTER_ACCESS_TOKEN="$APPCENTER_TOKEN"

echo "Template: $TEMPLATE"

case $TEMPLATE in

  "custom-script")
    checkParameter "Custom script" "$CUSTOM_SCRIPT"
    eval "$CUSTOM_SCRIPT"
    ;;

  "distribute-release")
    checkParameter "File path" "$FILE"
    checkParameter "App name" "$APP"
    checkParameter "Group name" "$GROUP"

    sh /templates/distribute-release.sh "$FILE" "$APP" "$GROUP" "$RELEASE_NOTES" "$OUTPUT" "$BUILD_VERSION" "$PARAMETERS"
    ;;

  *)
    echo -n "$TEMPLATE is unknown template, please check documentation for available templates"
    exit 1
    ;;

esac

exit 0
