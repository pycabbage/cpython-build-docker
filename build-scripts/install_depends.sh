#!/usr/bin/env bash

DEPENDS="zlib libffi bzip2"

for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  . "$(dirname ${0})/install_${DEPEND}.sh"
done
