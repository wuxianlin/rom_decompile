#!/usr/bin/env bash

axel -n 10 -o rom.zip http://sysupwrdl.vivo.com.cn/upgrade/official/officialFiles/PD1986_A_1.9.3-update-full_1599011925.zip

./tools/rom.sh rom.zip out

rm -r out/rom

./tools/tools/jadx.sh out/rom-deodexed rom-decompiled-jadx

find rom-decompiled-jadx -name classes*.dex | xargs rm

