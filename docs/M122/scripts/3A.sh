#!/bin/bash

echo "====== 3A-1 ======"

BASE="./student1/diverses"
mkdir -p "$BASE"

touch "$BASE/DateiA" "$BASE/DateiB" "$BASE/DateiC" "$BASE/DateiD"

ls -l "$BASE" > ./student1/diverses_vorher

touch "$BASE/DateiE"
rm -f "$BASE/DateiD"

echo "Testwort" > "$BASE/DateiA"

ls -l "$BASE" > ./student1/diverses_nachher

diff -e ./student1/diverses_vorher ./student1/diverses_nachher

echo "====== 3A-2 ======"

# skip for now
# find / -name *config* 2>/dev/null > ./student1/find_config

echo "====== 3A-3 ======"

grep '^/etc' ./student1/find_config
echo "Anzahl Zeilen:"
grep '^/etc' ./student1/find_config | wc -l

echo "====== 3A-4 ======"

ls -l /etc | less

echo "====== 3A-5 ======"

grep '^[^#]' /etc/services | awk '$2 ~ /tcp/ && $1 ~  /^g/' > tmp_services
sort tmp_services
rm tmp_services

echo "====== 3A-6 ======"

du -k /* 2>/dev/null | sort -nr