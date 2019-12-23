#!/bin/bash

# split [command_args] prefix
# 将文件分割成10k的文件，-d 使用数字作为后缀，-a指定后缀的长度
split -b 10k data.file -d -a 4


