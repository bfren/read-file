#!/bin/sh

set -euo pipefail

# Path is required
[[ -z "${1-}" ]] && \
  echo "::error::You must pass the file path." && \
  exit 1

# Read contents
CONTENTS=$(cat ${1})

# Escape new lines
CONTENTS="${CONTENTS//$'\n'/'%0A'}"
CONTENTS="${CONTENTS//$'\r'/'%0D'}"

# Output contents
echo "::set-output name=contents::${CONTENTS}"
