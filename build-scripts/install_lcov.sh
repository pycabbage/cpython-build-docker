#!/usr/bin/env bash

NAME="lcov"
VERSION="1.16"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://github.com/linux-test-project/${NAME}/releases/download/v${VERSION}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
make install PREFIX="${PREFIX}"
cd -
