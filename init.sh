#!/bin/sh
rm -rf ./rule
mkdir -p ./rule

curl https://gcore.jsdelivr.net/gh/TG-Twilight/AWAvenue-Ads-Rule@main/Filters/AWAvenue-Ads-Rule-Mosdns_v5.txt > ./rule/awa-ad.txt
curl https://gcore.jsdelivr.net/gh/privacy-protection-tools/anti-AD@master/anti-ad-domains.txt > ./rule/anti-ad.txt
curl https://gcore.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/reject-list.txt > ./rule/ad.txt
curl https://gcore.jsdelivr.net/gh/Hackl0us/GeoIP2-CN@release/CN-ip-cidr.txt > ./rule/geoip.txt
echo 'update finished'