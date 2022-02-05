#!/usr/bin/env bash

export USE_CCACHE=1
export CCACHE_DIR="$HOME/.ccache"
export TZ=Asia/Jakarta
export DEVICE_CODENAME=rosy
export ANYKERNEL=https://github.com/NFS-projects/AnyKernel3
export TG_TOKEN=2077072464:AAEx-N96E2mieWlqx43TCZKrfodCAbJPlWI
export TG_CHAT_ID=-1001593782892
export BUILD_USER=xiaomi
export BUILD_HOST=rosy
export BOT_MSG_URL="https://api.telegram.org/bot$TG_TOKEN/sendMessage"
export BOT_MSG_URL2="https://api.telegram.org/bot$TG_TOKEN"

tg_post_msg() {
  curl -s -X POST "$BOT_MSG_URL" -d chat_id="$TG_CHAT_ID" \
  -d "disable_web_page_preview=true" \
  -d "parse_mode=html" \
  -d text="$1"

}

bash eleven/download.sh
bash eleven/clang
bash eleven/rm.sh
bash eleven/gcc.sh
bash eleven/done.sh
