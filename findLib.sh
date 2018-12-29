#! /bin/bash

# 此脚本用于Windows链接时在.lib文件中查找缺少的符号，推荐在git bash中使用
# Author: Chen Zhe

for file in `find . -name *.lib`
do
  result=`dumpbin -symbols -exports $file | grep $1`
  if [ -n "$result" ]
  then
    echo $file
    echo $result
    echo "-------------------------------------------------------------------"
  fi
done
