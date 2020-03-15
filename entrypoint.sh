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

echo "==> Moving $FILENAME binary"
cp /${FILENAME}/build/mergerfs /output