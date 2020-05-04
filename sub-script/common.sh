#/bin/bash

# docker build にて利用するbuild-argオプション文字列を提供する
# 第一引数：変数ファイルのパス
function createBuildArg () {
  for line in `cat ${1}`
  do
    key=`echo ${line} | awk -F"=" '{print $1}'`
    value=`echo ${line} | awk -F"=" '{print $2}'`
    echo -n " --build-arg ${key}=${value}"
  done
}
