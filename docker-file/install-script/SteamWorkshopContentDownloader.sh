#!/bin/bash

# Steam Workshop Content Downloaderのインストール
# https://github.com/Geam/steam_workshop_downloader
cd ${WORK_DIR} > /dev/null
mkdir SteamWorkshopContentDownloader
cd SteamWorkshopContentDownloader > /dev/null
wget "https://raw.githubusercontent.com/Geam/steam_workshop_downloader/adc9d54470f0a2884fa9849aec5e6caa3fcb4cd3/workshop.py" -O "workshop.py"

chmod -R +rx *
cp workshop.py "${SERVER_DIR}/left4dead2/addons"


