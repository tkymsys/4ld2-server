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
# ./steamcmd.sh +login anonymous +force_install_dir ${SERVER_DIR} +app_update 222860 +quit
# cp -p /tmp/server.cfg ${SERVER_DIR}/left4dead2/cfg

while true
do
  sleep 10
done
