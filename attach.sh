#/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

docker start l4d2server_boot
docker exec -it l4d2server_boot "/entrypoint/boot.sh"

