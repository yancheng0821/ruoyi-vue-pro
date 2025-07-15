#!/bin/bash
echo "Starting Java application..."
nohup java -jar /home/ec2-user/app/your-app.jar > /home/ec2-user/app/app.log 2>&1 &
