#!/usr/bin/env bash

set -e

DEPENDS="make gdb cmake ninja readline zlib libffi bzip2 gdbm xz lcov ncurses sqlite ssl tcl tk ninja"
DEPENDS_SCRIPT="$(dirname ${0})/depends"

export PREFIX="${HOME}/.local"
export LD_LIBRARY_PATH=${PREFIX}/lib:${LD_LIBRARY_PATH}
export PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}
export PATH=${PREFIX}/bin:${PATH}

for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  . "${DEPENDS_SCRIPT}/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
