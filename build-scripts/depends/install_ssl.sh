#!/usr/bin/env bash

set -e

NAME="ssl"
VERSION="3.0.7"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://www.openssl.org/source/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./Configure --prefix="${PREFIX}" --openssldir="${PREFIX}/ssl"
make -j8
make install
cd -
