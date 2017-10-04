#!/bin/bash
top -n 1 > top.txt
sed -i 's/root/rudra/g' top.txt
cat top.txt

