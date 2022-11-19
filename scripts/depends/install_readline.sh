#!/usr/bin/env bash

set -e

NAME="readline"
VERSION="8.2"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://ftp.gnu.org/gnu/${NAME}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}" --with-shared-termcap-library --enable-multibyte --with-curses
make -j8 SHLIB_LIBS=-ltinfo
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
