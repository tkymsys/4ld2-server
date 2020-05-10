#!/bin/bash

# 各種Steamアドオンのインストール
# https://steamcommunity.com/sharedfiles/filedetails/?id=2091546026

cd "${SERVER_DIR}/left4dead2/addons"
python3 workshop.py ${COLLECTION_ID}

