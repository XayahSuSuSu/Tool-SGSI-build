#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

mkdir -p ./tmp
echo "正在清理工作目录"
if [ -e ./tmp/*.bin ];then
  rm -rf ./tmp/*.bin
fi

if [ -e ./tmp/*.zip ];then
  mv ./tmp/*.zip ./
  rm -rf ./compatibility.zip
  rm -rf ./tmp/*
  mv ./*.zip ./tmp/
fi
