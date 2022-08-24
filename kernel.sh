#!/bin/bash
sudo apt install -y python3 pip
git clone https://github.com/CyberJalagam/android_rom_building_scripts scripts && cd scripts && chmod +x build.sh && echo "1 13" | bash build.sh

