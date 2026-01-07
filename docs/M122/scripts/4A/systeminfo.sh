#!/bin/bash
# Programm: Systeminfo
# Beschreibung: Gibt elementare Systeminfos zurück
# Aufruf: ./systeminfo.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-07
# Aenderung: Skriptkopf eingefügt
# Aenderungsdatum: 2026-01-07

echo "Name des Computers: $(hostname)"
echo "Heimverzeichnis: $HOME"
echo "Aktuelles Verzeichnis: $(pwd)"
echo "Benutzername: ${USER:-$USERNAME}"
