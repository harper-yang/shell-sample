#!/bin/bash

# -F：字段分隔符，不指定的话默认是空格
awk -Fs '/pattern/ {action}' input-file
awk -Fs '{action}' input-file

# 分割符为: ，$1为第一部分
awk -F: '/mail/ {print $1}' /etc/passwd

# f:使用文件执行awk
awk -f myscript.awk input-file

#经典的awk结果包括三部分，BEGIN,BODY,END
awk 'BEGIN {FS=":";print "---header---"} \
/mail/ {print $1} \
END {print "---footer---"}' /etc/passwd

# print命令
awk '{print $2}' employee.txt

# 以下三行的含义相同
awk -F ',' '{print $2}' employee.txt
awk -F "," '{print $2}' employee.txt
awk -F, '{print $2}' employee.txt

# 添加title 和结尾
awk -F ',' 'BEGIN \
{print "----------------\nName\tTitle\n----------------"}
{print $2 ,"\t",$3;}\
END {print "---------------";}' employee.txt

# 匹配Manager的行
awk -F ',' '/Manager/ {print $2,$3}' employee.txt

awk -F ',' '/^102/ {print "emp id 102 is ", $2}' employee.txt

# awk的内置变量，FS：是awk的内置变量filed separator
awk 'BEGIN {FS=","} {print $2,$3}' employee.txt

# 设置多个分隔符，,或:或%
awk 'BEGIN {FS="[,:%]"} {print $2,$3}' employee-multiple-fs.txt

# OFS 为输出分隔符，将输出用：分割
awk -F '', 'BEGIN {OFS=":"} \
{print $2,$3}' employee.txt

# 再不同的value之间加逗号，意思是value之间加默认的输出分隔符，不加逗号，则不加默认的输出分隔符
awk 'BEGIN {print "test1","test2"}'
awk 'BEGIN {print "test1""test2"}'

# RS: 为行间的分隔符，默认的行间分隔符为换行符
awk -F, 'BEGIN {RS=":"}\
{print $2}' employee-one-line.txt

# 
awk 'BEGIN {FS="\n"; RS="-\n"; OFS=":"} \
{print $2,$3}' employee-change-fs-ofs.txt

# ORS:为输出的行间分割符
awk 'BEGIN {FS="," OFS="\n"; ORS="\n---\n"} \
{print $1,$2,$2} ' employee.txt

# NR：NR为记录的行号
awk 'BEGIN {FS=","} \
{print "Emp Id of record number",NR,"is" $1;} \
END {print "Total number of records:",NR}
' employee.txt

# 当使用多文件时，FILENAME可以获取到当前正在执行的文件
awk '{print FILENAME}' employee.txt employee-multiple-fs.txt

# 在使用多文件时，每执行一个文件，NR并不会从1重新开始，而是累加，FNR会从1重新开始
awk 'BEGIN {FS=","} \
{print FILENAME ": record number",FNR,"is" $1; }\
END {print "total number of records:",NR}'
employee.txt employee-multiple-fs.txt

# ++ 加1，++在前，先加1，再传值
awk -F, '{print ++$4}' employee-sal.txt
awk -F, '{print $4++}' employee-sal.txt
awk -F ',' '{$4++; print $4}' employee-sal.txt

# 
# awk -F ':' '$NF ~ /\/bin\/bash/ {n++}; END {print n}' /etc/passwd



#
awk -F ',' '{ if($5 <= 5) print "Only",$5,"qty of ",$2,"is available";}' items.txt

#print pretty printf
# \n 新起一行 \t=tab \b=backspace
awk 'BEGIN {printf "line1\nline2\n"}'



