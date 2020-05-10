#!/bin/bash

# L4D2 Gore のインストール
# https://forums.alliedmods.net/showthread.php?p=1365932?p=1365932
cd ${WORK_DIR} > /dev/null
mkdir L4D2Gore
cd L4D2Gore > /dev/null
wget "http://www.sourcemod.net/vbcompiler.php?file_id=78879" -O "L4D2Gore.smx"
unzip "L4D2Gore.smx"
chmod -R +rx *
cp L4D2Gore.smx "${SERVER_DIR}/left4dead2/addons/sourcemod/plugins"

