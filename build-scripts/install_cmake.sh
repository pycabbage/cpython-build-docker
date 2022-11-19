#!/usr/bin/env bash

NAME="cmake"
VERSION="3.25.0"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://github.com/Kitware/CMake/releases/download/v${VERSION}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -o "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./bootstrap --prefix="${PREFIX}"
make -j8
make install
cd -
