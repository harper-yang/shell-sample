#!/bin/bash

# df指disk free
# du 指disk usage

# 获取某个目录中的所有文件的磁盘使用情况 -a指递归
du -a .

# 显示磁盘使用总计
du -c fileName

# 找出最大的10个文件
find . -type f -exec du -k {} \; | sort -nrk 1 | head
