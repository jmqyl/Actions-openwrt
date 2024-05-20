#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: lede_diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default
#echo 'src-git Boos4721 https://github.com/Boos4721/OpenWrt-Packages' >>feeds.conf.default
echo 'src-git jmqyl https://github.com/jmqyl/openwrt-package' >>feeds.conf.default

#luci-app-serverchan
rm -rf feeds/luci/applications/luci-app-serverchan
#cp -af feeds/jmqyl/luci-app-serverchan feeds/luci/applications/luci-app-serverchan
git clone -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush feeds/luci/applications/luci-app-serverchan

#luci-app-msd_lite
rm -rf feeds/luci/applications/luci-app-msd_lite
git clone https://github.com/hejiadong0608/luci-app-msd_lite feeds/luci/applications/luci-app-msd_lite

#luci-app-xupnpd
rm -rf feeds/luci/applications/luci-app-xupnpd
git clone https://github.com/jarod360/luci-app-xupnpd feeds/luci/applications/luci-app-xupnpd
