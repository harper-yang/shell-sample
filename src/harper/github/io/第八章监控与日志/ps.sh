#!/bin/bash

# -f 显示更多列，-e（every） -ax（all）
ps -ef

# -o指定要显示的列,comm 表示command，pcpu表示cpu占用率，pid表示进程id，pmem表示内存使用率，cmd指简单命令
ps -eo comm,pcpu | head 
