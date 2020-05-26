#!/bin/bash

# 用cat进行拼接 cat file1 file2 file3
# 这行语句会拼接echo的文本和file.txt 的文本输出出来
echo 'text through stdin' | cat - file.txt

# 压缩空白行,可以将文本中的多个空行压缩成单个
cat -s file.txt

# 添加行号
cat -n file.txt


