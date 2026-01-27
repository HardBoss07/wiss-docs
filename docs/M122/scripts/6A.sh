#!/bin/bash
# Programm: 6A.sh
# Beschreibung: Lösungen für 6A
# Aufruf: ./6A.sh [Basis] [Exponent]
# Optionen: -
# Parameter: $1 (Basis für Potenz), $2 (Exponent - optional)
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-14
# Aenderung: Skript erstellt
# Aenderungsdatum: 2026-01-14

# Aufgabe 1: Skript-Übersicht auflisten
echo "===== Aufgabe 1 ====="

# Tipp 1: Schleife über alle .sh Dateien im aktuellen Verzeichnis
for datei in *.sh
do
    # Prüfen, ob die Datei existiert
    if [ -f "$datei" ]; then
        echo "$datei:"
        
        # Tipp 2: Verwende grep und cut, um die Informationen zu extrahieren
        # Extrahiere die Beschreibung
        grep "^# Beschreibung:" "$datei" | cut -d ':' -f 2- | sed 's/^ //'
        
        # Extrahiere Version und Erstellungsdatum
        V=$(grep "^# Version:" "$datei" | cut -d ':' -f 2- | sed 's/^ //')
        D=$(grep "^# Datum:" "$datei" | cut -d ':' -f 2- | sed 's/^ //')
        
        echo "V. $V Erstellt am: $D"
        echo "--------------------------"
    fi
done

echo ""

# Aufgabe 2: Potenzrechnung
echo "===== Aufgabe 2 ====="

# Anforderung: Das Skript muss die Anzahl Argumente kontrollieren ($#)
if [ $# -lt 1 ]; then
    # Wenn kein Argument angegeben wurde: Fehlermeldung
    echo "Fehler: Es wurde kein Argument beim Aufruf angegeben!"
    echo "Aufruf: $0 Basis [Exponent]"
elif [ $# -eq 1 ]; then
    # Wenn nur ein Parameter angegeben wird: Basis = $1, Exponent = 2
    BASIS=$1
    EXPONENT=2
    RESULTAT=$((BASIS ** EXPONENT))
    echo "$BASIS hoch $EXPONENT ist: $RESULTAT"
else
    # Wenn 2 Argumente eingegeben wurden: $1 = Basis, $2 = Exponent
    BASIS=$1
    EXPONENT=$2
    RESULTAT=$((BASIS ** EXPONENT))
    echo "$BASIS hoch $EXPONENT ist: $RESULTAT"
fi

echo ""
echo "Skript 6A.sh abgeschlossen."