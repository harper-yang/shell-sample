#!/bin/bash

# find 命令会沿着文件层次结构向下遍历，匹配符合条件的文件，并执行相应的操作 find base_dir

# .z指当前目录，-print 指打印出匹配的文件名
find . -print

# 根据文件名或正则表达式匹配搜索 -name ,-iname（忽略大小写）
find /data/project -name '*.txt' -print

## 匹配多个条件
find . \( -name "*.txt" -o -name "*.pdf" \) -print

# -path 可以使用通配符来匹配文件路径和文件
find /data/project -path "*harper*" -print

# 否定参数，find可以用"!" 否定参数的含义
find . | -name "*.txt" -print

# 基于目录深度的搜索 -maxdepth -mindepth
find . -maxdepth 1 -type f -print 

# 根据文件类型搜索,-type
# 只列出所有的目录
find . -type d -print
# 只列出所有的文件
find . -type f -print
# 只列出符号链接
find . -type l -print

# 根据文件时间搜索  -atime：最近一次访问文件的时间，-mtime:最后一次修改的时间，-ctime:权限最后一次更改的时间，单位是天，前面带+号表示大于，-号表示小于
# 打印出最近七天内被访问的文件
find . -type f -atime -7 -print
# 基于分钟的计量单位 -amin ，-mmin,-cmin 
# 打印出访问时间超过7分钟的文件
find . -type f -amin +7 -print


# 基于文件大小的搜索
find . -type f -size + 2k
# 计量单位 k：kb，b：块，c:字节，w:2字节，

# 删除匹配的文件
find . -type f -name "*.swp" -delete

# 基于权限的搜索
find . -type f -perm 644 -print

# 根据文件的所有权搜索
find .-type f -user harper -print

# 结合-exec执行命令，{}是一个特殊的字符串，与-exec结合使用，对于每一个匹配的文件，{}会被替换成相应的文件名

# 将本目录下的所有权为root的文件更改为harper的
find . -type f -user root -exec chown harper {} \;
# 将10天千的.txt文件复制到old目录中
find . -type f -mtime +10 -name "*.txt" -exec cp {} old \;









