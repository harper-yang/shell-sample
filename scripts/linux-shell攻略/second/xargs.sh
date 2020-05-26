#!/bin/bash

# command | xargs,xargs 可以从stdin接收到的数据重新格式化，再将其作为参数提供给其他命令

# 将多行输入转换成单行输出，只需要将换行符移除，在用空格代替
# cat file.txt | xargs 

cat example.txt | xargs -n 3

# -d 执行定界符，使用x进行分割，-n指定每行的最大的参数数量n
echo "aaaxbbbxcccxddd" | xargs -d x -n 2

# 每此指定一个参数传输
cat args.txt | xargs -n 1 ./cecho.sh

# 用find找出所有的.txt 文件，用xargs 删除, -0 将\0 作为输入的定界符
find .-type f -name "*.txt" -print0 | xargs -0 rm -f

# 统计代码目录中的c程序文件的行数
find /data/project -type f -name "*.c" -print0 | xargs -0 wc -l

# 给文件夹中的所有sh文件加上x执行权限
find . -type f -name '*.sh' -print0 | xargs -0 chmod u-x
