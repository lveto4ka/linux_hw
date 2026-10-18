#!/bin/bash
ext="${1##*.}"
if [ "$ext" = "csv" ]; then
    deli=","
elif [ "$ext" = "tsv" ]; then
    deli=$'\t'
else
    echo "Error: unsupported file format"
    exit 1
fi
 columns=$(awk -F "$deli" 'NR==1 {print NF; exit}' "$1")
awk -F "$deli" -v expect="$columns" 'NF != expect {print "Error in line", NR; exit 1}' "$1"
if [ $? -eq 0 ]; then
    echo "File is correct. Number of columns in the file: " "$columns"
fi

