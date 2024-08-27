#!/bin/sh

# 定义下载链接和文件名
# zip_file="mosdns-darwin-arm64.zip"
zip_file="mosdns-linux-arm64.zip"
url="https://github.com/IrineSistiana/mosdns/releases/latest/download/$zip_file"

# 下载压缩包
echo "Downloading $zip_file from $url..."
curl --connect-timeout 5 -m 120 --ipv4 -kfSLo "$zip_file" "$url"

# 检查下载是否成功
if [ $? -ne 0 ]; then
    echo "Failed to download $zip_file"
    exit 1
fi

# 解压压缩包到临时目录
temp_dir=$(mktemp -d)
echo "Extracting $zip_file to $temp_dir..."
unzip -o "$zip_file" -d "$temp_dir"

# 检查解压是否成功
if [ $? -ne 0 ]; then
    echo "Failed to extract $zip_file"
    rm -rf "$temp_dir"
    exit 1
fi

# 提取 mosdns 文件到当前位置
if [ -f "$temp_dir/mosdns" ]; then
    echo "Moving mosdns to current directory..."
    mv -f "$temp_dir/mosdns" ./
else
    echo "mosdns file not found in the extracted content"
    rm -rf "$temp_dir"
    exit 1
fi

# 删除下载的压缩包和临时目录
echo "Cleaning up..."
rm -f "$zip_file"
rm -rf "$temp_dir"

echo "Done."