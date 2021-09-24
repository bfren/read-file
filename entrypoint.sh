#!/bin/sh

set -euo pipefail

[[ -z "${1-}" ]] && \
  echo "::error::You must pass the file path." && \
  exit 1

CONTENTS=$(cat ${1})

echo "::set-output name=contents::${CONTENTS}"
