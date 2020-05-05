#!/bin/bash

STEAM_DIR="/home/${SERVER_UNAME}/Steam"
SERVER_DIR="${STEAM_DIR}/steamapps/common/Left 4 Dead 2 Dedicated Server"

cd "${SERVER_DIR}"
./srcds_run -console -game left4dead2 -port 27015 +exec server.cfg
