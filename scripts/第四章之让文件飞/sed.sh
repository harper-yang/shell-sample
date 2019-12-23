#!/bin/bash

# 替换指定文本中的字符串
sed 's/pattern/replace_str/' file

# -i将替换结果应用于源文件
sed -i 's/text/replace/' file

# 默认只替换第一处符合的内容，替换全部需在尾部加g
sed 's/text/replace/g' file

# 从第N出开始替换
sed 's/text/replace/ng' file


# 移除空白行，空白行用^$匹配
sed '/^$/d' file

# & 标记匹配样式的字符串，能够在替换字符串时使用已匹配的内容
echo this is a exampel | sed 's/\w\+/[&]/g'

# 子串匹配标记\1
echo this is digit 7 in a number | sed 's/digit \([0-9])/\1/'

# 引用
text=hello
echo hello world | sed "s/$text/HELLO/" 
