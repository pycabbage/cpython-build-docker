#!/usr/bin/env bash

echo "0: ${0}"
echo "dirname: $(dirname ${0})"

DEPENDS="libffi zlib"

for DEPEND in ${DEPENDS}; do
  echo install ${DEPEND}
done
