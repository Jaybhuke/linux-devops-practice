#!/bin/bash


echo "System  Health Check"
echo "------------"


DATE=$(date)
echo "-----Date-------"
echo "$DATE"


echo "-----Disk Usgae---"
df -h


echo "-----Memory Usage---"
free -m

echo "-----CPU Usage-----"
top -b -n 1 | head -5


echo "-------Disk usage checkup---------"
USAGE=$(df /| tail -1 | awk '{print $5}' | sed 's/%//')

echo "$USAGE"


if [ $USAGE -gt 80 ]; then
	echo "Warning"
else
	echo "Normal"
fi

echo "----Running Processes----"
ps aux | tail -5
