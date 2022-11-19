#!/usr/bin/env bash

DEPENDS="zlib libffi bzip2 gdbm"
GLOBAL_PREFIX="${HOME}/.local"
LD_LIBRARY_PATH=${GLOBAL_PREFIX}/lib:${LD_LIBRARY_PATH}
PKG_CONFIG_PATH=${GLOBAL_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}

for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  . "$(dirname ${0})/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
