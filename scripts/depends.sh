#!/usr/bin/env bash

set -e

DEPENDS="zlib libffi bzip2 xz lcov ncurses readline sqlite ssl tcl tk wasix"
# TOOLS="make gdb gdbm cmake ninja wasi-sdk-prebuilt emsdk"
TOOLS="gdb gdbm libtool ninja wasi-sdk-prebuilt emsdk"
DEPENDS_SCRIPT="$(dirname ${0})/depends"

export PREFIX="${HOME}/.local"
export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export WASI_SDK_PATH=$PREFIX/wasi-sdk
export EMSDK_PATH=$PREFIX/emsdk
export PATH=$PREFIX/bin:$EMSDK_PATH:$PATH

DEPENDS="${TOOLS} ${DEPENDS}"
for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  "${DEPENDS_SCRIPT}/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
