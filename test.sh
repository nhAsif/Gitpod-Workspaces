git config --global user.email "jarbull87@gmail.com"
git config --global user.name "AnGgIt88"
mkdir xdroid-CAF && cd xdroid-CAF
repo init --depth=1 --no-repo-verify -u https://github.com/xdroid-CAF/xd_manifest.git -b eleven -g default,-mips,-darwin,-notdefault
git clone https://github.com/AnGgIt88/local_manifest.git --depth 1 -b eleven .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j16
