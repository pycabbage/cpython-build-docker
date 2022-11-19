#!/usr/bin/env bash

set -e

NAME="ncurses"
VERSION="6.3-20221112"
DIRNAME="${NAME}-${VERSION}"
FILENAME="${NAME}.tar.gz"
URL="https://invisible-island.net/datafiles/current/${FILENAME}"

curl "${URL}" -kLo "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}" --with-termlib --with-shared --with-pthread --with-pcre2 --with-normal --with-libtool --with-gpm --enable-bsdpad --enable-colorfgbg --enable-const --enable-expanded --enable-ext-colors --enable-ext-mouse --enable-ext-putwin --enable-getcap --enable-getcap-cache --enable-hard-tabs --enable-interop --enable-mixed-case --enable-no-padding --enable-opaque-curses --enable-opaque-form --enable-opaque-menu --enable-opaque-panel --enable-pc-files --with-pkg-config --enable-pthreads-eintr --enable-reentrant --enable-rpath --enable-safe-sprintf --enable-signed-char --enable-sigwinch --enable-sp-funcs --enable-string-hacks --enable-symlinks --enable-tcap-names --enable-termcap --enable-warnings --enable-weak-symbols --enable-wgetch-events --enable-widec --enable-xmc-glitch
make -j8
make install
cd -
rm -fr "${DIRNAME}" "${FILENAME}"
