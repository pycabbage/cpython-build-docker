#!/usr/bin/env bash

set -e

NAME="wasix"
DIRNAME="${NAME}"
REPO="https://github.com/singlestore-labs/wasix.git"

git clone --depth 1 "${REPO}" "${DIRNAME}"
cd "${DIRNAME}"
make all -j8
make install PREFIX="${PREFIX}"
cd -
rm -fr "${DIRNAME}"
