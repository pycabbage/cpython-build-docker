#!/usr/bin/env bash -eu

DEPENDS="cmake zlib libffi bzip2 gdbm xz"
GLOBAL_PREFIX="${HOME}/.local"
LD_LIBRARY_PATH=${GLOBAL_PREFIX}/lib:${LD_LIBRARY_PATH}
PKG_CONFIG_PATH=${GLOBAL_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}
PATH=${GLOBAL_PREFIX}/bin:${PATH}

for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  . "$(dirname ${0})/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
