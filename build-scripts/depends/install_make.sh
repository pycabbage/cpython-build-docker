#!/usr/bin/env bash

set -e

NAME="make"
VERSION="4.4"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${VERSION}.tar.gz"
URL="https://ftp.gnu.org/gnu/${NAME}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
