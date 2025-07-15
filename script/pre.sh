#!/bin/bash

echo "[pre.sh] Preparing /home/ec2-user/app..."

# 创建 app 目录并修复权限
mkdir -p /home/ec2-user/app
chown -R ec2-user:ec2-user /home/ec2-user/app
chmod -R 755 /home/ec2-user/app

# 可选：准备日志文件
touch /home/ec2-user/app/app.log
chown ec2-user:ec2-user /home/ec2-user/app/app.log
chmod 666 /home/ec2-user/app/app.log
