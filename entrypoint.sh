#!/bin/sh
#
# Build snapraid from source
# 
# Env:
#    VERSION      (string)     Version to build
#

FILENAME=mergerfs-${VERSION}
URL=https://github.com/trapexit/mergerfs/releases/download/${VERSION}/${FILENAME}.tar.gz

echo "==> Downloading $FILENAME"
wget ${URL}
tar -xvf ${FILENAME}.tar.gz

echo "==> Building $FILENAME"
cd ${FILENAME}
make
make install

echo "==> Moving $FILENAME binary"
mkdir -p /output/usr/local/bin
mkdir -p /output/usr/local/sbin
cp /usr/local/bin/{mergerfs,mergerfs-fusermount} /output/usr/local/bin
cp /usr/local/sbin/mount.mergerfs /output/usr/local/sbin