#!/usr/bin/env bash
#
# Reflect Defconfig Changes to GitHub
# just a bs script for me as i'm lazy to do it manually. 
# Copyright (C) 2022-2023 Mar Yvan D.

echo "Adding"
git add arch/arm64/configs/biofrost_defconfig
echo "Commit"
git commit -m "biofrost_defconfig: regen"
echo "Done!"