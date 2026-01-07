#!/bin/bash

echo "Von welcher Zahl möchtest du das Quadrat errechnen?"
read zahl

quadrat=$((zahl * zahl))

echo "$zahl hoch 2 = $quadrat"