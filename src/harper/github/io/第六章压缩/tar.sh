#!/bin/bash

# tar 对文件进行归档，-c创建文件，-f指定文件名，文件名必须紧跟在-f之后
# tar -cf output.tar [source]

# 向已存在的归档文件添加一个文件 -r
tar -rvf original.tar new_file

# 从归档文件 中提取文件或文件夹
tar -xf archive.tar

# -C指定将文件提取到哪个目录
tar -xf archive.tar -C /path/to/




