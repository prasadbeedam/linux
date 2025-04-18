#!/bin/bash

echo "deleteing the test folder"
for folder in $(find -type d)
do 
         echo "the folder $folder"
         if [ -d test ]; then
            echo "this folder is exist"
            echo "removing the folder"
            rm -rf test
        else
            echo "folder does not exist"
        fi
done                
          