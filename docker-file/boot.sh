#!/bin/bash

SERVER_DIR=/home/${SERVER_UNAME}/l4d2

cd ${SERVER_DIR}
# sudo -u ${SERVER_USER} ./srcds_run -console -game left4dead2 -port 27015
# sudo -u ${SERVER_USER} ./srcds_run -console -game left4dead2 -port 27015 +maxplayers 4 +exec server.cfg +map c1m1_hotel coop
while true
do
 sleep 5
done
