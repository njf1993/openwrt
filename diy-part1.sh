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
# git clone https://github.com/fw876/helloworld.git package/luci-app-ssr-plus

# 添加PassWall
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall

# 添加bypass 依赖
# svn co https://github.com/garypang13/openwrt-packages/trunk/smartdns
# svn co https://github.com/garypang13/openwrt-packages/trunk/tcping
git clone https://github.com/garypang13/openwrt-packages/tree/master/lua-maxminddb package/lua-maxminddb

# 添加bypass
git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass

# 添加dnsfilter
git clone https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter

# 添加luci-theme-argon
rm -rf ../lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config

# 添加smartdns
# git clone https://github.com/pymumu/smartdns.git package/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
