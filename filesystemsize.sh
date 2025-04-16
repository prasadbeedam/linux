#!/bin/bash

echo "this script is to show the first 10 big files in the filesystem"
path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt
echo "this the last biggest files in the file system $path"
cat /tmp/filesize.txt