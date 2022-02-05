#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: Lunseil
#=================================================
#1. 修改默认的IP以
sed -i 's/192.168.1.1/10.10.10.222/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改主机名
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='Soft_Routes'' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. 设置密码为空
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. 版本号里显示一个自己的名字
#sed -i "s/OpenWrt /Lunseil build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" openwrt/package/lean/default-settings/files/zzz-default-settings

#5. 修改WAN口为PPPOE
#sed -i 's/username/5161851ST@MYADSL/g' openwrt/package/base-files/files/bin/config_generate
#sed -i 's/password/？？？？？？/g' openwrt/package/base-files/files/bin/config_generate

#6. 修改默认主题
sed -i 's/bootstrap/neobird/g' openwrt/package/base-files/files/bin/config_generate
