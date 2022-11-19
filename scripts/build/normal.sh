#!/usr/bin/env bash

set -e

BASE=${1}
echo BASE: $BASE

PREFIX="${HOME}/.local"
LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
BUILDDIR=${BASE}/builddir/build

cd $BUILDDIR
$BASE/configure -C --enable-shared --enable-pystats --enable-optimizations --enable-loadable-sqlite-extensions --with-pydebug --with-trace-refs --with-assertions --with-address-sanitizer --with-system-libmpdec --with-memory-sanitizer --with-undefined-behavior-sanitizer --with-system-expat --with-valgrind --with-dtrace
make -j8
cd -
