#!/bin/bash

echo "BUILD $1"

if [ -n "$1" ]; then
    file=${1%.*}
    
    gcc -c "$file.m"
    gcc -o $file "$file.o" -framework Foundation
else
    echo "引数ないよ！"
fi
