#!/usr/bin/env bash -eu

NAME="libffi"
VERSION="3.4.3"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://sourceware.org/pub/${NAME}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -o "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
