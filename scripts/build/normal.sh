#!/usr/bin/env bash

set -e

BASE=${1}
echo BASE: $BASE

PREFIX="${HOME}/.local"
LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
BUILDDIR=${BASE}/builddir/build

cd $BUILDDIR
$BASE/configure -C --enable-shared
make -j8
cd -
