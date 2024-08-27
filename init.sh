#!/bin/sh
path="./rule"

rm -rf $path
# 创建 rule 文件夹
mkdir -p $path
# List of URLs
URLS="
# https://cdn.jsdelivr.net/gh/Hackl0us/GeoIP2-CN@release/CN-ip-cidr.txt
https://anti-ad.net/domains.txt
https://cdn.jsdelivr.net/gh/MetaCubeX/meta-rules-dat@release/geosite.dat
https://gcore.jsdelivr.net/gh/TG-Twilight/AWAvenue-Ads-Rule@main/Filters/AWAvenue-Ads-Rule-Mosdns_v5.txt
"

# Function to download file from URL
download() {
    url="$1"
    # Extract filename from URL
    filename=$(basename "$url")
    # Download using curl
    curl --connect-timeout 5 -m 120 --ipv4 -kfSLo "$path/$filename" "$url"
}

# Iterate over each URL in the list
echo "$URLS" | while IFS= read -r url; do
    # Skip empty lines
    [ -z "$url" ] && continue
    echo "$url"
    download "$url"
done

./v2dat unpack geosite -o ./rule -f cn -f apple -f microsoft -f 'geolocation-!cn' -f category-ads-all "$path/geosite.dat"
