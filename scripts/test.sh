#!/usr/bin/env bash

set -e

echo > /tmp/log.txt

echo HOME: ${HOME} >> /tmp/log.txt
echo PREFIX: ${PREFIX} >> /tmp/log.txt
echo LD_LIBRARY_PATH: ${LD_LIBRARY_PATH} >> /tmp/log.txt
echo PKG_CONFIG_PATH: ${PKG_CONFIG_PATH} >> /tmp/log.txt
