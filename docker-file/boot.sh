#!/bin/bash

SERVER_DIR="/home/${SERVER_UNAME}/server"

cd "${SERVER_DIR}"
./srcds_run -console -game left4dead2 -port 27015 +exec server.cfg
