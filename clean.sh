#!/bin/bash

folder="./static/assets/images/logos"
file_list="/mnt/work/navigation/data/webstack.yml"

# 切换到文件夹目录
cd "$folder" || exit

# 遍历文件夹中的文件
for file in *; do
    # 检查文件名是否在文档中
    if ! grep -q "$file" "$file_list"; then
        echo "文件 $file 不存在于文档 $file_list 中"
    fi
done
