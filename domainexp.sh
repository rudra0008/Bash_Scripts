#!/bin/bash
echo "Enter Domain name:"
read domain
whois $domain | awk '/Registry Expiry Date:/ {print "Expiry Date: " $4}'
whois $domain | awk '/Expiration/ {print "Expiry Date: " $2" "$3" "$4}'
