#!/usr/bin/env bash

set -e

NAME="libtool"
VERSION="2.4.6"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://ftpmirror.gnu.org/${NAME}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}" --enable-ltdl-install --with-gnu-ld
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
