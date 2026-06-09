#!/bin/bash
# ==========================================
# Restore-Skript für EduGame Cloud Migration
# ==========================================

BACKUP_DIR="$(pwd)/migration_backup"
CLOUD_DIR="edugame-cloud"

echo "Start der Wiederherstellung aus $BACKUP_DIR..."

# 1. Restore Loadbalancer & Websites (Bind Mounts)
echo "[1/4] Entpacke Loadbalancer & Website Setup..."
tar -xzvf "$BACKUP_DIR/edugame-setup.tar.gz"

echo "[2/4] Starte Loadbalancer & Websites..."
cd edugame-setup && docker compose up -d && cd ..

# 2. Restore Nextcloud & Datenbank (Docker Volumes)
echo "[3/4] Erstelle und fülle Nextcloud Docker Volumes..."
mkdir -p "$CLOUD_DIR"
cp "$BACKUP_DIR/docker-compose-nextcloud.yml" "$CLOUD_DIR/docker-compose.yml"

# Leere Volumes für Nextcloud anlegen
docker volume create edugame-cloud_nextcloud_db
docker volume create edugame-cloud_nextcloud_data

# Daten in die Volumes entpacken
docker run --rm -v edugame-cloud_nextcloud_db:/recover -v "$BACKUP_DIR":/backup ubuntu bash -c "cd /recover && tar xvf /backup/nextcloud_db_backup.tar --strip 1"
docker run --rm -v edugame-cloud_nextcloud_data:/recover -v "$BACKUP_DIR":/backup ubuntu bash -c "cd /recover && tar xvf /backup/nextcloud_data_backup.tar --strip 1"

echo "[4/4] Starte Nextcloud & MariaDB..."
cd "$CLOUD_DIR" && docker compose up -d && cd ..

echo "=========================================="
echo "Migration erfolgreich abgeschlossen!"
echo "Bitte prüfe die Erreichbarkeit unter Port 80 (Websites) und Port 8080 (Nextcloud)."