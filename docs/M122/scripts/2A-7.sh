#!/bin/bash

echo "A) Pfad zur Hostname-Datei:"
find /etc -name hostname 2>/dev/null

echo -e "\nB) Dateien in /etc, die mit 'ssh' beginnen:"
ls -d /etc/ssh* 2>/dev/null

echo -e "\nC) Dateien in deinem Home, die heute (innerhalb 24h) geändert wurden:"
find ~ -type f -mmin -1440 2>/dev/null

echo -e "\nD) Installierte Shells (laut /etc/shells):"
cat /etc/shells | grep '^/'