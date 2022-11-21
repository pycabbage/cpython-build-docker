FROM ubuntu:rolling

ENV BASE=/usr/local/volume/scripts
ENV DEBIAN_FRONTEND=noninteractive

RUN rm -f /etc/apt/apt.conf.d/docker-clean; echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' > /etc/apt/apt.conf.d/keep-cache
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  echo y | unminimize
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt install --no-install-recommends -y curl tar xz-utils build-essential cmake

# COPY ./build/entrypoint.sh /entrypoint.sh
COPY ../scripts ${BASE}

ENV PATH=${BASE}/bin:${PATH}
RUN ls ${BASE} -lh -a

# RUN /entrypoint.sh ${BASE}/depends.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_make.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_m4.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_autoconf.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_libgmp.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_gdb.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_gdbm.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_zlib.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_openssl.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_cmake.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_libtool.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_ninja.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_wasi-sdk-prebuilt.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_emsdk.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_libffi.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_bzip2.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_xz.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_lcov.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_ncurses.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_readline.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_sqlite.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_tcl.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_tk.sh
RUN . ${BASE}/env.sh && ${BASE}/depends/install_wasix.sh

CMD while true; do sleep 3600; done
