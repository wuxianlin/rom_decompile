#!/usr/bin/env bash

axel -n 10 -o rom.zip https://bigota.d.miui.com/21.7.7/miui_STAR_21.7.7_c370bfda9c_11.0.zip

./tools/rom.sh rom.zip out

rm -r out/rom

./tools/tools/jadx.sh out/rom-deodexed rom-decompiled-jadx

find rom-decompiled-jadx -name classes*.dex | xargs rm

