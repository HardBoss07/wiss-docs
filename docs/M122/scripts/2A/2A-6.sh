#!/bin/bash

# Variablen definieren
base_dir="6/"
quelle="${base_dir}quelle"
ziel="${base_dir}ziel"

mkdir "$base_dir"
mkdir -p "$quelle" "$ziel"

cd "$quelle"

for ((i=1; i<=5; i++))
do
    touch "doku$i"
done

cd - > /dev/null

for i in 1 2; do
    rm "${quelle}/doku$i"
done

echo "Verarbeite restliche Dateien..."
for file in "${quelle}"/doku*; do
    if [ -f "$file" ]; then
        num="${file##*doku}"
        
        mv "$file" "${ziel}/dokument$num"
        echo "Verschoben und umbenannt: doku$num -> dokument$num"
    fi
done

echo "Fertig! Inhalt von $ziel:"
ls "$ziel"