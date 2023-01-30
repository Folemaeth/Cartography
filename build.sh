#!/bin/bash
pkill Cartography

rm -rf build
mkdir build
cd build
cmake ..
cmake --build .
cp -rf ../templates ./templates
xdg-open http://0.0.0.0:8080
./Cartography
