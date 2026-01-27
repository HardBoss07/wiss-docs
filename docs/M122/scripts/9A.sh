#!/bin/bash
# Programm: 9A.sh
# Beschreibung: Erstellt eine Kleidungsempfehlung fuer verschiedene Orte basierend auf dem aktuellem Wetter und schreibt diese in ein Logbuch
# Aufruf: ./9A.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-21
# Aenderung:
# Aenderungsdatum: 2026-01-21

# --- Konfiguration ---
EXTREME_COLD_LIMIT=-15
FREEZING_LIMIT=0
COLD_LIMIT=10
WARM_LIMIT=20
LOG_FILE="9A.csv"

# Liste der Orte: "Name;Breitengrad;Längengrad"
CITIES=(
    "Zuerich;47.37;8.54"
    "Berlin;52.52;13.40"
    "Bangkok;13.75;100.50"
    "Arktis;-82.86;135.00"
    "London;51.51;-0.13"
    "Tokio;35.69;139.69"
    "NewYork;40.71;-74.01"
    "Oslo;59.91;10.75"
)

# Prüfen, ob die Datei existiert. Wenn nicht, Header schreiben.
if [ ! -f "$LOG_FILE" ]; then
    echo "Zeitstempel;Stadt;Temperatur;Empfehlung;" > "$LOG_FILE"
fi

echo "--- Starte Wetter-Report für $(date) ---"

# --- Hauptschleife über alle Orte ---
for entry in "${CITIES[@]}"
    do
        # Ort-Details extrahieren (Trennzeichen ist das Semikolon)
        CITY=$(echo "$entry" | cut -d';' -f1)
        LAT=$(echo "$entry" | cut -d';' -f2)
        LON=$(echo "$entry" | cut -d';' -f3)

        # API-URL zusammenbauen
        URL="https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current_weather=true&timezone=auto"

        # Daten abrufen
        RAW_DATA=$(curl -s "$URL")

        if [[ -z "$RAW_DATA" ]]; then
            echo "[$CITY] Fehler: Keine Daten empfangen."
            continue # Springe zum nächsten Ort
        fi

        # Daten filtern & Säubern (tr -d entfernt Newlines)
        TEMP_RAW=$(echo "$RAW_DATA" | grep -o '"temperature":[0-9.-]*' | cut -d':' -f2 | tr -d '\r\n ')
        WCODE=$(echo "$RAW_DATA" | grep -o '"weathercode":[0-9]*' | cut -d':' -f2 | tr -d '\r\n ')
        TEMP_INT=$(echo "$TEMP_RAW" | cut -d'.' -f1)

        # Kleidungsberater Logik
        if [ "$TEMP_INT" -lt "$EXTREME_COLD_LIMIT" ]; then
            ADVICE="Polarausrüstung (Extreme Kaelte)"
        elif [ "$TEMP_INT" -lt "$FREEZING_LIMIT" ]; then
            ADVICE="Dicker Mantel (Gefrierpunkt!)"
        elif [ "$TEMP_INT" -lt "$COLD_LIMIT" ]; then
            ADVICE="Winterjacke (Eisig!)"
        elif [ "$TEMP_INT" -lt "$WARM_LIMIT" ]; then
            ADVICE="Uebergangsjacke (Mild)"
        else
            ADVICE="T-Shirt (Warm)"
        fi

        # Wettercode Check (Regen/Schnee)
        case $WCODE in
            51|53|55|61|63|65|80|81|82) ADVICE="$ADVICE + Regenschirm" ;;
            71|73|75|85|86)             ADVICE="$ADVICE + Schneeschuhe" ;;
        esac

        # Ausgabe für den aktuellen Ort
        printf "%-10s | %6s°C | %s\n" "$CITY" "$TEMP_RAW" "$ADVICE"

        # Logbuch für den aktuellen Ort eintragen
        TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
        echo -e "${TIMESTAMP}; ${CITY}; ${TEMP_RAW}°C; \"${ADVICE}\";" >> "$LOG_FILE"

done

echo "----------------------------------------"
echo "Alle Daten wurden in $LOG_FILE archiviert."