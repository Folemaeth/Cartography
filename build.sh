#!/bin/bash

sudo apt-get install build-essential libtcmalloc-minimal4 git cmake
sudo ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.so

rm -rf build
mkdir build
cd build
cmake ..
cmake --build .
