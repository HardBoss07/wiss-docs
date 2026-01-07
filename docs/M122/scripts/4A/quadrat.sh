#!/bin/bash
# Programm: Quadrat
# Beschreibung: Berechnet Quadrat per Read
# Aufruf: ./quadrat.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-07
# Aenderung: Skriptkopf eingefügt
# Aenderungsdatum: 2026-01-07

echo "Von welcher Zahl möchtest du das Quadrat errechnen?"
read zahl

quadrat=$((zahl * zahl))

echo "$zahl hoch 2 = $quadrat"