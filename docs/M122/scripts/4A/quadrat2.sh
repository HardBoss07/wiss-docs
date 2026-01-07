#!/bin/bash
# Programm: Quadrat 2
# Beschreibung: Berechnet Quadrat per Argument
# Aufruf: ./quadrat2.sh
# Optionen: -
# Parameter: 1234
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-07
# Aenderung: Skriptkopf eingefügt
# Aenderungsdatum: 2026-01-07

zahl=$1
quadrat=$((zahl * zahl))

echo "$zahl hoch 2 = $quadrat"