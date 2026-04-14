#!/bin/bash

date

echo "System ealth check"
echo "------------------"


echo "Disk Usage"
df -h

echo "Memory Usage"
free -m

echo "CPU usage"
top

echo "Running processes"
ps aux | head -5
