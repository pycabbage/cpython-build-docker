#!/usr/bin/env bash

VERSION=1.2.13
DIRNAME="zlib-${VERSION}"
FILENAME="${DIRNAME}.tar.xz"
URL="https://zlib.net/fossils/${FILENAME}"

curl "${URL}" -o "${FILENAME}"
tar Jxf "${FILENAME}"
cd "${DIRNAME}"
make -j8
make install
