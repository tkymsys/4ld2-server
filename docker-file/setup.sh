#!/bin/bash

STEAMCMD_DIR="/home/${SERVER_UNAME}/steamcmd"
SERVER_DIR="/home/${SERVER_UNAME}/Steam/steamapps/common/Left 4 Dead 2 Dedicated Server"
WORK_DIR="/home/${SERVER_UNAME}/work"

mkdir ${STEAMCMD_DIR}
mkdir "${WORK_DIR}"

# SteamCMDのインストール
cd "${STEAMCMD_DIR}"
wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxf -

# サーバーセットアップ
cd ${STEAMCMD_DIR}
./steamcmd.sh +login anonymous +app_update 222860 +quit
cp -p /tmp/server.cfg "${SERVER_DIR}/left4dead2/cfg"
ln -s steamcmd/linux32/steamclient.so ~/.steam/sdk32/steamclient.so

# Metamodのインストール
cd ${WORK_DIR} > /dev/null
mkdir metamod
cd metamod > /dev/null
wget https://mms.alliedmods.net/mmsdrop/1.10/mmsource-1.10.7-git971-linux.tar.gz
tar xf mmsource-1.10.7-git971-linux.tar.gz
chmod -R +rx *
cp -rf addons "${SERVER_DIR}/left4dead2"

# SourceModのインストール
cd ${WORK_DIR} > /dev/null
mkdir sourcemod
cd sourcemod > /dev/null
wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6488-linux.tar.gz
tar xf sourcemod-1.10.0-git6488-linux.tar.gz
chmod -R +rx *
cp -rf addons "${SERVER_DIR}/left4dead2"
cp -rf cfg "${SERVER_DIR}/left4dead2"

# L4DToolZのインストール
cd ${WORK_DIR} > /dev/null
mkdir l4dtoolz
cd l4dtoolz > /dev/null
wget "https://forums.alliedmods.net/attachment.php?attachmentid=122230&d=1373147952" -O "l4dtoolz(L4D2)-1.0.0.9h.zip"
unzip "l4dtoolz(L4D2)-1.0.0.9h.zip"
chmod -R +rx *
cp -rf l4dtoolz "${SERVER_DIR}/left4dead2/addons"
cp -rf metamod "${SERVER_DIR}/left4dead2/addons"

# LEFT12DEADのインストール
cd ${WORK_DIR} > /dev/null
mkdir left12dead
cd left12dead > /dev/null
wget "http://www.sourcemod.net/vbcompiler.php?file_id=65668" -O "l4d_players.smx"
chmod -R +rx *
cp l4d_players.smx "${SERVER_DIR}/left4dead2/addons/sourcemod/plugins"

# GameModeKeepのインストール
cd ${WORK_DIR} > /dev/null
mkdir gamemodekeep
cd gamemodekeep > /dev/null
wget "http://www.sourcemod.net/vbcompiler.php?file_id=64988" -O "l4d_gamemodekeep.smx"
chmod -R +rx *
cp "l4d_gamemodekeep.smx" "${SERVER_DIR}/left4dead2/addons/sourcemod/plugins"

