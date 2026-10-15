#!/bin/bash
if [ ! -e "$1" ]; then
    echo "Error: no such file or directory"
    exit 1
elif [ -d "$1" ]; then
    ls "$1"
else
    ls -l "$1"
    wc -l "$1"
fi
