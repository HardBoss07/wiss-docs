# Modul 187

## Aufgaben

### 187-01A - 02.00

#### Variante 1
1. CMOS-Batterie
2. ATX-Kabel (Strom)
3. CPU
4. RAM
5. PCI-Express Slots (Grafikkarte und andere Erweiterungen)
6. SATA-Kabel
7. NVMe M.2-SSD

#### Variante 2
1. PS/2-Tastatur & Maus
2. USB 2.0 Typ-A
3. USB 3.1 G2 Typ-A
4. USB 3.1 G2 Typ-C
5. Displayport
6. HDMI
7. Netzwerkanschluss (RJ45)
8. USB 3.1 G1 Typ-A
9. Audio-Analog
10. Audio-Digital

### 187-01B - 02.00
- Geräte-Manager (device manager)
- Systeminformationen (msinfo)
- Direct-X Diagnoseprogramm (dxdiag)

### 187-01C - 00.00

- Beleuchtung
    - Tageslicht nutzen, Blendung vermeiden
    - Gleichmäßige, flimmerfreie Beleuchtung

- Bildschirm
    - Oberkante auf Augenhöhe
    - Abstand 50–70 cm
    - Entspiegelt, richtige Helligkeit

- Bürotisch
    - Genügend Platz
    - Höhenverstellbar ideal
    - Matte Oberfläche

- Bürostuhl
    - Höhenverstellbar, Füße flach am Boden
    - Rückenlehne mit Lendenstütze
    - Armlehnen auf Tischhöhe

- Maus/Tastatur
    - Ergonomisch, Handgelenke gerade
    - Tastatur flach
    - Maus nah am Körper

- Weitere Maßnahmen
    - Pausen & Bewegung
    - 20-20-20-Regel für Augen
    - Genug trinken

- Eigener Arbeitsplatz
    - Ergonomischer Stuhl
    - Bildschirm statt nur Laptop
    - Kabel ordentlich
    - Steh-/Sitzwechsel möglich

### 187-01D - 00.00

#### Lizenzmodelle
| Modell              | Beschreibung                                                                                                          |
| ------------------- | --------------------------------------------------------------------------------------------------------------------- |
| Proprietäre Lizenz  | Closed Source Software, kein Zugriff auf den Source-Code, Distribution und Modifikation in der Regel verboten         |
| Free Software       | Software, die die vier Freiheiten (Benutzung, Untersuchung, Weitergabe, Veränderung) gewährt; Source-Code meist offen |
| Open Source Lizenz  | Source-Code offen, darf genutzt, verändert und verteilt werden; Offenlegung bleibt bei Weitergabe Pflicht             |
| Shareware           | Software darf kostenlos getestet werden, volle Nutzung meist nur nach Bezahlung                                       |
| Freeware            | Kostenlos nutzbare Software, jedoch ohne Garantie auf Offenlegung des Source-Codes                                    |
| Public Domain       | Software ohne Urheberrechtsschutz, frei nutzbar, veränderbar und weitergebbar                                         |
| Kommerzielle Lizenz | Software wird gegen Bezahlung lizenziert; Nutzung nur im Rahmen der Lizenzbedingungen erlaubt                         |


#### Gegenüberstellung der Lizenzmodelle
| Lizenzmodell        | Quellcode              | Kosten                               | Nutzungsfreiheit            | Weitergabe/Modifikation                           | Zielgruppe            |
| ------------------- | ---------------------- | ------------------------------------ | --------------------------- | ------------------------------------------------- | --------------------- |
| Proprietär          | Geschlossen            | Kostenpflichtig                      | Stark eingeschränkt         | Meist verboten                                    | Endnutzer, Firmen     |
| Free Software       | Offen                  | Oft kostenlos                        | Sehr hoch (vier Freiheiten) | Erlaubt & erwünscht                               | Entwickler, Community |
| Open Source         | Offen                  | Kostenlos / kostenpflichtig möglich  | Hoch                        | Je nach Lizenz (z. B. MIT frei, GPL restriktiver) | Entwickler, Firmen    |
| Shareware           | Geschlossen            | Erst kostenlos, dann kostenpflichtig | Eingeschränkt (Testversion) | Nicht erlaubt                                     | Privatnutzer          |
| Freeware            | Geschlossen            | Kostenlos                            | Nutzung erlaubt             | Meist nicht erlaubt                               | Privatnutzer          |
| Public Domain       | Offen oder geschlossen | Kostenlos                            | Komplett frei               | Erlaubt ohne Einschränkung                        | Alle                  |
| Kommerzielle Lizenz | Geschlossen            | Kostenpflichtig                      | Eingeschränkt               | Nicht erlaubt                                     | Firmen, Profis        |

#### EULA - Was ist das?
EULA steht für End User License Agreement

* Die EULA ist ein Vertrag zwischen Software-Hersteller und Nutzer.
* Sie definiert rechtlich verbindlich, was man mit der Software darf (z. B. Installation, Nutzung auf einem Gerät, keine Weitergabe).
* Sie betrifft vor allem proprietäre und kommerzielle Software, weniger Open-Source.
* Problem: Die meisten Leute stimmen zu, ohne die EULA zu lesen.

#### Welche Erfahrung habe ich mit Lizenzen bereits gehabt?
- EULAs / AGBs in Spielen und Webseiten
- Creative Commons Lizenz bei Bildern und Musik
- GNU General Purpose / MIT Lizenz bei Verbreitung eigener Software
- GNU General Purpose / MIT / Apache Lizenz bei Download von Libraries / Software

#### Erweiterte Lernziele
- Wichtigste Betriebssysteme:
  - OSX (MacOS)
  - Linux
  - Windows
- Betriebssystem verwaltet alle Komponente miteinander und macht den Computer nutzbar

> SSH: **S**ecure **Sh**ell

### 187-02A - 00.00
- Typ-1-Hypervisoren (Bare-Metal), die direkt auf der Hardware installiert sind
- Typ-2-Hypervisoren, die auf einem bestehenden Betriebssystem laufen.

### 187-02A - 01.00
| Begriff             | Beschreibung                                                                                                                                                                                                       |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Gast Betriebssystem | Das Betriebssystem, das innerhalb der virtuellen Maschine läuft. Es wird vom Hypervisor verwaltet und nutzt virtuelle Hardware (z. B. virtuelle CPU, RAM, Festplatten).                                            |
| Hypervisor          | Die Virtualisierungssoftware, die zwischen Host-Hardware und Gastbetriebssystem(en) vermittelt. Sie stellt den VMs die virtuelle Hardware bereit und verwaltet Ressourcen. Beispiele: VirtualBox, VMware, Hyper-V. |
| Host Betriebssystem | Das Betriebssystem, das direkt auf der physischen Hardware installiert ist und den Hypervisor (bei Typ-2-Hypervisoren) ausführt. Beispiel: Windows, Linux oder macOS.                                              |
| Hardware            | Die physische Grundlage des Systems, also Prozessor, Arbeitsspeicher, Festplatten und Netzwerkkarten. Diese Ressourcen werden vom Hypervisor an die VMs verteilt.                                                  |

### 187-03A - 01.00
| Befehl                             | Bedeutung                                                             |
|------------------------------------|-----------------------------------------------------------------------|
| sudo apt update                    | Aktualisiert die Paketlisten (weiß, welche Versionen verfügbar sind). |
| sudo apt upgrade                   | Aktualisiert alle installierten Pakete auf die neuesten Versionen.    |
| sudo apt install <paketname>       | Installiert ein Paket.                                                |
| sudo apt remove <paketname>        | Entfernt ein Paket, Konfigurationsdateien bleiben.                    |
| sudo apt purge <paketname>         | Entfernt ein Paket inkl. Konfigurationsdateien.                       |
| apt search <suchbegriff>           | Sucht nach Paketen in den Paketquellen.                               |
| apt show <paketname>               | Zeigt detaillierte Informationen zu einem Paket.                      |
| apt list <suchbegriff> --installed | Zeigt installierte Pakete, bei denen der Suchbegriff vorkommt.        |

### 187-03A - 02.00
- Unterschied von `sudo apt update` und `sudo apt upgrade`:
  - `update`: Update der Paketlisten von hinterlegten Paketquellen
  - `upgrade`: Installierte Pakete auf die neuste Version bringen (das Neue wirklich installieren)
- Was ist der Vorteil von einem Paketmanagers im Vergleich zu normaler Installation:

| Vorteil                       | Beschreibung                                                         |
| ----------------------------- | -------------------------------------------------------------------- |
| Automatische Abhängigkeiten   | Fehlende Bibliotheken werden automatisch mit installiert.            |
| Zentrale Updates              | Alle Programme können mit einem einzigen Befehl aktualisiert werden. |
| Sicherheit                    | Pakete stammen aus geprüften und vertrauenswürdigen Quellen.         |
| Systemintegration             | Software wird korrekt ins System eingebunden (Pfad, Menüs, Dienste). |
| Einfachheit und Zeitersparnis | Installation, Update und Entfernung sind schneller und konsistenter. |

### 187-03B - 00.00
* Mit `lsblk` kann man die vorhandenen Blockgeräte und Partitionen sehen.
* Mit `df -Th` kann man die eingehängten Dateisysteme inkl. Typ und Speicherverbrauch anzeigen.
* In einer Standard-Ubuntu-VM sieht man typischerweise:

  * eine Partition mit ext4 (`/`)
  * evtl. eine kleine EFI-Partition (FAT32, wenn UEFI)
  * eine Swap-Partition oder Swap-Datei

#### Vergleich der Dateisysteme
| Dateisystem | Vorteile                                                                 | Nachteile                                                          | Typische Verwendung                                     |
| ----------- | ------------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------- |
| FAT32       | Sehr kompatibel (fast alle Betriebssysteme unterstützen es), einfach     | Keine Dateien >4 GB, keine Journaling- oder Sicherheitsfunktionen  | USB-Sticks, SD-Karten, Datenaustausch zwischen Systemen |
| NTFS        | Unterstützt große Dateien/Partitionen, Rechte- und Journaling-Funktionen | Volle Unterstützung nur unter Windows, Linux/Mac nur eingeschränkt | Windows-Systemlaufwerke, externe Festplatten            |
| EXT4        | Standard unter Linux, stabil, Journaling, effizient mit großen Dateien   | Kaum Unterstützung unter Windows/Mac ohne Zusatzsoftware           | Linux-Systemlaufwerke, Server, virtuelle Maschinen      |

### 187-03B - 01.00

#### Was ist ein Dateisystem?
* Struktur zur Organisation von Daten auf Speichermedien
* Legt fest: Dateinamen, Speicherort, Zugriffsrechte, Attribute
* Ohne Dateisystem: Festplatte nur „Rohdaten“

#### Überblick Dateisysteme
* FAT32: sehr kompatibel, max. 4 GB Datei, 2 TB Partition -> USB/SD
* NTFS: Standard Windows, große Dateien, Rechteverwaltung -> Windows/Externe Platten
* EXT4: Standard Linux, Journaling, stabil -> Linux-Systeme
* Btrfs: modern, Snapshots, Subvolumes -> flexible Systeme
* ZFS: robust, Datenintegrität, riesige Datenmengen -> Server/NAS

#### Dateisysteme im Vergleich
| Dateisystem | Kompatibilität               | Max. Datei | Besonderheiten                 | Typische Nutzung         |
| ----------- | ---------------------------- | ---------- | ------------------------------ | ------------------------ |
| FAT32       | Sehr hoch (alle Systeme)     | 4 GB       | Einfach, ohne Rechteverwaltung | USB-Sticks, SD-Karten    |
| NTFS        | Windows, Linux eingeschränkt | > 16 TB    | Rechte, Journaling             | Windows, externe Platten |
| EXT4        | Linux                        | 16 TB      | Journaling, stabil             | Linux-Systeme/Server     |
| Btrfs       | Linux                        | 16 EB      | Snapshots, Subvolumes          | Tests, flexible Systeme  |
| ZFS         | Linux, BSD, Solaris          | 16 EB+     | Datenintegrität, Snapshots     | Server, NAS              |

#### Partitionierungsarten
* Primär: max. 4, für OS oder Dateisystem
* Erweitert: Container für logische Partitionen
* Logisch: innerhalb erweitert, flexible Aufteilung

#### MBR & GPT
* MBR: älter, max. 4 primäre Partitionen, < 2 TB
* GPT: moderner Standard, bis 128 Partitionen, > 2 TB, für UEFI

### 187-03C - 00.00
| Schritt                       | Befehl                                     | Beschreibung / Hinweis                                                                           |
| ----------------------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| Partitionen anzeigen          | `lsblk`                                    | Zeigt alle Festplatten und Partitionen                                                           |
| Partitionen überprüfen        | `sudo fdisk -l`                            | Listet Details zu Partitionen und Größe auf                                                      |
| Neue Partition erstellen      | `sudo fdisk /dev/sdX`                      | `X` = Laufwerksbuchstabe, interaktiv: `n` für neue Partition, `w` zum Speichern                  |
| Partition formatieren         | `sudo mkfs.ext4 /dev/sdX1`                 | Erstellt ein EXT4-Dateisystem auf der neuen Partition (passt auch andere FS an z.B. `mkfs.ntfs`) |
| Mountpoint erstellen          | `sudo mkdir /mnt/meinePartition`           | Erzeugt ein Verzeichnis, an dem die Partition eingebunden wird                                   |
| Partition einbinden           | `sudo mount /dev/sdX1 /mnt/meinePartition` | Mountet die Partition ins System                                                                 |
| Mount testen                  | `df -Th`                                   | Zeigt eingebundene Partitionen und Dateisysteme                                                  |
| Automatisch beim Boot mounten | `sudo nano /etc/fstab`                     | Neue Partition hier eintragen, z. B.: `/dev/sdX1 /mnt/meinePartition ext4 defaults 0 2`          |

### 187-04A - 00.00

* Dateisystem = Bibliothek:
  * Ordner = Regale
  * Dateien = Bücher
* Wichtige Werkzeuge:
  * nano: einfacher Editor
  * vi: mächtiger Editor (Basisbefehle lernen)
  * touch, cat, more, less, head, tail, file: Dateien erstellen, anzeigen, Infos prüfen
  * echo: Text direkt in Dateien schreiben
* Hinweis: Oft nur Konsole verfügbar, Übung soll Scheu nehmen

#### Erwartete Lernergebnisse
* Dateien mit nano bearbeiten
* Grundbefehle von vi kennen
* Dateien mit touch, cat, more, less, head, tail, file, echo erstellen und anzeigen
* Unterschied zwischen Anzeigen und Editieren verstehen

### 187-04B - 04.00
| Verzeichnis | Beschreibung                                                      |
| ----------- | ----------------------------------------------------------------- |
| /bin        | Wichtige Systemprogramme und Befehle für alle Benutzer            |
| /sbin       | Systemprogramme, meist für Root-Benutzer                          |
| /dev        | Gerätedateien für Hardware (Festplatten, USB, Terminals)          |
| /etc        | Systemweite Konfigurationsdateien                                 |
| /home       | Persönliche Verzeichnisse der Benutzer                            |
| /lib        | Systembibliotheken für Programme in /bin und /sbin                |
| /media      | Einhängepunkte für Wechselmedien (USB, CDs)                       |
| /mnt        | Temporäre Einhängepunkte für Partitionen oder Laufwerke           |
| /opt        | Optionale Softwarepakete oder Zusatzprogramme                     |
| /proc       | Virtuelles Dateisystem mit Informationen über Prozesse und Kernel |
| /run        | Temporäre Laufzeitdaten, z. B. Prozess- oder Socketinformationen  |
| /srv        | Daten für vom System bereitgestellte Dienste (Webserver, FTP)     |
| /sys        | Virtuelles Dateisystem für Kernel- und Hardwareinformationen      |
| /tmp        | Temporäre Dateien, oft beim Neustart gelöscht                     |
| /usr        | Nutzerprogramme, Bibliotheken und Hilfsprogramme                  |
| /var        | Variable Dateien wie Logfiles, Spool-Dateien und Datenbanken      |

### 187-05A - 02.00

#### Benutzer erstellen
| Befehl                   | Wirkung / Hinweis                                                                                  |
| ------------------------ | -------------------------------------------------------------------------------------------------- |
| `sudo useradd testuser1` | Legt Benutzer minimal an, kein Home-Verzeichnis, keine Shell, Passwort muss separat gesetzt werden |
| `sudo adduser testuser2` | Legt Benutzer interaktiv an, erstellt Home-Verzeichnis, fragt Passwort und weitere Infos ab        |

**Prüfen:**
`tail -n 2 /etc/passwd`

#### Passwörter setzen / ändern
| Befehl                  | Wirkung / Hinweis                                             |
| ----------------------- | ------------------------------------------------------------- |
| `sudo passwd testuser1` | Passwort setzen oder ändern                                   |
| `sudo passwd testuser2` | Passwort setzen oder ändern, auch interaktive Prüfung möglich |

* Komplexe Passwörter werden bevorzugt akzeptiert.
* Einfache Passwörter können Warnungen erzeugen.

#### Gruppe erstellen
| Befehl                         | Wirkung / Hinweis                        |
| ------------------------------ | ---------------------------------------- |
| `sudo groupadd projektgruppe1` | Minimal, erstellt nur die Gruppe         |
| `sudo addgroup projektgruppe2` | Komfortabel, kann direkt Optionen setzen |

**Prüfen:**
`tail -n 2 /etc/group`

#### Benutzer zu Gruppen hinzufügen
| Befehl                                      | Wirkung / Hinweis                                                        |
| ------------------------------------------- | ------------------------------------------------------------------------ |
| `sudo usermod -aG projektgruppe1 testuser1` | Fügt Benutzer testuser1 zur Gruppe hinzu, ohne alte Gruppen zu entfernen |
| `sudo usermod -aG projektgruppe2 testuser2` | Fügt Benutzer testuser2 zur Gruppe hinzu                                 |

**Prüfen:**
`groups testuser1`
`groups testuser2`

* **Experiment:** Benutzer in mehrere Gruppen aufnehmen.
* **Ohne `-a`**: Vorherige Gruppen werden überschrieben.

#### Überprüfung
| Befehl         | Wirkung / Hinweis                       |
| -------------- | --------------------------------------- |
| `id testuser1` | Zeigt UID, GID, Gruppenmitgliedschaften |
| `id testuser2` | Zeigt UID, GID, Gruppenmitgliedschaften |

**Vergleich:**
* `useradd` vs. `adduser`: `adduser` legt Home-Verzeichnis, Shell und Passwortdialog an.
* `groupadd` vs. `addgroup`: `addgroup` komfortabler, evtl. zusätzliche Optionen.

### 187-06A - 01.00
#### Netzwerkeinstellungen
| Einstellung  | Beschreibung                                                                    |
| ------------ | ------------------------------------------------------------------------------- |
| IP-Adresse   | Eindeutige Adresse eines Geräts im Netzwerk. Ermöglicht Kommunikation.          |
| Subnetzmaske | Legt fest, welcher Adressbereich zum lokalen Netzwerk gehört.                   |
| Gateway      | Router-Adresse, über die Geräte das lokale Netzwerk verlassen.                  |
| DNS          | Übersetzt Domainnamen in IP-Adressen, z. B. `www.example.com` -> `93.184.216.34` |

#### Netzwerkkonfiguration
| Methode            | Beschreibung / Vorgehensweise                                       | Vor- und Nachteile                                                      |
| ------------------ | ------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| **Grafisch (GUI)** | Netzwerkmanager, Systemeinstellungen, Eingabe über Dialogfelder     | + Einfache Bedienung <br> - Weniger flexibel, oft nur lokale Änderungen |
| **Konsole (CLI)**  | Editieren von `/etc/netplan/*.yaml`, `ip addr`, `nmcli`, `ifconfig` | + Flexibel, Skripte möglich <br> - Fehleranfällig, erfordert Wissen     |

#### Unterschiede und Reflexion
* GUI ist intuitiv, für schnelle Änderungen geeignet, aber oft beschränkt auf das aktuelle System.
* CLI erfordert Grundwissen, bietet aber volle Kontrolle, Automatisierung und Remote-Konfiguration.
* Kenntnis beider Methoden ist sinnvoll: GUI für einfache Aufgaben, CLI für professionelle Administration.

### 187-06B - 02.00

#### Linux-Befehle
| Befehl | Beschreibung                                                                                                  | Einfaches Beispiel                                                                              |
| ------ | ------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `ip`   | Zeigt Netzwerkinterfaces, IP-Adressen, Routing-Tabellen und Verbindungen. Kann auch Interfaces konfigurieren. | `ip a` -> Zeigt alle Interfaces und IP-Adressen <br> `ip route` -> Zeigt aktuelle Routing-Tabelle |
| `ping` | Prüft die Erreichbarkeit eines Hosts im Netzwerk. Sendet ICMP-Echo-Requests und zeigt Antwortzeiten.          | `ping 8.8.8.8` -> Prüft Verbindung zu Google DNS <br> `ping -c 4 8.8.8.8` -> Sendet nur 4 Pakete  |
| `dig`  | DNS-Abfragen durchführen, um IP-Adressen zu Domainnamen oder umgekehrt zu prüfen.                             | `dig example.com` -> Zeigt Standard-DNS-Abfrage <br> `dig example.com A` -> Zeigt A-Record (IPv4) |

#### Hinweise zum Troubleshooting
* `ip a` -> Prüfen, ob Interface aktiv und IP korrekt ist
* `ping` -> Prüfen, ob Ziel erreichbar ist, Netzwerkverbindung läuft
* `dig` -> Prüfen, ob DNS richtig aufgelöst wird

### 187-06C - 02.00
1. Ports
* `ss -tulwn` -> aktive Dienste
* Risiko: unnötige Ports schließen

2. Firewall
* `ufw enable`
* `ufw allow ssh`
* `ufw deny 80/443` -> Web blockiert
* `ufw reset`

3. Virenscanner
* `apt install clamav`
* `clamscan -r /home/student`
* Ergebnis: OK / FOUND

4. Reflexion
* **Präventiv:** Firewall, Updates, Echtzeit-AV
* **Reaktiv:** Scan, Logs, Incident Response
* **Unternehmen:** Segmentierung, zentrale Firewall, Monitoring, Backups, MFA

### 187-07A - 02.00
1. Prozesse & Ressourcen
* `ps aux | less` -> alle Prozesse anzeigen
* `top` / `htop` -> CPU-Last beobachten
* `kill -9 <PID>` -> Prozess mit hoher Last beenden
* Unterschied Prozess vs. Service -> Prozess = laufendes Programm, Service = Hintergrunddienst, meist dauerhaft aktiv

2. Ressourcen belasten
* `apt install stress`
* `stress --cpu 2 --timeout 20` -> CPU-Auslastung erzeugen
* Parallel `htop` -> hohe CPU-Last sichtbar
* Load Average -> Durchschnittsauslastung über Zeit; kritisch, wenn dauerhaft höher als CPU-Kerne

3. Speicherplatz & Dateisystem
* `du -h --max-depth=1 /` -> grösster Platzverbraucher finden
* `fallocate -l 1G bigfile.img` -> Testdatei erstellen, mehrfach wiederholen bis Platte voll
* Beobachtung: System wird langsam/instabil
* Folgen:
  * `/var/log` voll -> keine Logs mehr, Fehleranalyse erschwert
  * `/home` voll -> User können keine Dateien speichern

4. Services & Systemkontrolle
* `systemctl status ssh` -> Status prüfen
* `systemctl stop/start ssh` -> Dienst anhalten / starten
* Unterschied: `stop` = Dienst sofort anhalten, `disable` = verhindert Start beim Booten
* `systemctl disable ssh` -> Dienst beim Boot deaktiviert
* `systemctl enable ssh` -> Dienst wieder dauerhaft aktivieren

5. Systemleistung & Logs
* `free -h` -> RAM & Swap prüfen
* `uptime` -> Load Average prüfen
* Hoher Load Average kritisch, wenn höher als CPU-Anzahl über längere Zeit
* `/var/log/syslog` -> Logs analysieren (Info, Warning, Error)
* Aufbau: Zeitstempel, Hostname, Prozess, Nachricht

6. Systematische Fehleranalyse
* **Langsames System**
  * Prozesse prüfen (`top`, `htop`)
  * RAM / Swap prüfen (`free -h`)
  * Speicherplatz prüfen (`df -h`)
  * Logs durchsuchen (`/var/log/syslog`)
  * Engpass eingrenzen und beheben

* **Dienst nicht verfügbar**
  * `ping <Server>` -> Netzwerk prüfen
  * `systemctl status <dienst>` -> Dienststatus prüfen
  * Ports testen (`ss -tulwn`)
  * Logs prüfen (`journalctl -u <dienst>`)
  * Dienst neu starten / konfigurieren
