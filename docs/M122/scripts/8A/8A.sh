#!/bin/bash
# Programm: 8A.sh
# Beschreibung: Überprüft Speicherauslastung und versendet Warn-E-Mails.
# Aufruf: ./8A.sh
# Optionen: -
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-21
# Aenderung: Aufgabe 8A Gelöst
# Aenderungsdatum: 2026-01-21

# --- Konfiguration ---
THRESHOLD=80
SENDER_EMAIL="deine-email@gmail.com"
SENDER_PW="dein-app-passwort"
RECEIVER_EMAIL="empfaenger@beispiel.com"
SMTP_SERVER="smtp.gmail.com"

TOTAL_KB=$(df / | awk 'NR==2 {print $2}')
USED_KB=$(df / | awk 'NR==2 {print $3}')
FREE_KB=$(df / | awk 'NR==2 {print $4}')

TOTAL_GB=$(echo "scale=2; $TOTAL_KB / 1024 / 1024" | bc)
USED_GB=$(echo "scale=2; $USED_KB / 1024 / 1024" | bc)
FREE_GB=$(echo "scale=2; $FREE_KB / 1024 / 1024" | bc)

USAGE_PERCENT=$(echo "scale=2; $USED_KB * 100 / $TOTAL_KB" | bc)

echo "Aktuelle Auslastung: $USAGE_PERCENT%"

if (( $(echo "$USAGE_PERCENT > $THRESHOLD" | bc -l) )); then
    echo "Warnung: Schwellenwert von $THRESHOLD% überschritten!"
    
    SUBJECT="Warnung: Speicherauslastung kritisch ($USAGE_PERCENT%)"
    MESSAGE="Der Speicherstatus ist kritisch:<br><br>
             <b>Gesamt:</b> $TOTAL_GB GB<br>
             <b>Belegt:</b> $USED_GB GB ($USAGE_PERCENT %)<br>
             <b>Frei:</b> $FREE_GB GB"

    python3 mail.py --mail "$SENDER_EMAIL" \
                    --password "$SENDER_PW" \
                    --receiver "$RECEIVER_EMAIL" \
                    --subject "$SUBJECT" \
                    --message "$MESSAGE" \
                    --smtp "$SMTP_SERVER"
else
    echo "Speicher im grünen Bereich ($USAGE_PERCENT%). Keine Aktion erforderlich."
fi