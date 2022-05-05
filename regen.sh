#!/usr/bin/env bash
#
# Automatic Defconfig Regeneration Script
# just a bs script for those who are really lazy to regen defconfigs. 
# Copyright (C) 2022-2023 Mar Yvan D.

echo "Process Started."
make ARCH=arm64 CC=clang biofrost_defconfig
echo "Reflecting .config changes to device defconfig"
cp .config arch/arm64/configs/biofrost_defconfig
echo "Preparing to push as a commit"
git add arch/arm64/configs/biofrost_defconfig
echo "Pushing as a commit to GitHub"
git commit -m "biofrost_defconfig: regen"
echo "Done!"