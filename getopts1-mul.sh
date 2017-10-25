#!/bin/bash  
if [ $# -eq 0 ];
then
      echo "USAGE: ./getopts1-mul.sh <option> '<argument1> <argument2>...'";
      echo "Option: -n , Argument: any name.";
       exit 0
else 
while getopts ":n:" opt; do
    case $opt in
        n ) echo "Run Numbers - argument = $OPTARG "
            set -f 
            IFS=' '
            array=($OPTARG) ;; 
        /? ) echo "USAGE: ./getopts1-mul.sh <option> '<argument1> <argumnet2>...'"; 
            exit 1
    esac
done

echo "Number of arguments: ${#array[@]}"
echo -n "Arguments are:"
for i in "${array[@]}"; do
  echo -n " ${i},"
done
printf "\b \n"
fi
