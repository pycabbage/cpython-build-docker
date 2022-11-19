#!/usr/bin/env bash -eu

NAME="xz"
VERSION="5.2.8"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://tukaani.org/${NAME}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -o "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
