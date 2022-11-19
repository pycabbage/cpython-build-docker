#!/usr/bin/env bash -eu

NAME="zlib"
VERSION="1.2.13"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://zlib.net/fossils/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -o "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
