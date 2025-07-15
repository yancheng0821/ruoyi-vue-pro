#!/bin/bash
echo "Starting application..."

JAR_PATH="/home/ec2-user/app/yudao-server.jar"

# 终止旧进程
PID=$(pgrep -f "$JAR_PATH")
if [ -n "$PID" ]; then
  echo "Killing existing process $PID"
  kill -9 $PID
fi

# 启动新进程
nohup java -jar "$JAR_PATH" > /home/ec2-user/app/app.log 2>&1 &
echo "Application started"
