#/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

cd docker-file > /dev/null
docker-compose stop l4d2server_boot
cd - > /dev/null
