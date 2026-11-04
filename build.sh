#!/bin/bash
set -e

echo "Updating, configuring and building project"

echo "[1/3] Pulling latest changes from Git..."
git pull

echo "[2/3] Configuring CMake..."
cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug

echo "[3/3] Compiling..."
cmake --build build

echo "Done! Executable is located at: build/hw"