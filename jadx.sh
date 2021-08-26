#!/usr/bin/env bash

axel -n 10 -o rom.zip https://bigota.d.miui.com/V12.5.4.0.RKMCNXM/miui_ODIN_V12.5.4.0.RKMCNXM_eacb5c9e71_11.0.zip

./tools/rom.sh rom.zip out

rm -r out/rom

./tools/tools/jadx.sh out/rom-deodexed rom-decompiled-jadx

find rom-decompiled-jadx -name classes*.dex | xargs rm

