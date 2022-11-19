#!/usr/bin/env bash

DEPENDS="zlib libffi bzip2"

for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  DEFAULT_PWD="${PWD}"
  . "$(dirname ${0})/install_${DEPEND}.sh"
  cd "${DEFAULT_PWD}"
done
