#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default


#echo 'src-git smpackage https://github.com/kuoruan/luci-app-v2ray' >>feeds.conf.default
sed -i '1i src-git smpackage https://github.com/Cipher2020/small-package' feeds.conf.default
echo 'src-git easytier https://github.com/EasyTier/luci-app-easytier.git' >> feeds.conf.default
#echo 'src-git smpackage https://github.com/Cipher2020/small-package' >>feeds.conf.default
#echo 'src-git kwrt https://github.com/cipher2020/kwrt-packages' >>feeds.conf.default
#echo 'src-git gecoosac https://github.com/Cipher2020/openwrt-gecoosac' >>feeds.conf.default

./scripts/feeds update -a
rm -rf feeds/luci/applications/{luci-app-mosdns,luci-app-qBittorrent}
rm -rf feeds/packages/net/{alist,adguardhome,mosdns,smartdns,qBittorrent}
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
