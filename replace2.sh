#!/bin/bash
if [ -f "$1" ];then
sed -i -e 's/LINE/line/g' $1
	else
	echo "enter a valid file name";
fi
