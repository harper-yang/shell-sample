#1/bin/bash

# gzip只能对单个文件进行压缩，而无法对目录和多个文件进行归档，因此我们将这个任务交给tar

# gzip会删除原文件，生成一个压缩文件
gzip filename

# 压缩归档文件
tar -czvf archive.tar.gz

# 用zip进行归档和压缩

# 压缩
zip archive_name.zip [source]

# 对文件和目录进行递归操作 -r 递归，
zip -r archive.zip folder1 file2

# 解压缩
unzip file.zip
