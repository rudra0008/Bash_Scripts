#!/bin/bash
read name;
exist=$(sudo -S <<< "123212321" lxc-ls -f | awk /$name/ | awk '{ print $1 }')
if [ "$name" != "$exist" ];then
	echo "lxc not exists!!!";
	else
	sudo -S <<< "123212321" lxc-start -n $name
	sleep 4
	ip=$(sudo -S <<< "123212321" lxc-ls -f | awk /$name/ | awk '{ print $5 }')
	echo "connecting to $name ip: $ip...";
	sleep 2
	sshpass -p 'ubuntu' ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@$ip<<EOF
sudo -S <<< "ubuntu" ps aux > ps.txt
	sudo -S <<< "ubuntu" apt-get install sshpass
	sshpass -p '123212321'  scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ps.txt rudra@10.111.44.109:/home/rudra/bash_scripts
EOF

fi
