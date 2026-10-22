#!/bin/bash
for i in *.txt; do
    cp "$i" "${i%.txt}_$(date +%d-%m-%Y).txt"
done

