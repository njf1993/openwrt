#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 添加SSR-Plus
git clone https://github.com/fw876/helloworld.git package/luci-app-ssr-plus

# 添加PassWall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall

# 添加smartdns
# git clone https://github.com/pymumu/smartdns.git package/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
