#!/bin/bash
echo "enter the number"
read n
for((i=1;i<=n;i++))do
for ((j=1;j<=i;j++))
 do
 echo -e "$i \c"
 done
 echo " "
done
