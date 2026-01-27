#!/bin/bash
# Programm: 5B.sh
# Beschreibung: Lösungen zu 5B
# Aufruf: ./5B.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-14
# Aenderung: Skript erstellt
# Aenderungsdatum: 2026-01-14

# Aufgabe 1: Lock-Datei Mechanismus
echo "===== Aufgabe 1 ====="

LOCKFILE="/tmp/onego"

# Kontrolliere, ob die Datei /tmp/onego existiert
if [ -e "$LOCKFILE" ]; then
    # Wenn ja, Warnung anzeigen und Programm beenden
    echo "Warnung: Das Programm läuft bereits!"
    exit 1
else
    # Wenn nein, die Meldung "Alles i.O." anzeigen
    echo "Alles i.O."
fi

# Leere Datei /tmp/onego anlegen
touch "$LOCKFILE"

# Meldung "Ich arbeite nun für Sie" anzeigen
echo "Ich arbeite nun für Sie."

# Benutzer informieren, dass er mit <Enter> beenden kann
echo "Bitte drücken Sie <Enter>, um fortzufahren..."
# Programmablauf mit dem Befehl read unterbrechen
read -r 

# Nach Eingabe von <Enter>, Datei /tmp/onego löschen
rm "$LOCKFILE"
echo "Lock-Datei entfernt."

echo ""

# Aufgabe 2: Konfigurationsdatei erstellen
echo "===== Aufgabe 2 ====="

CONF_FILE="muster.conf"

# Prüfen, ob die Datei schon existiert
if [ -f "$CONF_FILE" ]; then
    # Meldung anzeigen und mit Exit-Status 2 beenden
    echo "Die Datei $CONF_FILE existiert bereits!"
    # Hinweis: Da dies ein Kombi-Skript ist, nutzen wir hier kein 'exit', 
    # damit Aufgabe 3 noch ausgeführt wird.
else
    # Wenn nicht vorhanden, mit cat und Here-Document (<<EOF) erstellen
    cat <<EOF > "$CONF_FILE"
[homes]
comment = Home Directories
valid users = %S
browseable = no
read only = No
inherit acls = Yes
EOF
    echo "Konfigurationsdatei $CONF_FILE wurde erstellt."
fi

echo ""

# Aufgabe 3: Hauptmenü
echo "===== Aufgabe 3 ====="

echo "Hauptmenü"
echo "--------------------------"
echo "1. Aktueller Benutzername"
echo "2. Aktuelles Datum"
echo "3. Freie Festplattenkapazität"
echo ""

# Benutzer zur Eingabe einer Zahl auffordern
read -p "Bitte eine Zahl eingeben: " WAHL

case $WAHL in
    1)
        # Aktueller Benutzername
        whoami
        ;;
    2)
        # Aktuelles Datum
        date
        ;;
    3)
        # Freie Festplattenkapazität
        df -h /
        ;;
    *)
        # Fehlermeldung, wenn keine Zahl zwischen 1 und 3 eingegeben wurde
        echo "Bitte eine Zahl zwischen 1 und 3 eingeben."
        ;;
esac

echo ""
echo "Skript abgeschlossen."