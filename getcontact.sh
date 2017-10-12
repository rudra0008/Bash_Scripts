#!/bin/bash
if [ $# -lt 2 -o $# -gt 2 ];then
	echo "Usage: ./getcontact.sh contact.txt ID(A1,A2....)";
	elif [ -f $1 ];then
		grep -A3 $2 $1
	else
	echo "enter correct file name!!!";
fi
