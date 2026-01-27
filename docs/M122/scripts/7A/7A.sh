#!/bin/bash
# Programm: 7A.sh
# Beschreibung: Sortiert Dateien nach Änderungsdatum in Unterverzeichnisse und erstellt eine Liste von Dateien > 10kB (absteigend sortiert).
# Aufruf: ./7A.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-21
# Aenderung: -
# Aenderungsdatum: 2026-01-21

dir=${PWD}

for file in "$dir"/*
do
    if [[ -f "$file" ]] ; then
        datum=$(stat -c %y "$file" | cut -f1 -d ' ')
        
        mkdir -p "$dir/$datum"
        mv "$file" "$dir/$datum/"
    fi
done

find "$dir" -type f -size +10k -exec ls -s --block-size=k --time-style="full-iso" {} \; \
| sort -k 1rn \
| cut -f1,2 -d ' ' > "$dir/grosse_dateien.txt"

echo "Verarbeitung abgeschlossen. Bericht wurde in grosse_dateien.txt gespeichert."