#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20230223.sql ./mysql/db
cp ../sql/ry_config_20220929.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../learn-drive-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy learn-drive-gateway "
cp ../learn-drive-gateway/target/learn-drive-gateway.jar ./learn-drive/gateway/jar

echo "begin copy learn-drive-auth "
cp ../learn-drive-auth/target/learn-drive-auth.jar ./learn-drive/auth/jar

echo "begin copy learn-drive-visual "
cp ../learn-drive-visual/learn-drive-monitor/target/learn-drive-visual-monitor.jar  ./learn-drive/visual/monitor/jar

echo "begin copy learn-drive-modules-system "
cp ../learn-drive-modules/learn-drive-system/target/learn-drive-modules-system.jar ./learn-drive/modules/system/jar

echo "begin copy learn-drive-modules-file "
cp ../learn-drive-modules/learn-drive-file/target/learn-drive-modules-file.jar ./learn-drive/modules/file/jar

echo "begin copy learn-drive-modules-job "
cp ../learn-drive-modules/learn-drive-job/target/learn-drive-modules-job.jar ./learn-drive/modules/job/jar

echo "begin copy learn-drive-modules-gen "
cp ../learn-drive-modules/learn-drive-gen/learn-drive/learn-drive-modules-gen.jar ./learn-drive/modules/gen/jar

