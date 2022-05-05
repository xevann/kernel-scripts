#!/usr/bin/env bash
#
# Automatic Menuconfig Script
# just a bs script for me as i'm lazy to do it manually. 
# Copyright (C) 2022-2023 Mar Yvan D.

echo "Starting Process"
export ARCH=arm64
make biofrost_defconfig
make menuconfig
echo "hmm"