#!/bin/bash
if [ $# -eq 0 ];
then
      echo "USAGE: ./getopts2-2.sh <option1> <option2> <argument1> <argument2>";
      echo "Option: -f -l, Argument1: firstname, Argument2: lastname.";
       exit 0
else 
while getopts ":f:l:" opt; do
  case $opt in
    f) firstname=$OPTARG ;;
    l) lastname=$OPTARG ;;
   \?)
      echo "USAGE: ./getopts2-2.sh <option1> <option2> <argument1> <argument2>";
      echo "Option: -f,-l , Argument1: firstname, Argument2: lastname.";
      exit 1
     ;;
  esac
done
shift $((OPTIND -1))
echo "Full name: $firstname $lastname";
fi
