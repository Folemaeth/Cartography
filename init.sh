#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y build-essential libtcmalloc-minimal4 git cmake libasio-dev
sudo ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.so

git clone https://github.com/Microsoft/vcpkg.git ~/vcpkg

mkdir include
cd include
git clone -b master --single-branch https://github.com/CrowCpp/Crow.git
cd Crow
mkdir build
cd build
cmake .. -DCROW_BUILD_EXAMPLES=OFF -DCROW_BUILD_TESTS=OFF
sudo make install

$SHELL
