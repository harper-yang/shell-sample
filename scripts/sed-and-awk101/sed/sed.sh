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

# 多个命令一起执行
sed -n '{
	/^root/ p
	/^nobody/ p
	/^mail/ p
}' /etc/passwd

# 直接修改结果到文件
sed -i 's/john/johnny' employee.txt

# 修改结果到文件，同时会保存一个备份文件
sed -ibak 's/john/johnny' employee.txt

# 追加line在特定的位置 a insert after
sed '[address] a the-line-to-append' input-file

# 添加203,jack Engineer 在第二行后面
sed '2 a 203,jack Engineer' employee.txt

# 添加两行
sed '/Jason/a\
203,Jack Johnson,Engineer\
204,Mark Smith,Sales Engineer' employee.txt

# insert before
sed '2 i 203,Jack Johnson,Engineer' employee.txt 

# 替换第二行的数据
sed '2 c 203,jack johnson,Engineer' employee.txt

# 输出行号
sed = employee.txt

# 匹配jane 的line加上行号
sed '/jane/ =' employee.txt

# 替换字符串：y,将文件中的a全部替换成b
sed 'y/a/b' employee.txt

# 匹配多个文件
sed -n '/root/ p' /etc/passwd /etc/group

# r 读取，下面语句会在最后一行读取log.txt 并输出出来
sed '$ r log.txt' employee.txt

# -c 等于--copy 
sed -ibak -c 's/john/johnny/' employee.txti

# n 为模式空间
sed -n n employee.txt

# x 交换模式空间（pattern space） 和hold space（保持空间）
# {x;n} 交换模式空间到保持空间，n读取了下一行到模式空间中，所以name在保持空间，title在模式空间中
# /Manager/{x;p} 匹配Manager，交换模式空间和保持空间，输出
sed -n -e 'x;n' -e '/Manager/{x;p}' empnametitle.txt

# /Manager/!h 不等于/Manager的复制到保持空间中
# /Manager/{x;p} 匹配Manager的交换模式空间和保持空间，然后输出x
sed -n -e '/Manager/!h' -e '/Manager/{x;p}' empnametitle.txt

# /Manager/{H;x;p} 先追加模式空间到保持空间，在转换，再输出H
sed -n -e '/Manager/!h' -e '/Manager/{H;x;p}' empnametitle.txt

# /Manager/{H;x;s/\n/:/;p} s将定界符/n 替换成;
sed -n -e '/Manager/!h' -e '/Manager/{H;x;s/\n/:/;p}' empnametitle.txt

# g：将保持空间中的数据复制到模式空间中，h相当于存到保持空间，g相当于从保存空间中获取
sed -n -e '/Manager/!h' -e '/Manager/{g;p}' empnametitle.txt

# G: 追加保持空间的数据到模式空间中
sed -n -e '/Manager/!h' -e '/Manager/{x;G;s/\n/:/;p}' empnametitle.txt

# N: 追加一行到模式空间中（模式空间中本来有employee name，下一行再追加employee title，）
sed -e '{N;s/\n/:/}' empnametitle.txt

# =对每一行加序号，N追加第二行到模式空间中，再将\n的定位符转换成 空格
sed -e '=' employee.txt | sed -e '{N;s/\n/ /}'

# P：print 1st line in multiline:多行中输入第一行
 sed -n -e 'N' -e '/Manager/P' empnametitle.txt
