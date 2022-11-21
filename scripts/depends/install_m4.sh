#!/usr/bin/env bash

set -e

NAME="m4"
VERSION="1.4.19"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://ftp.gnu.org/gnu/${NAME}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
