#!/bin/bash

export ARCH=arm
#export CROSS_COMPILE=/opt/toolchains/arm-eabi-4.7/bin/arm-eabi-
#export CROSS_COMPILE=~/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
export CROSS_COMPILE=~/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
#export CROSS_COMPILE=~/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-

rm -rf output
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8974_sec_viennalteeur_cm_defconfig msm8974_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output -j6
#make -C $(pwd) O=output CONFIG_DEBUG_SECTION_MISMATCH=y
