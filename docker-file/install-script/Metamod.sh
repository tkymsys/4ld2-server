#!/bin/bash

# Metamodのインストール
# https://www.sourcemm.net/
cd ${WORK_DIR} > /dev/null
mkdir Metamod
cd Metamod > /dev/null
wget https://mms.alliedmods.net/mmsdrop/1.10/mmsource-1.10.7-git971-linux.tar.gz
tar xf mmsource-1.10.7-git971-linux.tar.gz
chmod -R +rx *
cp -rf addons "${SERVER_DIR}/left4dead2"
