#!/bin/bash
echo "this script is to delete the old log files"
path="$1"
echo $path
find $path -mtime +30 -delete
if [ $? -gt 0 ]; then
   echo "files are deleted succssfully"
else
   echo "having issue in filesystem or not able to find the files"
fi     