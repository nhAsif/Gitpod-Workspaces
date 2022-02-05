#!/usr/bin/env bash

export USE_CCACHE=1
export CCACHE_DIR="$HOME/.ccache"
export TZ=Asia/Dhaka
export DEVICE_CODENAME=rosy
export ANYKERNEL=https://github.com/Pulkit077/AnyKernel3
export TG_TOKEN=5082048108:AAGqpIINnnIEVzPaYD5U48OnZsB4FvFcB_c
export TG_CHAT_ID=-615560513
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

curl https://raw.githubusercontent.com/levi3609/Gitpod-Workspaces/main/eleven/download.sh | bash
curl https://raw.githubusercontent.com/levi3609/Gitpod-Workspaces/main/eleven/gcc.sh | bash
curl https://github.com/levi3609/Gitpod-Workspaces/blob/main/eleven/done.sh | bash
