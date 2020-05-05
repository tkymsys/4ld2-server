#!/bin/bash

SERVER_DIR=/home/${SERVER_UNAME}/l4d2
STEAMCMD_DIR=/home/${SERVER_UNAME}/steamcmd

mkdir ${SERVER_DIR}
mkdir ${STEAMCMD_DIR}

# SteamCMDのインストール
cd ${STEAMCMD_DIR}
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar xf steamcmd_linux.tar.gz

# サーバーセットアップ
./steamcmd.sh +login anonymous +force_install_dir ${SERVER_DIR} +app_update 222860 +quit
cp -p /tmp/server.cfg ${SERVER_DIR}/left4dead2/cfg

# SourceModのインストール
cd > /dev/null
mkdir sourcemod
cd sourcemod > /dev/null
wget https://sm.alliedmods.net/smdrop/1.7/sourcemod-1.7.3-git5334-linux.tar.gz
tar xf sourcemod-1.7.3-git5334-linux.tar.gz
cp -rf addons ${SERVER_DIR}/left4dead2
cp -rf cfg ${SERVER_DIR}/left4dead2

# Metamodのインストール
cd > /dev/null
mkdir metamod
cd metamod > /dev/null
wget https://mms.alliedmods.net/mmsdrop/1.10/mmsource-1.10.7-git971-linux.tar.gz
tar xf mmsource-1.10.7-git971-linux.tar.gz
cp -rf addons ${SERVER_DIR}/left4dead2
cd - > /dev/null
