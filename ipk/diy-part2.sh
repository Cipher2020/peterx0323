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
sed -i 's/192.168.5.1/192.168.6.1/g' ./package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-alpha/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/openwrt/CR6609/g' ./package/base-files/files/bin/config_generate

# Modify Wifi
#sed -i 's/ImmortalWrt/HiwifiX/g' ./package/network/config/wifi-scripts/files/lib/wifi/mac80211.sh
#sed -i 's/none/psk2/g' ./package/network/config/wifi-scripts/files/lib/wifi/mac80211.sh
#sed -i '88i set wireless.default_radio${devidx}.key=987654321' ./package/network/config/wifi-scripts/files/lib/wifi/mac80211.sh
#sed -i "186i set wireless.default_radio${devidx}.key=987654321" ./package/network/config/wifi-scripts/files/lib/wifi/mac80211.sh
#rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}

sed -i 's/OpenWrt/HiwifiX/g' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/none/psk2/g' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '186i set wireless.default_radio${devidx}.key=987654321' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i "186i set wireless.default_radio${devidx}.key=987654321" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
#rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb,msd_lite,luci-app-msd_lite}

rm -rf feeds/packages/net/msd_lite
git clone https://github.com/syb999/openwrt-19.07.1/tree/master/package/network/services/msd_lite/luci-app-msd_lite feeds/luci/applications/luci-app-msd_lite
git clone https://github.com/syb999/openwrt-19.07.1/tree/master/package/network/services/msd_lite feeds/packages/net/msd_lite
