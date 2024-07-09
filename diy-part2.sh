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
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-alpha/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/jdc/g' package/base-files/files/bin/config_generate

# Modify Wifi
#sed -i "180i set wireless.default_radio${devidx}.ssid=HiwifiX" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i "181i set wireless.default_radio${devidx}.encryption=psk2" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i "182i set wireless.default_radio${devidx}.key=987654321" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}

