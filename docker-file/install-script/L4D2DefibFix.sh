#!/bin/bash

# L4D2 Defib Fixのインストール
# https://forums.alliedmods.net/showthread.php?t=118723
cd ${WORK_DIR} > /dev/null
mkdir L4D2DefibFix
cd L4D2DefibFix > /dev/null
wget "https://forums.alliedmods.net/attachment.php?attachmentid=122507&d=1373605628" -O "l4d2_defibfix.zip"
unzip "l4d2_bugfixes.zip"
chmod -R +rx *
cp -rf addons "${SERVER_DIR}/left4dead2"

