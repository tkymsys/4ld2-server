#!/bin/bash

# ABMのインストール
# https://forums.alliedmods.net/showthread.php?t=291562
cd ${WORK_DIR} > /dev/null
mkdir ABM
cd ABM > /dev/null
wget "https://forums.alliedmods.net/attachment.php?attachmentid=168279&d=1517350697" -O "abm.txt"
wget "https://forums.alliedmods.net/attachment.php?attachmentid=168280&d=1517350697" -O "abm.smx"
chmod -R +rx *
cp -f "abm.txt" "${SERVER_DIR}/left4dead2/addons/sourcemod/gamedata"
cp -f "abm.smx" "${SERVER_DIR}/left4dead2/addons/sourcemod/plugins"

