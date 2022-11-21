#!/usr/bin/env bash

set -e

DEPENDS="zlib libffi bzip2 xz lcov ncurses readline sqlite openssl tcl tk wasix"
TOOLS="make gdb gdbm cmake libtool ninja wasi-sdk-prebuilt emsdk"
# TOOLS="gdb gdbm libtool ninja wasi-sdk-prebuilt emsdk"
DEPENDS_SCRIPT="$(dirname ${0})/depends"

. ./env.sh

DEPENDS="${TOOLS} ${DEPENDS}"
for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  "${DEPENDS_SCRIPT}/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
