#!/bin/sh

# curl https://gcore.jsdelivr.net/gh/TG-Twilight/AWAvenue-Ads-Rule@main/Filters/AWAvenue-Ads-Rule-Mosdns_v5.txt > ./rule/awa-ad.txt
# curl https://gcore.jsdelivr.net/gh/privacy-protection-tools/anti-AD@master/anti-ad-domains.txt > ./rule/anti-ad.txt
# curl https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/reject-list.txt > ./rule/ad.txt
curl https://gcore.jsdelivr.net/gh/Hackl0us/GeoIP2-CN@release/CN-ip-cidr.txt > ./rule/geoip.txt
curl https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/direct-list.txt > ./rule/direct-list.txt
curl https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/china-list.txt > ./rule/china-list.txt
curl https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/apple-cn.txt > ./rule/apple-cn.txt
curl https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/gfw.txt > ./rule/gfw.txt
curl https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/proxy-list.txt > ./rule/proxy-list.txt

echo 'update finished'