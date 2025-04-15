#!/bin/bash

echo "Checking disk usage on the system..."

# Get disk usage of /dev/xvda3 in percentage (without the % symbol)
disk_size=$(df -h | grep "/dev/xvda3" | awk '{print $5}' | cut -d '%' -f 1)

echo "$disk_size% of disk is filled."

# Compare as integer
if [ "$disk_size" -gt 50 ]; then
    echo "Disk usage is above 50%. Consider cleaning up or expanding disk."
else
    echo "Enough disk space is available."
fi 