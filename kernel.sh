cd
git clone --depth=1 https://github.com/nhAsif/kernel_xiaomi_rosy.git -b twelve kernel
cd kernel 
git remote add foo https://android.googlesource.com/kernel/common/
git fetch foo
