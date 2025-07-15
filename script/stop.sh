#!/bin/bash
echo "Stopping application..."

JAR_PATH="yudao-server/target/yudao-server-*.jar"

# 找出运行中与该 jar 相关的进程
PID=$(pgrep -f "$JAR_PATH")

if [ -n "$PID" ]; then
  echo "Killing process $PID"
  kill -9 $PID
  echo "Process stopped"
else
  echo "No running process found for $JAR_PATH"
fi
