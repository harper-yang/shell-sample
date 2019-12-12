#!/bin/bash

# 定义函数
function fname()
{
	echo  $1,$2
	echo "$@"
	echo "$*"
	return 0

}

# 参数的定义
# $1是第一个参数
# $2是第二个参数
# $n是第n个参数
# "$@" 被扩展成"$1""$2""$3"等
# $? 可以判断命令执行的状态，成功为0
# 4# 获取参数的个数

fname aa bb
