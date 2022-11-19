#!/usr/bin/env bash

NAME="gdb"
VERSION="12.1"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://ftp.gnu.org/gnu/${NAME}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
