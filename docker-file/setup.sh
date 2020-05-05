#!/bin/bash

STEAM_DIR="/home/${SERVER_UNAME}/Steam"
SERVER_DIR="${STEAM_DIR}/steamapps/common/Left 4 Dead 2 Dedicated Server"

mkdir ${STEAM_DIR}

# SteamCMDのインストール
cd ${STEAM_DIR}
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

# サーバーセットアップ
cd ${STEAM_DIR}
./steamcmd.sh +login anonymous +app_update 222860 +quit
cp -p /tmp/server.cfg "${SERVER_DIR}/left4dead2/cfg"
ln -s steamcmd/linux32/steamclient.so ~/.steam/sdk32/steamclient.so

# Metamodのインストール
cd > /dev/null
mkdir metamod
cd metamod > /dev/null
wget https://mms.alliedmods.net/mmsdrop/1.10/mmsource-1.10.7-git971-linux.tar.gz
tar xf mmsource-1.10.7-git971-linux.tar.gz
chmod -R 755 *
cp -rf addons "${SERVER_DIR}/left4dead2"

# SourceModのインストール
cd > /dev/null
mkdir sourcemod
cd sourcemod > /dev/null
wget https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6508-linux.tar.gz
tar xf sourcemod-1.11.0-git6508-linux.tar.gz
chmod -R 755 *
cp -rf addons "${SERVER_DIR}/left4dead2"
# cp -rfp cfg "${SERVER_DIR}/left4dead2"

