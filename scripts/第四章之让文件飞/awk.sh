#!/bin/bash

# awk可以对列和行进行操作，他又很多内建的功能，辱数组，函数凳

# 一个awk甲苯通常由BEGIN，END和模式匹配的通用语句三部分组成
# awk 'BEGIN{print "start"} pattern {commands} END{print "end"}'

# 工作原理：先执行BEGIN语句，再从文件或stdin中读取一行，然后执行pattern，重复过程至文件读取完毕，再执行END语句

echo -e "line1\nline2" | awk 'BEGIN{print "start"} {print} END{print "END"}'

# 通常将初始化语句及打印文件头部的语句放入BEGIN语句块中，将打印结果放入END语句块中

# 特殊变量
# NR 记录数量，在执行过程中对应当前行号
# NF 字段数量，执行过程中对应当前行的字段数
# $0 变量包含了执行过程中的当前行的文本内容
# $1 包含了第一个字段的文本内容
# $2 包含了第二个字段的文本内容

echo -e "line1 f2 f3\nlin3 f4 f5\nline3 f6 f7" | \
awk '{print "line no :" NR ",No of fields:" NF , "$0="$0}'

# 传递外部变量到awk
var1="aa" var2="bb"
echo | awk '{print v1,v2}' v1=$var1 v2=$var2

# 设置定界符
awk -F: '{print $NF }' /etc/password

# 从awk中读取命令输出,getline将grep的输出读入cmdout，再打印出来
echo | awk '{ "grep root /etc/passwd" | getline cmdout ; print cmdout}'

# 在awk中使用循环
for(i in array){print array[i] ; }
