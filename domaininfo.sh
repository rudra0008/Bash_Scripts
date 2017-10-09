#!/bin/bash
echo "enter domain name for query";
read domain
echo "No of get request for $domain:";
sleep 2
cat access.log | awk /$domain/ | awk '{print $7}' | grep -c GET
echo "No of POST request for $domain:";
sleep 2
cat access.log | awk /$domain/ | awk '{print $7}' | grep -c POST
echo "top 10 ip hitting the domain $domain:";
sleep 2
cat access.log | awk /$domain/ | awk '{print $2}' | uniq -c | sort -nr | head -n 10
echo "Top 10 URL visited:"
sleep 2
cat access.log | awk /$domain/ | awk '{print $8}' | uniq -c | sort -nr | head -n 10
echo "Status code count for $domain:";
sleep 2
cat access.log | awk /$domain/ | awk '{print $10}' | uniq -c
