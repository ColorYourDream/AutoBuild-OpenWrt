#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.8.5/g' openwrt/package/base-files/files/bin/config_generate
# add ssrplus
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# add passwall
git clone https://github.com/weweyes/luci-app-passwall.git package/lean/luci-app-passwall
git clone https://github.com/weweyes/small.git package/lean/small
# add app
git clone https://github.com/weweyes/OpenClash.git package/lean/luci-app-openclash
git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
git clone https://github.com/littletao08/luci-app-eqos.git package/lean/luci-app-eqos
git clone https://github.com/destan19/OpenAppFilter.git package/lean/luci-app-oaf
