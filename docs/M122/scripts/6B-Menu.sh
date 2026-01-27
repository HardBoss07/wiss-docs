#!/bin/bash
# Programm: 6B-Menu.sh
# Beschreibung: 
# Aufruf: ./6B-Menu.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-14
# Aenderung:
# Aenderungsdatum: 2026-01-14

while true
    do 
    echo "Hauptmenü"
    echo -e "---------------------\n"
    echo "1. Top Prozesse anschauen"
    echo "2. Hostname anzeigen"
    echo "3. Freier Festplattenspeicher anzeigen"
    echo "4. Exit"

    read -p "Wählen Sie ihre Auswahl: " AUSWAHL

    case $AUSWAHL in
        1) top;;
        2) whoami;;
        3) df -h;;
        4) exit 0;;
        *) echo -e "\nWaehlen Sie ihne Auswahl\n"
    esac
done