#/bin/bash

function printBuildArg () {
  for line in `cat ${1}`
  do
    key=`echo ${line} | awk -F"=" '{print $1}'`
    value=`echo ${line} | awk -F"=" '{print $2}'`
    echo -n " --build-arg ${key}=${value}"
  done
}


SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR} > /dev/null

. ../docker-file/.env

buildArg=`printBuildArg "${SCRIPT_DIR}/../docker-file/.env"`
Dokcerfile_steamcmd=`wget -q -O - "https://raw.githubusercontent.com/CM2Walki/steamcmd/eb70cee29a2a2ed44596f1e305f92abc365209bf/buster/Dockerfile"`

cd ../docker-file > /dev/null
echo "${Dokcerfile_steamcmd}" | docker build -t l4d2server_steamcmd:${IMAGE_VERSION} --build-arg PUID=${SERVER_UID} -
docker build -t l4d2server_base:${IMAGE_VERSION}  ${buildArg} -f Dockerfile_base  .
docker build -t l4d2server_setup:${IMAGE_VERSION} ${buildArg} -f Dockerfile_setup .
docker build -t l4d2server_boot:${IMAGE_VERSION}  ${buildArg} -f Dockerfile_boot  .
cd - > /dev/null
