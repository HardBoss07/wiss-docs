#!/bin/bash
# Programm: new.sh
# Beschreibung: Erstellt neues Skript mit Header (fügt .sh automatisch hinzu)
# Aufruf: ./new.sh <dateiname>
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-14
# Aenderung:
# Aenderungsdatum: 2026-01-14

if [ -z "$1" ]; then
    echo "Fehler: Bitte gib einen Namen für das Skript an."
    exit 1
fi

INPUT=$1
if [[ "$INPUT" == *.sh ]]; then
    DATEINAME="$INPUT"
else
    DATEINAME="${INPUT}.sh"
fi

AKTUELL_DATUM=$(date +%Y-%m-%d)

cat <<EOF > "$DATEINAME"
#!/bin/bash
# Programm: $DATEINAME
# Beschreibung: 
# Aufruf: ./$DATEINAME
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: $AKTUELL_DATUM
# Aenderung:
# Aenderungsdatum: $AKTUELL_DATUM

EOF

chmod +x "$DATEINAME"

echo "Datei '$DATEINAME' wurde erstellt und ausführbar gemacht."