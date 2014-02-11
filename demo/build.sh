#!/bin/bash

cd $(dirname $0)
PREFIX=$(pwd)

git submodule update --init --recursive

# first build flexiport
cd flexiport
rm -rf build
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_DOCUMENTATION=OFF ..
make install
cd ../..

# now build hokuyoaist
cd hokuyoaist
rm -rf build
mkdir build
cd build
#cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_DOCUMENTATION=OFF -DPYTHON_EXECUTABLE=`which python` -DPYTHON_CUSTOM_FRAMEWORK=/usr/local/Frameworks/Python.framework ..
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_DOCUMENTATION=OFF -DPYTHON_EXECUTABLE=`which python2` ..
make install
cd ../..

