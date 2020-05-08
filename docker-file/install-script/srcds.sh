#!/bin/bash

# サーバーセットアップ
cd ${STEAMCMD_DIR}
./steamcmd.sh +login anonymous +force_install_dir "${SERVER_DIR}" +app_update 222860 +quit
cp -p /tmp/server.cfg "${SERVER_DIR}/left4dead2/cfg"
mkdir ~/.steam/sdk32
ln -s linux32/steamclient.so ~/.steam/sdk32/steamclient.so
