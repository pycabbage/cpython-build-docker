#!/usr/bin/env bash

set -e

NAME="ninja"
VERSION="v1.11.1"
DIRNAME="ninja-${VERSION}"
FILENAME="${VERSION}.tar.gz"
URL="https://github.com/ninja-build/${NAME}/archive/refs/tags/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
cmake -Bbuild-cmake -DCMAKE_INSTALL_PREFIX="${PREFIX}"
cmake --build build-cmake
cmake --install build-cmake

./configure --prefix="${PREFIX}"
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
