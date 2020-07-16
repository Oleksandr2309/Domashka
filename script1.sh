#!/bin/bash

argcount=$#
arg=$1
if [ $argcount = "1" ] 
then
if [ -f "$arg" ]; 
  then
  echo "$arg it's a regular file. Completed"
  chmod +x $arg
elif [ -d "$arg" ]; 
  then
  echo "$arg must be file"
else echo "$arg file not exist"
fi
elif [$argcount > "1" || $argcount < "1"]
then


display-usage() {
echo "Use only one arg"
}
fi
