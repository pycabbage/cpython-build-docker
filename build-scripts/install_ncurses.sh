#!/usr/bin/env bash

NAME="ncurses"
VERSION="6.3-20221112"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${NAME}.tar.gz"
URL="https://invisible-island.net/datafiles/current/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
