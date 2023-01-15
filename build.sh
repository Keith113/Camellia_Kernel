# script that make your life easier
# make sure to source this file and compile it using `make CC=clang`
# you can change defconfig by changing the value on config below
# do chmod +x this before using or you may experience command not found
config=camellia_defconfig

export PATH="(pathtoyourtoolchain):$PATH"
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-
export CLANG_TRIPLE=aarch64-linux-gnu
