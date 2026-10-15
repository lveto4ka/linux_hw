#!/bin/bash
if [ ! -f "$1" ]; then
    echo "Error file is not exist"
    exit 1
elif [ "$2" != "human" ] && [ "$2" != "Human" ] && [ "$2" != "mouse" ] && [ "$2" != "Mouse" ] && [ "$2" != "rat" ] && [ "$2" != "Rat" ] && [ "$2" != "fly" ] && [ "$2" != "Fly" ]; then 
    echo "Error: программа поддерживает данные организмов human, mouse, rat, fly"
else
    echo  "Обрабатываю " "$1"
fi






