#!/bin/bash
if [ "$1" = "-u" ]; then
declare -u word="$2"
echo "$word"
elif [ "$1" = "-l" ]; then
declare -l word="$2"
echo "$word"
fi 
