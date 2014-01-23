#!/bin/bash

cd $(dirname $0)
PREFIX=$(pwd)

# first build flexiport
cd flexiport
rm -rf build
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make install
cd ../..

# now build hokuyoaist
cd hokuyoaist
rm -rf build
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make install
cd ../..

