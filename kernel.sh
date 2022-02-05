git clone https://github.com/CyberJalagam/android_rom_building_scripts scripts && cd scripts && chmod +x build.sh && echo "1 13" | bash build.sh
cd
git clone https://github.com/nhAsif/kernel_xiaomi_rosy.git -b twelve kernel
cd kernel 
git remote add foo https://android.googlesource.com/kernel/common/
git fetch foo
