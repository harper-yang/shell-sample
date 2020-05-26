#!/bin/bash

# 匹配文本中的所有单词
(?[a-zA-z]+?)

# 在文件中搜索一个单词 grep match_pattern filename
echo -e "this is a word next line" | grep word

# grep 也可以对多个文件进行搜索,--color 会重点标注匹配到的单词
grep "match_text" file1 file2 file3 --color=auto

# 使用正则-E 使用扩展正则表达式，-v表示invert，打印除了match_pattern外的所有行
grep -E "[a-z]+"

# 统计文本中匹配字符串的行数
grep -c "text" filename

# 打印出包含字符换的文本
grep pattern_text -n filename

# 递归搜索文件
grep "text" / -R -n

# -i 忽略大小写
echo hello world | grep -i "HELLO"

# 在目录中搜索所有的.c和.cpp文件
grep "main()" . -r --includ *.{c,cpp}

# 使用0值字节后缀的grep与xargs,-Z可以指定0值字节作为终结符
grep "test" file* -lZ | xargs -0 rm

# 打印出匹配文本之前或之后的行,之后的n行，用-A选项，之前的n行，用-B选项，之前加之后用-C选项
seq 10 | grep 5 -A 3 -B 3
