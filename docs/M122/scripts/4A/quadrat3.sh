#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Von welcher Zahl möchtest du das Quadrat errechnen?"
    read zahl
else
    zahl=$1
fi

quadrat=$((zahl * zahl))

echo "$zahl hoch 2 = $quadrat"
