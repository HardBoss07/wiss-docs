#!/bin/bash
# Programm: 6B.sh
# Beschreibung: Lösungen zu 6B
# Aufruf: ./6B.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-14
# Aenderung: Skript erstellt
# Aenderungsdatum: 2026-01-14

groesse=$1

# Hier testen, dass ein Argument eingegeben wurde:
if [ $# -lt 2 ]
then
   # Jede Datei im aktuellen Verzeichnis mit der Endung .jpg wird
   # verarbeitet:
   for i in *.jpg
   do
       # Das Bild wird verkleinert bzw. vergrössert
       # Der Name der neuen Datei besteht aus dem Dateinamen der
       # Originalbilddatei (abzüglich .jpg) und dem String "_klein.jpg"
       convert -resize $groesse% $i $(basename "$i" .jpg)_klein.jpg
   done


else
   # Falls kein Argument angegeben wurde, Benutzer informieren
   echo "Sorry, Sie haben nicht gesagt, um wie viele Prozente das Bild …"
fi