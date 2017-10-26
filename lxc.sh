#!/bin/bash
read name;
exist=$(lxc-ls -f | awk /$name/ | awk '{ print $1 }')
if [ "$name" != "$exist" ];then
	lxc-create -n $name -t ubuntu
	lxc-start -n $name 
	sleep 4
	lxc-ls -f
	ip=$(lxc-ls -f | awk /$name/ | awk '{ print $5 }')
	echo "connecting to $name ip: $ip";
	sshpass -p 'ubuntu' ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@$ip
	else
	echo "lxc already exist!! connecting to lxc $name...";
	lxc-start -n $name
	sleep 1
	ip=$(lxc-ls -f | awk /$name/ | awk '{ print $5 }')
	sshpass -p 'ubuntu' ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@$ip
fi
#lxc-ls -f | awk /test2/ | awk '{ print $5 }'

#sshpass -p 'ubuntu' ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@10.0.3.239
