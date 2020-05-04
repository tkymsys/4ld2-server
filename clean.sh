#/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

. ./docker-file/.env

cd docker-file > /dev/null
docker-compose down --rmi all --volumes
# docker rmi l4d2server_base:${IMAGE_VERSION}
cd - > /dev/null
