#!/usr/bin/env bash

set -e

NAME="gmp"
VERSION="6.2.1"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${DIRNAME}.tar.xz"
URL="https://ftp.gnu.org/gnu/${NAME}/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar Jxf "${FILENAME}"
cd "${DIRNAME}"
# --enable-profiling --enable-nails
./configure --prefix="${PREFIX}" --with-gnu-ld --enable-assert --enable-alloca --enable-cxx --enable-assembly --enable-old-fft-full --enable-fat --enable-minithres
make -j8
make check || true
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
