#!/bin/bash

# sort可以对stdin或文本进行排序，uniq作用是从文本或stdin中提取单一的行

# 找出已排序的文件中不重复的行
sort file1.txt file2.txt > sorted.txt | uniq  > uniq_line.txt

# sort按数字排序
sort -n file1.txt

# 按逆序排序
sort -r file1.txt

# 按月份排序
sort -M file1.txt

# 根据key排序，key指的是文本的列,-nr指数字逆序，k指按照哪列排序
sort -nrk 2 sort.txt

# -u只显示唯一的行
sort -u sorted.txt

# 统计各行在文件中出现的次数
sort sorted.txt | uniq -c 

# 找出重复的行
sort sort.txt | uniq -d 

# 使用-z可以生成0值字节终止符（与xargs 配合，使用0值终止符更安全）
uniq -z file.txt | xargs -0 rm 
