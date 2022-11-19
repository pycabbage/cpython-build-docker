#!/usr/bin/env bash

NAME="tcl"
VERSION="8.6.12"
DIRNAME="${NAME}${VERSION}-src"
FILENAME="${DIRNAME}.tar.gz"
URL="https://downloads.sourceforge.net/project/tcl/Tcl/${VERSION}/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}/unix"
./configure --prefix="${PREFIX}" --enable-threads --enable-shared --enable-symbols --enable-64bit --enable-64bit-vis --enable-langinfo --enable-man-symlinks --enable-dtrace
make -j8
make install
cd -
