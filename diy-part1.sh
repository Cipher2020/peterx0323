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
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default

echo 'src-git smpackage https://github.com/Cipher2020/small-package' >>feeds.conf.default

#git clone https://github.com/ximiTech/luci-app-msd_lite.git

#git clone --recursive https://github.com/rozhuk-im/msd_lite.git
#git clone --recursive https://github.com/syb999/openwrt-19.07.1/tree/master/package/network/services
