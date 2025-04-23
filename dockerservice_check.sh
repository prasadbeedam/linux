#!/bin/bash

echo "===status of docker services===="
status="`systemctl status docker|awk 'NR==3 {print}'|cut -d ':' -f 2|cut -d '(' -f 1`"
echo $status
if [ $status = "active"]; then
  echo "services running fine"
else
  echo "services not running"
  sudo systemctl start docker
fi 