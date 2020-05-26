#!/bin/bash

# 打印系统主机名
hostname

# 打印linux内核信息
uname -a

# 打印内核发行版本
uname -r 

# 打印主机类型
uname -m

# 打印cpu的信息
cat /proc/cpuinfo

# 获取内存的详细信息
cat /proc/meminfo

# 获取系统可用内存总量
cat /proc/meminfo | head -1
