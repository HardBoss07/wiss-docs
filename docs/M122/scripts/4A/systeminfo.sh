#!/bin/bash

echo "Name des Computers: $(hostname)"
echo "Heimverzeichnis: $HOME"
echo "Aktuelles Verzeichnis: $(pwd)"
echo "Benutzername: ${USER:-$USERNAME}"
