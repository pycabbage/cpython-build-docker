#!/usr/bin/env bash

set -e

NAME="ninja"
VERSION="1.11.1"
DIRNAME="ninja-${VERSION}"
FILENAME="v${VERSION}.tar.gz"
URL="https://github.com/ninja-build/${NAME}/archive/refs/tags/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
cmake -Bbuild-cmake -DCMAKE_INSTALL_PREFIX="${PREFIX}"
cmake --build build-cmake
cmake --install build-cmake
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
