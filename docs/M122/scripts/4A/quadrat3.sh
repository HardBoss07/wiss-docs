#!/bin/bash
# Programm: Quadrat 3
# Beschreibung: Berechnet Quadrat per Argument oder Read
# Aufruf: ./quadrat3.sh
# Optionen: -
# Parameter: 1234 (optional)
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-07
# Aenderung: Skriptkopf eingefügt
# Aenderungsdatum: 2026-01-07

if [ $# -eq 0 ]; then
    echo "Von welcher Zahl möchtest du das Quadrat errechnen?"
    read zahl
else
    zahl=$1
fi

quadrat=$((zahl * zahl))

echo "$zahl hoch 2 = $quadrat"
