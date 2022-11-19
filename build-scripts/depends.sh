#!/usr/bin/env bash

DEPENDS="gdb cmake readline zlib libffi bzip2 gdbm xz lcov ncurses sqlite ssl tcl tk"
PREFIX="${HOME}/.local"
LD_LIBRARY_PATH=${PREFIX}/lib:${LD_LIBRARY_PATH}
PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}
PATH=${PREFIX}/bin:${PATH}

for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  . "$(dirname ${0})/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
