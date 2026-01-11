> **Hinweis**: Falls ein Command nicht funktioniert → `sudo` davor schreiben

## Lizenzmodelle

| Modell             | Beschreibung                                                              |
| ------------------ | ------------------------------------------------------------------------- |
| Proprietäre Lizenz | Closed Source, kein Zugriff auf Code, Distribution/Modifikation verboten  |
| Free Software      | Vier Freiheiten (Nutzen, Untersuchen, Weitergeben, Ändern), meist offen   |
| Open Source        | Quellcode offen, Nutzung/Änderung/Weitergabe erlaubt, Offenlegung Pflicht |
| Shareware          | Kostenlos testen, volle Nutzung nach Bezahlung                            |
| Freeware           | Kostenlos nutzbar, Source meist nicht offen                               |
| Public Domain      | Ohne Urheberrecht, frei nutzbar/änderbar                                  |
| Kommerziell        | Bezahlpflichtig, Nutzung nur nach Lizenzbedingungen                       |

**Gegenüberstellung**

| Modell        | Quellcode | Kosten            | Freiheit       | Weitergabe/Änderung | Zielgruppe         |
| ------------- | --------- | ----------------- | -------------- | ------------------- | ------------------ |
| Proprietär    | Geschl.   | Kostenpflichtig   | Stark begrenzt | Verboten            | Endnutzer, Firmen  |
| Free Software | Offen     | Oft kostenlos     | Sehr hoch      | Erlaubt & erwünscht | Entwickler         |
| Open Source   | Offen     | Frei/Kosten       | Hoch           | Je nach Lizenz      | Entwickler, Firmen |
| Shareware     | Geschl.   | Test, dann Kosten | Eingeschränkt  | Nicht erlaubt       | Privatnutzer       |
| Freeware      | Geschl.   | Kostenlos         | Nutzung frei   | Meist nicht erlaubt | Privatnutzer       |
| Public Domain | Variabel  | Kostenlos         | Komplett frei  | Ohne Einschränkung  | Alle               |
| Kommerziell   | Geschl.   | Kostenpflichtig   | Eingeschränkt  | Nicht erlaubt       | Firmen             |

## Hypervisor

- **Typ 1**: direkt auf Hardware
- **Typ 2**: läuft auf Host-OS

| Begriff    | Beschreibung                                                      |
| ---------- | ----------------------------------------------------------------- |
| Gast-OS    | Läuft in VM, nutzt virtuelle HW                                   |
| Hypervisor | Schicht zwischen HW & Gast-OS (z.B. VirtualBox, VMware, Hyper-V) |
| Host-OS    | Basis-OS (bei Typ 2), z.B. Linux, Windows                        |
| Hardware   | CPU, RAM, Disk, Netz, wird vom Hypervisor verteilt                |

## Paketmanager (APT)

| Befehl                   | Bedeutung                         |
| ------------------------ | --------------------------------- |
| `apt update`             | Paketlisten aktualisieren         |
| `apt upgrade`            | Installierte Pakete aktualisieren |
| `apt install X`          | Paket installieren                |
| `apt remove X`           | Paket entfernen, Config bleibt    |
| `apt purge X`            | Paket inkl. Config entfernen      |
| `apt search X`           | Paket suchen                      |
| `apt show X`             | Paketdetails                      |
| `apt list X --installed` | Installierte Pakete anzeigen      |

**Update vs. Upgrade**

- `update`: nur Listen
- `upgrade`: installiert neue Versionen

**Vorteile**: Automatische Abhängigkeiten, zentrale Updates, Sicherheit, Integration, einfache Verwaltung

## Dateisysteme

| FS    | Kompatibilität | Max. Datei | Besonderheiten             | Nutzung         |
| ----- | -------------- | ---------- | -------------------------- | --------------- |
| FAT32 | Sehr hoch      | 4 GB       | Kein Rechtemgmt            | USB/SD          |
| NTFS  | Win, Linux tlw | >16 TB     | Rechte, Journaling         | Windows, Extern |
| EXT4  | Linux          | 16 TB      | Stabil, Journaling         | Linux           |
| Btrfs | Linux          | 16 EB      | Snapshots, Subvolumes      | Flexibel        |
| ZFS   | Linux/BSD      | 16 EB+     | Datenintegrität, Snapshots | Server/NAS      |

**Partitionen**

- Primär: max. 4
- Erweitert: Container für logische
- Logisch: flexibel
- **MBR**: max. 2 TB, 4 primär
- **GPT**: modern, >2 TB, bis 128

## Partitionen erstellen

| Schritt   | Befehl                               | Hinweis                                          |
| --------- | ------------------------------------ | ------------------------------------------------ |
| Anzeigen  | `lsblk`                              | Festplatten & Partitionen                        |
| Details   | `fdisk -l`                           | Infos & Größen                                   |
| Erstellen | `fdisk /dev/sdX`                     | `n` neu, `w` speichern                           |
| Format    | `mkfs.ext4 /dev/sdX1`                | FS erstellen                                     |
| Mountdir  | `mkdir /mnt/testpartition`           | Verzeichnis                                      |
| Mounten   | `mount /dev/sdX1 /mnt/testpartition` | Einbinden                                        |
| Testen    | `df -Th`                             | Eingebundene prüfen                              |
| Automount | `/etc/fstab`                         | `/dev/sdX1 /mnt/testpartition ext4 defaults 0 2` |

## Linux-Verzeichnisse

| Pfad   | Zweck                     |
| ------ | ------------------------- |
| /bin   | Basisprogramme für Nutzer |
| /sbin  | Adminprogramme (Root)     |
| /dev   | Geräte                    |
| /etc   | Konfigs                   |
| /home  | Userdaten                 |
| /lib   | Bibliotheken              |
| /media | Wechselmedien             |
| /mnt   | Temporäre Mounts          |
| /opt   | Zusatzsoftware            |
| /proc  | Virtuelles FS, Prozesse   |
| /run   | Laufzeitdaten             |
| /srv   | Servicedaten              |
| /sys   | Kernel-/Hardwareinfo      |
| /tmp   | Temporäre Dateien         |
| /usr   | Nutzerprogramme, Libs     |
| /var   | Logs, DBs, Spools         |

## Gruppen & Nutzer

| Schritt | Befehl                             | Beschreibung           |
| ------- | ---------------------------------- | ---------------------- |
| Gruppe  | `groupadd testgruppe`              | Gruppe anlegen         |
| User    | `useradd -m -s /bin/bash testuser` | User anlegen           |
| PW      | `echo "testuser:test" \| chpasswd` | Passwort setzen        |
| Gruppe+ | `usermod -aG testgruppe testuser`  | User zur Gruppe        |
| Prüfen  | `groups testuser`                  | Zugehörigkeit anzeigen |
