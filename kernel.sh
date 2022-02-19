git clone https://github.com/CyberJalagam/android_rom_building_scripts scripts && cd scripts && chmod +x build.sh && echo "1 13" | bash build.sh
cd ../
mkdir rom
cd rom
repo init --depth=1 --no-repo-verify -u git://github.com/Evolution-X/manifest -b ten -g default,-mips,-darwin,-notdefault
git clone https://github.com/nhAsif/local_manifest.git --depth 1 -b main .repo/local_manifests
repo sync -j$(nproc --all) -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
source build/envsetup.sh
lunch aosp_rosy-userdebug
mka bacon | tee logs.txt
