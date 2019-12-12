#!/usr/bin/env bash

# 使用数组统计词频
# 判断参数是否是一个
if [[ $# -ne 1 ]];
then echo "Usage: $0 filename";
exit -1
fi

filename=$1
# 输出是单词的文本，-o选项打印出由换行符分割的匹配字符序列
egrep -o  "\b[[:alpha:]]+\b" ${filename} | \
awk '{ count[$0]++ }
END { printf ("%-14s%s\n" , "word","count");
for (ind in count)
{
    printf ("%-14s%d\n", ind, count[ind]); }
}'
