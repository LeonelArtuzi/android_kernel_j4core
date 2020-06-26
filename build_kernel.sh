#!/bin/bash
#/home/leonel/arm-linux-androideabi-4.9-brillo-m7-dev/bin/arm-linux-androideabi-

make clean
export ARCH=arm
export PATH=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin:$PATH

mkdir out
make -C $(pwd) O=out  CROSS_COMPILE=/severino/bkp_disco1/arm-linux-androideabi-4.9-brillo-m7-dev/bin/arm-linux-androideabi- j4corelte_mea_open_defconfig

make -j64 -C $(pwd) O=out CROSS_COMPILE=/severino/bkp_disco1/arm-linux-androideabi-4.9-brillo-m7-dev/bin/arm-linux-androideabi-
 
cp out/arch/arm/boot/zImage-dtb /disco1/KERNEL_J4C/AnyKernel3
cd /disco1/KERNEL_J4C/AnyKernel3
rm -f teste.zip
zip -r9 teste.zip * -x .git README.md *placeholder
