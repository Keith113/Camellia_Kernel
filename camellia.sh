#!/bin/bash

if [[-d "out" ]]
then
    cd out && make clean && make distclean && make mrproper && cd ..
else
    mkdir -p out
fi

make O=out ARCH=arm64 camellia_defconfig

PATH="${HOME}(path-to-your-protonclang):${PATH}" \
make                  O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
                      -j4
