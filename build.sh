#!/bin/bash

DATE_START=$(date +"%s")

export CROSS_COMPILE=${HOME}/Documents/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64 && export SUBARCH=arm64
make clean && make mrproper
make lineageos_bullhead_defconfig

make -j2

DATE_END=$(date +"%s")
DIFF=$(($DATE_END - $DATE_START))

echo
echo "  Build complete $(date +"%r")"
echo "  Elapsed time: $(($DIFF / 60))m $(($DIFF % 60))s"
echo
