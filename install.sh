#/bin/bash

sh sub-script/build-image.sh
sh sub-script/build-container.sh

cd docker-file > /dev/null

docker-compose up l4d2server_setup

cd - > /dev/null
