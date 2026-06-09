#!/bin/bash

# 1. Sicherstellen, dass das Skript mit Root-Rechten ausgeführt wird
if [ "$EUID" -ne 0 ]; then 
  echo "Bitte führe das Skript mit sudo aus."
  exit
fi

echo "--- Starte Docker-Installation ---"

# 2. Paketindex aktualisieren und Abhängigkeiten installieren
echo "Aktualisiere Paketindex..."
apt-get update
apt-get install -y ca-certificates curl gnupg lsb-release

# 3. GPG-Schlüssel hinzufügen
echo "Füge Docker GPG-Schlüssel hinzu..."
# Verhindert Fehlermeldung, falls die Datei bereits existiert
[ -f /usr/share/keyrings/docker-archive-keyring.gpg ] && rm /usr/share/keyrings/docker-archive-keyring.gpg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 4. Repository einrichten
echo "Richte das Repository ein..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# 5. Docker Engine installieren
echo "Installiere Docker Engine..."
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

# 6. Testlauf
echo "Überprüfe Installation mit hello-world..."
docker run hello-world

echo "--- Installation abgeschlossen ---"