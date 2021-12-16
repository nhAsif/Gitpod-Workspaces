#!/usr/bin/env bash

echo "Downloading few Dependecies . . ."
# Kernel Sources
git clone --depth=1 https://github.com/AnGgIt88/kernel_xiaomi_rosy -b eleven $DEVICE_CODENAME
# Toolchain
git clone --depth=1 https://github.com/AnGgIt88/gcc-arm GCC32
git clone --depth=1 https://github.com/AnGgIt88/gcc-arm64 GCC64
git clone --depth=1 https://github.com/AnGgIt88/Finix-Clang -b 14.x CLANG
