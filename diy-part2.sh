#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 更改默认IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

# 更改管理密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/$1$LrPFEvqu$gJIceWv7kbIWXHxtFI89Y.:18539/g' package/lean/default-settings/files/zzz-default-settings

# 添加argon主题
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
rm -rf ../lean/luci-theme-argon

# 添加京东自动签到
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus

# 更改主题
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ../feeds/luci/collections/luci/Makefile
