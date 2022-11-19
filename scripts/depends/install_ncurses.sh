#!/usr/bin/env bash

set -e

NAME="ncurses"
VERSION="6.3-20221112"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${NAME}.tar.gz"
URL="https://invisible-island.net/datafiles/current/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
