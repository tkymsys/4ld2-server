#/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

. ../docker-file/.env

cd ../docker-file > /dev/null
docker-compose up --no-start
cd - > /dev/null
