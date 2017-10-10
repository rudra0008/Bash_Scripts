#!/bin/bash
if [ -f $1 ];then
	grep -vFf - $1 < <(grep -B2 -A1 'LINE4' $1)
else 
	echo "enter existing file name";
fi

