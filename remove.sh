#/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

cd docker-file >/dev/null
. ./.env
docker-compose down
docker rmi l4d2server_boot:${IMAGE_VERSION} l4d2server_setup:${IMAGE_VERSION} l4d2server_base:${IMAGE_VERSION}
cd - >/dev/null
