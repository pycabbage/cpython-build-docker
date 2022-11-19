#!/usr/bin/env bash

set -e

NAME="sqlite"
VERSION="3400000"
DIRNAME="${NAME}-autoconf-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://www.sqlite.org/2022/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
cd -
