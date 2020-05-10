#!/bin/bash

# Infected Bots Controlのインストール
# https://forums.alliedmods.net/showthread.php?p=893938
# https://forums.alliedmods.net/showpost.php?p=2699180&postcount=1370
cd ${WORK_DIR} > /dev/null
mkdir InfectedBotsControl
cd InfectedBotsControl > /dev/null
wget "https://raw.githubusercontent.com/fbef0102/L4D2-Plugins/abd02439be629875d01a039e2f10624befbad6f0/l4dinfectedbots/gamedata/l4dinfectedbots.txt" -O "l4dinfectedbots.txt"
wget "https://github.com/fbef0102/L4D2-Plugins/raw/abd02439be629875d01a039e2f10624befbad6f0/l4dinfectedbots/plugins/l4dinfectedbots.smx" -O "l4dinfectedbots.smx"
wget "https://raw.githubusercontent.com/fbef0102/L4D2-Plugins/abd02439be629875d01a039e2f10624befbad6f0/l4dinfectedbots/scripting/l4dinfectedbots.sp" -O "l4dinfectedbots.sp"

chmod -R +rx *
cp l4dinfectedbots.txt "${SERVER_DIR}/left4dead2/addons/sourcemod/gamedata"
cp l4dinfectedbots.smx "${SERVER_DIR}/left4dead2/addons/sourcemod/plugins"
cp l4dinfectedbots.sp  "${SERVER_DIR}/left4dead2/addons/sourcemod/scripting"


