#! /bin/bash

# cut 是一个将文本按列切分的小工具，可以指定每列的定界符,field_list 是需要显示的列，有列号醉成，用逗号隔开
cut -f field_list filename
cut -f 2,3 filename

# 读取第一列
cut -f 1 cut_data.txt

# 打印除了第三列外的其他列
cut -f 3 --complement cut_data.txt

# 执行字段的定界符
cut -f 2 -d ";" cut_data.txt
