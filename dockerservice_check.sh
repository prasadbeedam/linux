#!/bin/bash

echo "=== Status of Docker service ==="
status=$(systemctl is-active docker)
echo "Docker status: $status"

if [ "$status" == "active" ]; then
  echo "Docker is running smoothly ✅"
else
  echo "Docker is not running ❌ – restarting..."
  sudo systemctl start docker
fi
