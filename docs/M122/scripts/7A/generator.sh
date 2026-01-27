#!/bin/bash
# Programm: generator.sh
# Beschreibung: Generiert Testdateien mit zufälliger Größe und zufälligem Datum
# Aufruf: ./generator.sh -n [Anzahl] -o [Pfad] -m [MaxAge]
# Optionen: -n (Anzahl), -o (Ausgabepfad), -m (Max. Alter in Tagen)
# Parameter: -
# Autor: Matteo Bosshard
# Version: 0.1.0
# Datum: 2026-01-21
# Aenderung: Skriptkopf angepasst
# Aenderungsdatum: 2026-01-21

function print_usage {
  echo "Hilfe: -n (Anzahl), -o (Pfad), -m (Max. Alter)"
}

while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -n|--count) COUNT="$2"; shift; shift ;;
    -o|--outpath) OUTPUTPATH="$2"; shift; shift ;;
    -m|--maxage) MAXAGE="$2"; shift; shift ;;
    *) echo "Unbekannte Option: $key"; print_usage; exit 1 ;;
  esac
done

[ -z ${COUNT+x} ] && COUNT=3
[ -z ${OUTPUTPATH+x} ] && OUTPUTPATH=$(pwd)
[ -z ${MAXAGE+x} ] && MAXAGE=30

for (( i=0; i<$COUNT; i++ )); do
  filename="${OUTPUTPATH}/Testdatei$((i+1)).bin"
  dayAdjust=$(( ($RANDOM % ($MAXAGE+1)) - $MAXAGE ))
  newDate=$(date -d "$(date +%Y%m%d) $dayAdjust days" +"%Y%m%d")
  
  dd if=/dev/urandom of=$filename bs=1 count=$(( ($RANDOM % 50000 + 1000) )) 2>/dev/null
  touch -d $newDate $filename
done

echo "$COUNT Dateien wurden in $OUTPUTPATH generiert."