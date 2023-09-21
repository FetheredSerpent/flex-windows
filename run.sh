#!/bin/sh

tar -xzf $1.tar.gz
cd $1
./configure --host=x86_64-w64-mingw32 --prefix=`pwd`/build_output \
      CC=x86_64-w64-mingw32-gcc \
      CPPFLAGS="-Wall"
make
make install

tar -czf build_output.tar.gz build_output
mv build_output.tar.gz ..
