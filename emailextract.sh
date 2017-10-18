#!/bin/bash
a=$#
b=$@
if [ "$a" -lt 1 ]; then
echo 'No e-mail address given. Usage: /Extract.sh <e-mail adress-1> <e-mail adress-2>...<e-mail-adress-N'
else
for i in ${b[@]};do			#searching domain
if [ "${i:0:1}" == '@' ] || [ "${i:0:1}" == '.' ];then
echo "email address can not  begin with @ or ."  
else
domain=${i##*@}
echo $domain
fi
done > domain.txt
for i in ${b[@]};do			#searching user
if [ "${i:0:1}" == '@' ] || [ "${i:0:1}" == '.' ];then
echo "email address can not begin with @ or ."  
else
user=${i%%@*}
echo $user
fi
done > user.txt
echo "user: `cat user.txt`"
echo "domain: `cat domain.txt`"
fi

