#!/bin/bash
echo "Enter Domain name:"
read domain
whois $domain | awk '/Registry Expiry Date:/ {print "Expiry Date: " $4}'
