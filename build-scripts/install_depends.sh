#!/usr/bin/env bash

echo "0: ${0}"
echo "dirname: $(dirname ${0})"

DEPENDS="zlib libffi"

for DEPEND in ${DEPENDS}; do
  echo "installing ${DEPEND} ..."
  exec "$(dirname ${0})/install_${DEPEND}.sh"
done
