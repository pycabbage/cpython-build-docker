#!/usr/bin/env bash

set -e

NAME="tk"
VERSION="8.6.12"
DIRNAME="${NAME}${VERSION}"
FILENAME="${DIRNAME}-src.tar.gz"
URL="https://downloads.sourceforge.net/project/tcl/Tcl/${VERSION}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}/unix"
./configure --prefix="${PREFIX}" --enable-threads --enable-shared --enable-symbols --enable-64bit --enable-64bit-vis --enable-man-symlinks
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
