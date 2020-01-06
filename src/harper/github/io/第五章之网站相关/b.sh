#!/bin/bash

#图片下载工具

if [ $# -ne 3 ];
then 
	echo "Usage: $0 URL -d directory"
	exit -1
fi

# case 会对第一个参数求值，以匹配-d等被检查到的字符串参数，
# shift用来移动参数，当使用shift后，$2的值就被赋给$1,
for i in {1..4}
do 
	case $1 in 
	-d) shift; directory=$1;shift;;
	 *) url=${url:$1};shift;
esac
done

mkdir -p $directory
baseurl=$(echo $url | egrep -o "http?://[a-z]+")

# -egrep 只打印包括属性在内的<img> 标记
# sed 可以得到所有的图像文件url
curl -s $url | egrep -o "<img src = [^>*>*]" | sed 's/<img src=\"\([^"]*\).*/\1/g' > $tmp/$$.list

sed -i "s|^/|$baseurl/|" /tmp/$$.list

cd $directory
while read filename;
do 
	curl -s -O "$filename" --silent
done < /tmp/$$.list

## 使用方法
# sh b.sh http://www.flickr.com/search/?q=linux -d images

