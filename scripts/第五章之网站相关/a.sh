#!/bin/bash

# 下载文件
wget xxx
# curl 下载，curl不将下载数据写入文件，因此要重定向到文件
curl xxx > aaa.txt

# --silent不显示进度信息 -o，用于蒋下载数据写入文件，而非写入标准输出,如果需要显示进度条，用--progress代替--silent
curl https://harper-yang.github.io --silent -o index.html

# 设置用户代理，
curl URL --user-agent "Mozilla/5.0"
# -H设置http头部信息
curl -H "Host:www.baidu.com"

# 使用post请求,-X 执行特殊的请求方式，--data，body中的参数,--data等同于-d
curl -H "Content-Type:application/json" -X POST --data '{"username":"yangzhao}' https://harper-yang.github.io
