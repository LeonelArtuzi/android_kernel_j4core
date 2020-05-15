#!/bin/bash
#/home/leonel/arm-linux-androideabi-4.9-brillo-m7-dev/bin/arm-linux-androideabi-

make clean
export ARCH=arm
export PATH=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin:$PATH

mkdir out
make -C $(pwd) O=out  CROSS_COMPILE=/disco1/leonel/arm-linux-androideabi-4.9-brillo-m7-dev/bin/arm-linux-androideabi- j4corelte_mea_open_defconfig

make -j64 -C $(pwd) O=out CROSS_COMPILE=/disco1/leonel/arm-linux-androideabi-4.9-brillo-m7-dev/bin/arm-linux-androideabi-
 
cp out/arch/arm/boot/zImage-dtb /home/leonel/leonel_kernel/AnyKernel3e/zImage-dtb
#cd /home/leonel/leonel_kernel/AnyKernel3e
#zip -r9 estavelStock-AnyKernel3.zip * -x .git README.md *placeholder
