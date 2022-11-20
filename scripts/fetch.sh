#!/usr/bin/env bash

set -e

VERSION=$1
DEST=${2:-${HOME}/python}
DIRNAME="Python-${VERSION}"
FILENAME="${DIRNAME}.tgz"
URL="https://www.python.org/ftp/python/${VERSION}/${FILENAME}"

echo "::set-output name=version::$VERSION"
echo "::set-output name=dest::$DEST"

curl -kLo "${FILENAME}" "${URL}"
tar xzf "${FILENAME}"
ls $DIRNAME
rm "${FILENAME}"
