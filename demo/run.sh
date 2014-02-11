#!/bin/bash

cd $(dirname $0)
PREFIX=$(pwd)

export PATH=$PREFIX/bin:$PATH
export PYTHONPATH=$PREFIX/lib/python/site-packages:$PYTHONPATH
export DYLD_LIBRARY_PATH=$PREFIX/lib:$DYLD_LIBRARY_PATH
export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH

$@


