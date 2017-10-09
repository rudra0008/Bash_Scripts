#!/bin/bash
echo "top 10 domain being accessed:";
sleep 2
cat $1 | awk '{print $1}' | uniq -c | sort -nr | head -n 10
echo "top 10 IPs hitting:";
sleep 2
cat $1 | awk '{print $2}' | uniq -c | sort -nr | head -n 10
echo "Top 10 URL visited:"
sleep 2
cat $1 | awk '{print $8}' | uniq -c | sort -nr | head -n 10
