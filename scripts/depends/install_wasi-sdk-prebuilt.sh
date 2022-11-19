#!/usr/bin/env bash

set -e

NAME="wasi-sdk"
VERSION="wasi-sdk-16"
VERSION_FULL="wasi-sdk-16.0"
FILENAME="${VERSION_FULL}-linux.tar.gz"
URL="https://github.com/WebAssembly/${NAME}/releases/download/${VERSION}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
ls
mv "${VERSION_FULL}" "${WASI_SDK_PATH}"
rm -fr "${FILENAME}"
