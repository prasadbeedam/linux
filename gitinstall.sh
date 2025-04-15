#!/bin/bash

echo "Script to install Git"
echo "Installation started"

# Detect the OS
if [ "$(uname)" == "Linux" ]; then
    echo "This is a Linux box. Installing Git..."
    yum install git -y

elif [ "$(uname)" == "Darwin" ]; then
    echo "This is macOS. Installing Git..."
    brew install git

else
    echo "Unsupported OS. Not installing Git."
fi