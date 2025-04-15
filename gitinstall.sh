!#/bin/bash

echo "script to installing git"
echo "installation started"

if [ "$(uname)" == "linux" ]; then
    
    echo "this is the linux box installing git"
    yum install git -y
elif ["$(uname)" == "MAC" ]; then

    echo "this is mac os"
    brew install git 
else
    echo "not installing"
fi     



