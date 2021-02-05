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

# 添加bypass
git clone --depth=1 https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass

# 添加bypass 依赖
svn co https://github.com/garypang13/openwrt-packages/trunk/smartdns package/smartdns
svn co https://github.com/garypang13/openwrt-packages/trunk/tcping package/tcping
svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb package/lua-maxminddb
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

# 添加dnsfilter
git clone --depth=1 https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter

# 添加luci-theme-argon
rm -rf ../lean/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config

# 添加smartdns
# git clone https://github.com/pymumu/smartdns.git package/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
