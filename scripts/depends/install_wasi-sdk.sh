#!/usr/bin/env bash

set -e

NAME="wasi-sdk"
VERSION="wasi-sdk-16"
DIRNAME="${NAME}"
REPO="https://github.com/WebAssembly/wasi-sdk.git"

# git clone --depth 1 --single-branch -b "${VERSION}" "${REPO}" "${DIRNAME}"
cd "${DIRNAME}"
# git submodule update --init --recursive --recommend-shallow --depth 1
NINJA_FLAGS=-v make package -j8
ls dist
make install PREFIX="${PREFIX}"
cd -
rm -fr "${DIRNAME}"
