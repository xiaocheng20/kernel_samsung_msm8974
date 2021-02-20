#!/bin/bash
export CROSS_COMPILE=~/Desktop/Toolchain/google_gcc/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
export ARCH=arm
mkdir output
ls arch/arm/configs
read -p "choice your config : " defconfig
make O=output $defconfig -j16
make O=output -j16
