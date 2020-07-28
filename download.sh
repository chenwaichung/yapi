#!/bin/bash

# get new version from github api
version=`./scripts/gettag -o YMFE -r yapi`

if [ -z "$version" ]; then
 version=$1
fi

echo -e "\033[32m download new package (version $version) \033[0m"

# download from npm.taobao.org
wget -O yapi.tgz http://registry.npm.taobao.org/yapi-vendor/download/yapi-vendor-$version.tgz
