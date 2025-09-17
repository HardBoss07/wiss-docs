# Spick Modul 187 – Fokus Linux, Netzwerk & Rechte

## **1. Linux-Basics & Wichtige Befehle**

* **Paketverwaltung (apt):**

  * `sudo apt update` → Paketlisten aktualisieren
  * `sudo apt upgrade` → Pakete aktualisieren
  * `sudo apt install <paket>` → installieren
  * `sudo apt remove/purge <paket>` → deinstallieren
* **Dateibefehle:**

  * `nano`, `vi` → Editoren
  * `touch <file>` → Datei erstellen
  * `cat`, `less`, `head`, `tail` → Dateien anzeigen
  * `echo "txt" > file` → schreiben

## **2. Dateisysteme & Partitionierung**

* **Dateisysteme:**

  * FAT32: max. 4 GB, sehr kompatibel
  * NTFS: Windows, Rechte, große Dateien
  * EXT4: Standard Linux
  * Btrfs/ZFS: Snapshots, Server
* **Partitionstabellen:**

  * MBR: max. 2 TB, 4 primär
  * GPT: modern, > 2 TB, bis 128

## **3. Linux-Verzeichnisse**

* `/bin` → Befehle
* `/sbin` → Admin-Befehle
* `/etc` → Konfigs
* `/home` → User-Daten
* `/var` → Logs, DBs
* `/tmp` → temporär
* `/usr` → Programme
* `/dev` → Geräte

## **4. Benutzer & Gruppen**

* `sudo adduser alice` → User anlegen
* `sudo groupadd projekt` → Gruppe anlegen
* `sudo usermod -aG projekt alice` → User hinzufügen
* `id alice` / `groups alice` → prüfen
  Achtung: Ohne `-a` → alte Gruppen überschrieben

## **5. Dateirechte & chmod**

* **Rechtearten:**

  * r = read (lesen)
  * w = write (schreiben)
  * x = execute (ausführen)

* **Aufbau `ls -l`:**

  ```
  -rw-r--r-- 1 user gruppe ...
  ```

  * 1. Zeichen: `-` Datei, `d` Ordner
  * Besitzer | Gruppe | andere

* **Symbolisch ändern:**

  * `chmod u+x datei` → User darf ausführen
  * `chmod g-w datei` → Gruppe Schreibrecht weg
  * `chmod o+r datei` → Andere dürfen lesen

* **Numerisch (Oktal):**

  * 4 = r, 2 = w, 1 = x
  * Summe pro Gruppe:

    * 7 = rwx
    * 6 = rw-
    * 5 = r-x
    * 4 = r--
  * `chmod 755 datei` = rwx r-x r-x

* **Eigentümer ändern:**

  * `chown user:gruppe datei`
  * `chgrp gruppe datei`

## **6. Netzwerk & Internet**

* **IP-Parameter:**

  * IP = Adresse
  * Maske = Netzbereich
  * Gateway = Router
  * DNS = Name ↔ IP
* **Tools:**

  * `ip a` → Interfaces
  * `ip route` → Routing
  * `ping 8.8.8.8` → Verbindung
  * `dig domain` → DNS-Check
  * `ss -tulwn` → offene Ports
* **Firewall (ufw):**

  * `ufw enable`
  * `ufw allow ssh`
  * `ufw deny 80/443`
  * `ufw reset`

## **7. Prozesse, Ressourcen & Logs**

* `ps aux | less` → Prozesse
* `top` / `htop` → CPU/RAM-Last
* `kill -9 <PID>` → beenden
* `free -h` → RAM
* `df -h` → Speicher
* `du -h --max-depth=1 /` → Platzfresser
* `/var/log/syslog` → Logs

## **8. Lizenzen**

* **Proprietär:** geschlossen, kostenpflichtig
* **Free Software:** 4 Freiheiten (nutzen, ändern, weitergeben)
* **Open Source:** Code offen, Lizenzabhängig (MIT, GPL)
* **Freeware:** kostenlos, nicht offen
* **Shareware:** Test, dann zahlen
* **Public Domain:** frei, keine Einschränkung
* **Kommerziell:** bezahlt, eingeschränkt
* **EULA:** Vertrag → legt Nutzungsrechte fest