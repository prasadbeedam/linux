#!/bin/bash

echo "check the disk usage in linux system"
disk_size= 'df -h|grep "/dev/xvda3"|awk '{print $5}'|cut -d '%' -f 1'
echo "$disk_size% of disk is filled"
if [ $disk_size -gt 50 ]; then

   echo "disk utilized more than 50%,expand disk or delete the files"
else
   echo "enough disk is available "
fi   