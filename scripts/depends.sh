#!/usr/bin/env bash

set -e

# DEPENDS="readline zlib libffi bzip2 xz lcov ncurses sqlite ssl tcl tk wasix"
# TOOLS="make gdb gdbm cmake ninja wasi-sdk-prebuilt emsdk"
TOOLS="wasi-sdk-prebuilt wasix"
DEPENDS_SCRIPT="$(dirname ${0})/depends"

export PREFIX="${HOME}/.local"
export LD_LIBRARY_PATH=${PREFIX}/lib:${LD_LIBRARY_PATH}
export PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}
export PATH=${PREFIX}/bin:${PREFIX}/emsdk:${PATH}

DEPENDS="${TOOLS} ${DEPENDS}"
for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  "${DEPENDS_SCRIPT}/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
