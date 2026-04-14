#!/bin/bash

DATE=$(date)

HOSTNAME=$(hostname)



echo "System health check"

echo "Date: $DATE"

echo "Hostname: $HOSTNAME"

echo "------------------"


USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "USAGE: $USAGE"

if [ $USAGE -gt 80 ]; then
	echo "Warning: Disk usage is high"
else
	echo "Disk Usage is normal"
fi

echo "Disk Usage"
df -h

echo "Memory Usage"
free -m

echo "CPU usage"
top -b -n 1 | head -5

echo "Running processes"
ps aux | head -5
