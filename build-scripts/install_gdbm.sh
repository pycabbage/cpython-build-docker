#!/usr/bin/env bash

NAME="gdbm"
VERSION="1.23"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://ftp.gnu.org/gnu/gdbm/${NAME}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -o "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
