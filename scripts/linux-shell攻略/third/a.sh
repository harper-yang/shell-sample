#!/bin/bash

# 生成一个任意大小的文件
# 该命令会生成一个1m的为念，if表示输入文件，of表示输出文件，bs表示块大小，count表示需要复制的块数，/dev/zero是一个字符设备，会不断的返回0值字节
dd if=/dev/zero of=junk.data bs=1M count=1
