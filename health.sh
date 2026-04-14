#!/bin/bash

DATE=$(date)

HOSTNAME=$(hostname)



echo "System health check"

echo "Date: $DATE"

echo "Hostname: $HOSTNAME"

echo "------------------"


USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')


echo "---- IF else----"

echo "USAGE: $USAGE"

if [ $USAGE -gt 80 ]; then
	echo "Warning: Disk usage is high"
else
	echo "Disk Usage is normal"
fi

echo "--For loop--"

for dir in / /home /var
do
	echo "checking dis for $dir"
	df -h $dir
done

for file in /home/ec2-user/learning/*.log
do
	echo "checking $file"
	grep -i error $file
done

echo "-----------------------"

echo "----while loop-----"

COUNT=1

while [ $COUNT -le 3 ]
do
	echo "Count: $COUNT"
	COUNT=$((COUNT+1))
done

echo "---------------------"

echo "Disk Usage"
df -h

echo "Memory Usage"
free -m

echo "CPU usage"
top -b -n 1 | head -5

echo "Running processes"
ps aux | head -5
