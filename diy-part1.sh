#!/bin/bash
# diy-part1.sh 第一阶段：拉取第三方插件、主题源码
echo "===================== 开始拉取第三方插件 ====================="
cd openwrt

# Argon主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

# OpenClash
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash

# Lucky
git clone https://github.com/gdy666/luci-app-lucky.git package/luci-app-lucky

echo "===================== 插件拉取完成 ====================="
