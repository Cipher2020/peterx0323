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

#echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default



#echo 'src-git smpackage https://github.com/syb999/openwrt-19.07.1/tree/master/package/network/services' >>feeds.conf.default
git clone --recursive https://github.com/syb999/openwrt-19.07.1/tree/master/package/network/services.git
