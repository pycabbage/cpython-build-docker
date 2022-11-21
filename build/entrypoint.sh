#!/bin/bash

set -e

export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export WASI_SDK_PATH=$PREFIX/wasi-sdk
export EMSDK_PATH=$PREFIX/emsdk
export PATH=$PREFIX/bin:$EMSDK_PATH:$PATH

exec "$@"
