#!/bin/bash
if [ -f "$1" ]; then
    ln -s "$1" . && echo "Link is ready"
else
    echo "Error"
fi
