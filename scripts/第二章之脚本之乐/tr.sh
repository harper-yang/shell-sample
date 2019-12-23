#!/bin/bash

# tr是转换命令，可以对标准输入的字符进行替换，删除，和压缩，将一组字符转换成另一组字符
# tr [option] set1 set2 set 为字符集

# 将字符由大写转成小写
echo "HELLO" | tr "A-Z" "a-z"

# 用tr删除字符，-d是删除，不需要写set2
echo "hello 123 world 456" | tr -d '0-9'

# 字符集补集，tr -c [set1] [set2]
# 删除不在0-9的所有字符
echo hello 1 char 2 next 3 | tr -d -c '0-9 \n'

# 压缩字符，-s可以去掉输入中的重复字符
echo "GNU is              not unix, right ?" | tr -s ' '


