#!/bin/bash
#this script checks every minute if a backup is made, if not, it #creates a folder with files, if a folder exists, it does nothing. #checks if files exist, if not, restores them from the backup #folder. If there is only one file, only it will be restored.

if [ ! -d /home/oleksandt/backup ]
then mkdir /home/oleksandr/backup
fi
cp /home/oleksandr/*.config /home/oleksandr/backup
var1=sudo ls /home/oleksandr/*.config | tr -d "/home/oleksandr/"
var2=sudo ls /home/oleksandr/backup/*.config | tr -d "/home/oleksandr/save/"
if [ "var1" != "var2" ]
then
cp /home/oleksandr/*.conf /home/oleksandr/backup
fi
if [ -e $HOME ]
then
echo "$HOME exists. Check file"
if [ -e $HOME/*conf ]
then
echo "File exists"
else
echo "Copy file"
cp -a /home/oleksandr/backup/* /home/oleksandr
fi
else
echo "You don't have home directory"
fi
if [ -e $HOME ]
then
echo "$HOME exists. Check file"
if [ -e $HOME/*config ]
then
echo "File exists"
else
echo "Copy file"
cp -a /home/oleksandr/backup/* /home/oleksandr
fi
else
echo "You don't have home directory"
fi

