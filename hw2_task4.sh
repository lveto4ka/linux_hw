#!/bin/bash
if [ ${1##*.} = fasta ] || [ ${1##*.} = fa ]; then
    echo "This file has fasta format"
else
    echo "Error add fasta file"
fi
