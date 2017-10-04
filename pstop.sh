#!/bin/bash
echo "current cpu usage, user and pid:" | tee -a output.txt
sleep 2
ps -eo user,%cpu,pid | tee -a  output.txt
echo "number of process run by user:" | tee -a output.txt
sleep 2
ps -eo user,%cpu,pid | grep -c rudra | tee -a output.txt
echo "from top command current cpu usage,user and pid:" | tee -a output.txt
sleep 2
top -b -n 1 | awk '{print $1"	"$2"	"$9}' | tee -a output.txt
echo "number of process run by user:" | tee -a output.txt
sleep 2
top -b -n 1 | awk '{print $1"   "$2"    "$9}' | grep -c rudra | tee -a output.txt
