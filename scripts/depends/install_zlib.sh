#!/usr/bin/env bash

set -e

NAME="zlib"
VERSION="1.2.13"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://zlib.net/fossils/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
