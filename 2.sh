#!/bin/bash


for arg in "$@"
do  
if [ -f "$arg" ]; 
  then
  ls -l "$arg"
elif [ -d "$arg" ]; 
  then
  echo "$arg must be file"
fi
done 
