#!/bin/bash
#grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" email.txt 
curl https://systemsapi-test.one.com/v1/domains/$1/email_addresses -H "Accept:application/vnd.api+json" | jq . | grep 'address":' > email.txt
cat email.txt && wc -l email.txt
rm email.txt

##grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" email.txt   <== search emails using reguler expression
