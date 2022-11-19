#!/usr/bin/env bash

set -e

NAME="emsdk"
VERSION="3.1.26"
DIRNAME="${PREFIX}/${NAME}"
REPO="https://github.com/emscripten-core/emsdk.git"

git clone --depth 1 --single-branch -b "${VERSION}" "${REPO}" "${DIRNAME}"
cd "${DIRNAME}"
./emsdk install latest
./emsdk activate latest
cd -
