#!/bin/bash
if [ $# -eq 1 -a -f $1 ];then
	cat $1 | awk -F "\"*,\"*" '$4 >= "2017-10-17 20:40:00" && $4 <= "2017-10-17 20:43:20" {print $4"  "$5"  "$6"      "$7"  "$10}'
	else
		echo "usage: ./logtimestamp <logfilename>";
		echo "change the timestamp of log in script which you want to display"; 
fi
