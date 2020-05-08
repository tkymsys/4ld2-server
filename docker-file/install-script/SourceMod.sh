#!/bin/bash

# SourceModのインストール
# https://www.sourcemod.net/
cd ${WORK_DIR} > /dev/null
mkdir SourceMod
cd SourceMod > /dev/null
wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6488-linux.tar.gz
tar xf sourcemod-1.10.0-git6488-linux.tar.gz
chmod -R +rx *
cp -rf addons "${SERVER_DIR}/left4dead2"
cp -rf cfg "${SERVER_DIR}/left4dead2"

