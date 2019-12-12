#!/bin/bash

# 将sum.txt文件中的数字加起来

# tr先将'\n' 替换成+，得到1+2+3+4+5+ 但是多了一个+，所以补一个0，$[ opertion ] 在执行运算操作
cat sum.txt | echo $[ $( tr '\n' '+' ) 0  ]
