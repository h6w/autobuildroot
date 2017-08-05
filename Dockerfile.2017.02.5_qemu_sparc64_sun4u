FROM alpine:3.6
MAINTAINER Tudor Holton <development@tudorholton.com>
ARG VERSION
ARG CONFIG
RUN apk add --no-cache ca-certificates xz which sed make binutils build-base flex bison cmake git gcc g++ bash patch gzip bzip2 perl tar cpio python unzip rsync file bc wget \
 && mkdir /build \
 && cd /build \
 && wget -O buildroot.tar.bz2 https://buildroot.org/downloads/buildroot-2017.02.5.tar.bz2 \
 && tar xjvf buildroot.tar.bz2 \
 && rm buildroot.tar.bz2 \
 && mv buildroot-2017.02.5 buildroot \
 && cd buildroot \
 && make qemu_sparc64_sun4u_defconfig \
 && make clean \
 && make
CMD ["/bin/sh"]
