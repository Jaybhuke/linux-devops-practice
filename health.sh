#!/bin/bash

DATE=$(date)

hostname=$(hostname)



echo "System health check"

echo "Date: $DATE"

echo "Hostname: $hostname"

echo "------------------"


echo "Disk Usage"
df -h

echo "Memory Usage"
free -m

echo "CPU usage"
top

echo "Running processes"
ps aux | head -5
