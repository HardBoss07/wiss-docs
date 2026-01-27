#!/bin/bash
# Programm: 5A.sh
# Beschreibung: Überprüft ob eine Datei existiert und bewegt diese in /tmp/
# Aufruf: ./5A.sh
# Optionen: -
# Parameter: path/to/dir/
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-14
# Aenderung: Skript erstellt
# Aenderungsdatum: 2026-01-14

# 1. Anzahl Parameter prüfen (< 1)
if [ $# -lt 1 ]; then
    echo "Bitte geben Sie den Namen einer Datei als Parameter ein."
    exit 1
fi

FILE=$1

# 2. Prüfen, ob die Datei/der Pfad existiert
if [ ! -e "$FILE" ]; then
    echo "Die angegebene Datei existiert nicht!"
    exit 1
fi

# 3. Prüfen, ob es eine reguläre Datei ist
if [ -f "$FILE" ]; then
    cp "$FILE" /tmp/
    echo "Datei nach /tmp kopiert. Inhalt von /tmp:"
    ls /tmp
# 4. Prüfen, ob es ein Verzeichnis ist
elif [ -d "$FILE" ]; then
    echo "Die Datei ist ein Verzeichnis!"
fi

# Ende
exit 0