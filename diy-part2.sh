#!/bin/bash
# diy-part2.sh 第二阶段：修改后台地址、默认密码、系统参数
echo "===================== 开始系统配置修改 ====================="
cd openwrt

# 修改默认后台IP为192.168.1.10
sed -i 's/192.168.1.1/192.168.1.10/g' package/base-files/files/bin/config_generate

# 修改默认密码为password
sed -i 's#root::0:0:root:/root:/bin/sh#root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:root:/root:/bin/sh#g' package/base-files/files/etc/shadow

# 替换默认主题为Argon
sed -i 's/bootstrap/argon/g' feeds/luci/modules/luci-base/root/etc/config/luci

echo "===================== 系统配置修改完成 ====================="
