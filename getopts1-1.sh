#!/bin/bash
if [ $# -eq 0 ];
then
      echo "USAGE: ./getopts1-1.sh <option> <argument>";
      echo "Option: -n , Argument: any name.";
       exit 0
else 
while getopts ":n:" opt; do
  case $opt in
    n)
      echo "name is $OPTARG";
      ;;
    :)
      echo "Option -$OPTARG requires an argument.";
      exit 1
      ;;
   \?)
      echo "USAGE: ./getopts1-1.sh <option> <argument>";
      echo "Option: -n , Argument: any name.";
      exit 1
     ;;
  esac
done
fi
