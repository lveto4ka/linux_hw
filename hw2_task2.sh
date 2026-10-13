#!/bin/bash
if [ "$2" != "txt" ] && [ "$2" != "pdf" ] && [ "$2" != "doc" ]; then
    echo "Error расширение не поддерживается"
    exit 1
fi
if [ "$3" != "txt" ] && [ "$3" != "pdf" ] && [ "$3" != "doc" ]; then
    echo "Error расширение не поддерживается"
    exit 1
fi
mv "$1" "${1%.*}.$3"
