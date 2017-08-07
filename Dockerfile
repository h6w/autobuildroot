FROM alpine:3.6
MAINTAINER Tudor Holton <development@tudorholton.com>
ADD download.2017.05.2 /build/download.2017.05.2
RUN apk add --no-cache ca-certificates xz which sed make binutils build-base flex bison cmake git gcc g++ bash patch gzip bzip2 perl tar cpio python unzip rsync file bc wget \
 && mkdir -p /build \
 && cd /build \
 && wget -O buildroot.tar.bz2 https://buildroot.org/downloads/buildroot-2017.05.2.tar.bz2 \
 && tar xjvf buildroot.tar.bz2 \
 && rm buildroot.tar.bz2 \
 && mv buildroot-2017.05.2 buildroot \
 && mkdir -p buildroot/dl \
 && cd buildroot/dl \
 && wget -i /build/download.2017.05.2
CMD ["/bin/sh"]
