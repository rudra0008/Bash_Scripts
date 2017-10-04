#!/bin/bash
echo "Top IPs hitting the domain:"
sleep 1
cat apache.log | awk -F "\"*,\"*" '{print $2}' | uniq -c | sort -nr | head -n 10
echo "URL being accessed:"
sleep 1
cat apache.log | awk -F "\"*,\"*" '{print $9}' | uniq -c
echo "User agent:"
sleep 1
cat apache.log | awk -F "\"*,\"*" '{print $10}' | uniq -c
echo "status codes:"
sleep 1
cat apache.log | awk -F "\"*,\"*" '{print $7}' | uniq -c | sort -nr
echo "number of get request:"
sleep 1
cat apache.log | awk -F "\"*,\"*" '{print $5}' | grep -c GET
echo "number of post request:"
sleep 1
cat apache.log | awk -F "\"*,\"*" '{print $5}' | grep -c POST
