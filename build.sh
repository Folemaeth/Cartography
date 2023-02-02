#!/bin/bash
pkill Cartography

rm -rf build
mkdir build
cmake -S . -B ./build
cmake --build ./build
cp -rf ./templates ./build/templates
xdg-open http://0.0.0.0:8080/main
./build/Cartography

