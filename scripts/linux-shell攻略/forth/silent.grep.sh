#!/bin/bash

# 测试文件中是否包含特定的文本文件
function contains() {
	if [ $# -ne 2 ];
	then echo  "$0 match_text filename"
	exit -1
	fi
	
	match_text=$1
	filename=$2

	grep -q $match_text $filename
	
	if [ $? -eq 0 ];
	then echo "the text exist in the file"
	else echo "text does not exist in the file"
	fi
	
}

contains $1 $2
