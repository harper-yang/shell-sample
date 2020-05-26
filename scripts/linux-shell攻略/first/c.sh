#!/bin/bash

declare -A frute

# 定义数组
frute=([apple]='111' [orange]='222')

# 获取数组中的值
echo "apple price = ${frute[apple]}"

# 获取数组中的key
echo "${!frute[*]}"
