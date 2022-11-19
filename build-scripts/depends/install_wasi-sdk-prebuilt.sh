#!/usr/bin/env bash

set -e

NAME="wasi-sdk"
VERSION="wasi-sdk-16"
VERSION_FULL="wasi-sdk-16"
DIRNAME="${PREFIX}/${NAME}"
FILENAME="${VERSION_FULL}-linux.tar.gz"
URL="https://github.com/WebAssembly/${NAME}/releases/download/${VERSION}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
mv "${VERSION_FULL}" "${DIRNAME}"
rm -fr "${FILENAME}"
