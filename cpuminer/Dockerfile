FROM debian:12-slim

RUN set -x \
    # Runtime dependencies.
 && apt-get update \
 && apt-get upgrade -y \
    # Build dependencies.
 && apt-get -y install \
        procps \
        automake \
        autoconf \
        curl \
        pkg-config \
        g++ \
          git \
          libcurl4-openssl-dev \
        libjansson-dev \
        libssl-dev \
        libgmp-dev \
        zlib1g-dev \
        make \
        build-essential

RUN set -x \
 && git clone --recursive https://github.com/tpruvot/cpuminer-multi.git /tmp/cpuminer \
 && cd /tmp/cpuminer \
 && ./autogen.sh \
 && extracflags="$extracflags -Ofast -flto -fuse-linker-plugin -ftree-loop-if-convert-stores" \
 && ./configure --with-crypto --with-curl CFLAGS="-O2 $extracflags -DUSE_ASM -pg" \
 && make install -j 4 \
 && strip -s cpuminer \
 && cd / \
 && apt-get purge --auto-remove -y \
        autoconf \
        automake \
        curl \
        g++ \
        git \
        make \
        pkg-config \
 && apt-get -y autoremove --purge \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /tmp/* \
 && cpuminer --cputest \
 && cpuminer --version

ENTRYPOINT ["tail", "-f", "/dev/null"]
