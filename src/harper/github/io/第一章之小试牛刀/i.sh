#!/bin/bash

data="apple,orange,my"
oldIFS=$IFS
echo ${oldIFS}
IFS=,
for item in ${data};
do 
echo item: ${item}
done
IFS=${oldIFS}
