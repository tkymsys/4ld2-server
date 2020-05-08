#!/bin/bash

export STEAMCMD_DIR="/home/${SERVER_UNAME}/steamcmd"
export SERVER_DIR="/home/${SERVER_UNAME}/server"
export INSTALL_SCRIPT_DIR="/home/${SERVER_UNAME}/install-script"
export WORK_DIR="/home/${SERVER_UNAME}/work"

mkdir "${STEAMCMD_DIR}"
mkdir "${SERVER_DIR}"
mkdir "${INSTALL_SCRIPT_DIR}"
mkdir "${WORK_DIR}"

cp /tmp/install-script/* "${INSTALL_SCRIPT_DIR}"
cp /tmp/install-script.list "/home/${SERVER_UNAME}"

for script in `cat /home/${SERVER_UNAME}/install-script.list`
do
  ${INSTALL_SCRIPT_DIR}/${script}
done
