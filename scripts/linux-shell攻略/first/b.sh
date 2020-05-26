#!/bin/bash

# 定义数组
array_var=(1 2 3 34 4);echo ${array_var[1]}

# 打印整个数组
array_var=(1 2 3 34 4);echo ${array_var[*]}

# 打印数组长度
array_var=(1 2 3 34 4);echo ${#array_var[*]}

