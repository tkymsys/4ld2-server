#!/bin/bash

# l4d_playersのインストール
# https://forums.alliedmods.net/showthread.php?t=126857
cd ${WORK_DIR} > /dev/null
mkdir l4dplayers
cd l4dplayers > /dev/null
wget "http://www.sourcemod.net/vbcompiler.php?file_id=65668" -O "l4d_players.smx"
chmod -R +rx *
cp l4d_players.smx "${SERVER_DIR}/left4dead2/addons/sourcemod/plugins"
