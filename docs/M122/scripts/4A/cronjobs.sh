#!/bin/bash

# Beispiel-Skript, das aufgerufen werden soll
SCRIPT="/home/student1/scripts/test_script.sh"

# Cron-Zeile für 3 Uhr morgens
CRON_LINE="0 3 * * * $SCRIPT >/dev/null 2>&1"

# CronJob hinzufügen (nur, falls nicht schon vorhanden)
(crontab -l 2>/dev/null | grep -v -F "$SCRIPT" ; echo "$CRON_LINE") | crontab -
echo "CronJob für 3 Uhr morgens hinzugefügt."

# CronJob der alle 5 Minuten läuft

SCRIPT="/home/student1/scripts/test_script2.sh"
CRON_LINE="*/5 * * * * $SCRIPT >/dev/null 2>&1"

(crontab -l 2>/dev/null | grep -v -F "$SCRIPT" ; echo "$CRON_LINE") | crontab -
echo "CronJob für alle 5 Minuten hinzugefügt."