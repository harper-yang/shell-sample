#!/bin/bash

declare -A fruit

# 定义数组
fruit=([apple]='111' [orange]='222')

# 获取数组中的值
echo "apple price = ${fruit[apple]}"

# 获取数组中的key
echo "${!fruit[*]}"
