#!/usr/bin/env bash

NAME="bzip2"
VERSION="1.0.8"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://sourceware.org/pub/${NAME}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -o "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
make -j8
make install PREFIX="${PREFIX}"
cd -
