#!/bin/bash
# ==========================================
# Backup-Skript für EduGame Cloud Migration
# ==========================================

# Verzeichnisse definieren
SETUP_DIR="edugame-setup"
CLOUD_DIR="edugame-cloud"
BACKUP_DIR="$(pwd)/migration_backup"

echo "Start des Migrations-Backups..."
mkdir -p "$BACKUP_DIR"

# 1. Backup Loadbalancer & Websites (Bind Mounts)
echo "[1/4] Stoppe Loadbalancer & Websites..."
cd "$SETUP_DIR" && docker compose down && cd ..

echo "[2/4] Sichere Bind Mounts (Verzeichnis: $SETUP_DIR)..."
tar -czvf "$BACKUP_DIR/edugame-setup.tar.gz" "$SETUP_DIR/"

# 2. Backup Nextcloud & Datenbank (Docker Volumes)
echo "[3/4] Stoppe Nextcloud & MariaDB..."
cd "$CLOUD_DIR" && docker compose down && cd ..

echo "[4/4] Sichere Docker Volumes über temporäre Container..."
# Sichern der Datenbank
docker run --rm -v edugame-cloud_nextcloud_db:/var/lib/mysql -v "$BACKUP_DIR":/backup ubuntu tar cvf /backup/nextcloud_db_backup.tar /var/lib/mysql
# Sichern der Nextcloud Webdaten
docker run --rm -v edugame-cloud_nextcloud_data:/var/www/html -v "$BACKUP_DIR":/backup ubuntu tar cvf /backup/nextcloud_data_backup.tar /var/www/html

# Docker-Compose Konfiguration sichern
cp "$CLOUD_DIR/docker-compose.yml" "$BACKUP_DIR/docker-compose-nextcloud.yml"

echo "=========================================="
echo "Backup abgeschlossen! Alle Dateien liegen in: $BACKUP_DIR"
echo "Bitte übertrage diesen Ordner nun auf die neue VM (z.B. mit: scp -r migration_backup/ dockernew@192.168.56.126:/home/dockernew/)."