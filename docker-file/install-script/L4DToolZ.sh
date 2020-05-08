#!/bin/bash

# L4DToolZのインストール
# https://forums.alliedmods.net/showthread.php?t=93600
cd ${WORK_DIR} > /dev/null
mkdir L4DToolZ
cd L4DToolZ > /dev/null
wget "https://forums.alliedmods.net/attachment.php?attachmentid=122230&d=1373147952" -O "l4dtoolz(L4D2)-1.0.0.9h.zip"
unzip "l4dtoolz(L4D2)-1.0.0.9h.zip"
# wget "https://forums.alliedmods.net/attachment.php?attachmentid=77028&d=1289329169" -O "l4dtoolz-fix.zip"
# unzip "l4dtoolz-fix.zip"
# rm -f l4dtoolz/l4dtoolz_mm.so
# mv l4dtoolz/l4dtoolz_mm_i486.so l4dtoolz/l4dtoolz_mm.so
chmod -R +rx *
cp -rf l4dtoolz "${SERVER_DIR}/left4dead2/addons"
cp -rf metamod "${SERVER_DIR}/left4dead2/addons"
