#!/bin/bash

# 删除掉所有的空行
sed '/^$/ d' employee.txt

# 替换每行的第二个locate
sed 's/locate/find/2' substitute-locate.txt

# 替换每行的每一处a
sed '/s/a/A/g' employee.txt

# 替换匹配sales 行的manager为aa
sed 'Sales/s/manager/aaa' employee.txt

# p只显示替换的那一行
sed -n 's/join/joinny/p' employee.txt

# 忽略大小写
sed 's/john/Johnny/i' employee.txt

# e为执行标志
sed 's/^/ls -l /e' files.txt

# 联合多个sed标志，p只显示变更的，i会略大小写，g变更每一处，w写入
sed -n 's/Manager/Director/gipw' output.txt

# 关于定界符

# 替换/usr/local/bin -> /usr/bin使用/作为定界符
 sed 's/\/usr\/local\/bin/\/usr\/bin/' path.txt  

# 更好的方式可以使用|，@，！等作为定界符
sed 's|/usr/local/bin|/usr/bin|' path.txt

# & 代表的是原始串中匹配到的字符串在这里面是将101 变成[101],&代表101
sed 's/[0-9][0-9][0-9]/[&]g'

# 分组加反向引用，([^,]*) 匹配的是第一个第一个逗号前的字符串，\1表示第一个分组
# \n表示反向引用，指向正则表达式中第n个括号
sed 's/\([^,]*\).*/\1/g' employee.txt

# 匹配103开头的line
sed -n '/^103/ p' employee.txt

# 匹配r结尾的line
sed -n '/r$/ p' employee.txt















# 过滤出log:后面又数据的line（含义是可以有任何东西但是必须有一个）
sed -n '/log: *./ p' log.txt

# 匹配log: 后面至少有一个空格的line
sed -n '/log: \+/p' log.txt

# 匹配log:后面有0个或者一个空格的
sed -n '/log: \?/p' log.txt

# 匹配单词为the开头的line
sed -n '/\bthe/ p' words.txt

# 匹配重复两遍the的line，\1表示匹配第一个组的正则
sed -n '/\(the\)\1/ p' words.txt

# 替换最后两个字符
sed 's/..$/,Not Defined/' employee.txt

# 删除掉开始为Manager的剩下的字符
sed '/s/Manager .*//' employee.txt

# 去掉html文件中的tag标签
sed -e 's/<[^<]*>//g'  test.html
