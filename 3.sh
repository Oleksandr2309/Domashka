#!/bin/bash

sudo find $HOME . -maxdepth 1 -type d | while read -r dir;
do printf "%s:\t" "$(basename "$dir")"; 	  sudo find "$dir" -type f | wc -l; 
done >script.txt

#It's crontab for script
#59 23 * * 5 /home/oleksandr/Desktop/script/./demo3.sh 
 


