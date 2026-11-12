#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
# sed -i 's/OpenWrt/Jdc/g' package/base-files/files/bin/config_generate

# Modify Wifi
# sed -i 's/OpenWrt/HiwifiX-5/g' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i 's/none/psk2/g' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i '186i set wireless.default_radio${devidx}.key=987654321' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i "186i set wireless.default_radio${devidx}.key=987654321" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
rm -rf feeds/smpackage/clashoo
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb,filebrowser,clashoo}
# 进入qbittorrent包目录，重置为5.1.4
cd feeds/smpackage/qbittorrent
rm -rf src
# 这里用5.1.4，你之前成功的版本
git clone --depth=1 --branch v5.1.2 https://github.com/qbittorrent/qBittorrent src

# 删掉 openlist，不再编译
rm -rf feeds/packages/net/openlist

# diy-part2.sh，feeds update之后执行
mkdir -p feeds/custom
cd feeds/custom
# 只clone filebrowser和luci-app-filebrowser
rm -rf filebrowser luci-app-filebrowser
git clone --depth=1 https://github.com/kenzok8/openwrt-packages tmpfb
cp -r tmpfb/filebrowser ./
cp -r tmpfb/luci-app-filebrowser ./
rm -rf tmpfb
cd ../../

# 注册这个custom feed
sed -i '$a src-link custom feeds/custom' feeds.conf.default



rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang
