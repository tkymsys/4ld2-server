#!/bin/bash

# L4D2 Bug Fixesのインストール
# https://forums.alliedmods.net/showthread.php?t=121945
cd ${WORK_DIR} > /dev/null
mkdir L4D2BugFixes
cd L4D2BugFixes > /dev/null
wget "https://forums.alliedmods.net/attachment.php?attachmentid=123846&d=1375787396" -O "l4d2_bugfixes.zip"
unzip "l4d2_bugfixes.zip"
chmod -R +rx *
cp -rf addons "${SERVER_DIR}/left4dead2"

