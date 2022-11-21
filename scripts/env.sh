#!/bin/bash

set -e

[ -z "${PREFIX}" ]          && export PREFIX="${HOME}/.local"
[ -z "${WASI_SDK_PATH}" ]   && export WASI_SDK_PATH=$PREFIX/wasi-sdk
[ -z "${EMSDK_PATH}" ]      && export EMSDK_PATH=$PREFIX/emsdk
export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export PATH=$PREFIX/bin:$EMSDK_PATH:$PATH
export CFLAGS="-I$PREFIX/include"
export CXXFLAGS="-I$PREFIX/include"
