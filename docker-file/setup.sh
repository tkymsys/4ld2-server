#!/bin/bash

STEAMCMD_DIR="/home/${SERVER_UNAME}/steamcmd"
SERVER_DIR="${STEAMCMD_DIR}/steamapps/common/Left 4 Dead 2 Dedicated Server"
WORK_DIR="/home/${SERVER_UNAME}/work"

mkdir "${WORK_DIR}"

# サーバーセットアップ
cd ${STEAMCMD_DIR}
./steamcmd.sh +login anonymous +app_update 222860 +quit
cp -p /tmp/server.cfg "${SERVER_DIR}/left4dead2/cfg"
# ln -s steamcmd/linux32/steamclient.so ~/.steam/sdk32/steamclient.so

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
wget https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6508-linux.tar.gz
tar xf sourcemod-1.11.0-git6508-linux.tar.gz
chmod -R +rx *
cp -rf addons "${SERVER_DIR}/left4dead2"
# cp -rfp cfg "${SERVER_DIR}/left4dead2"

