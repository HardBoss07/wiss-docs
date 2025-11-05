## **Lernziele M117 - Zusammenfassung**

### Was sind Megatrends?

Megatrends sind langfristige, globale Entwicklungen, die Gesellschaft, Wirtschaft und Technik stark beeinflussen.
**Beispiele in der IT / Netzwerktechnik:**

* Digitalisierung & Cloud Computing
* Internet of Things (IoT)
* Künstliche Intelligenz & Automatisierung
* Mobile Kommunikation (5G, Wi-Fi 6/7)
* Cybersecurity & Datenschutz
* Glasfaser- und Hochgeschwindigkeitsnetze

### Was ist ein Router, Switch, Firewall?

| Gerät    | Aufgabe                                                 | Erklärung                                                                |
| -------- | ------------------------------------------------------- | ------------------------------------------------------------------------ |
| Router   | Verbindet verschiedene Netzwerke (z. B. LAN ↔ Internet) | Verteilt IP-Adressen per DHCP, leitet Datenpakete zwischen Netzen weiter |
| Switch   | Verbindet Geräte innerhalb eines Netzwerks (LAN)        | Leitet Daten gezielt anhand der MAC-Adresse weiter                       |
| Firewall | Kontrolliert und filtert Datenverkehr                   | Schützt vor unerlaubtem Zugriff oder Angriffen (Hardware oder Software)  |

### Internet zu Hause einrichten - auch über mehrere Stockwerke

**Grundaufbau:**

1. Internetanbieter → Modem/Router (meist kombiniert)
2. Router verteilt IP-Adressen via DHCP
3. Switch → Verbindung zu mehreren Geräten über LAN-Kabel
4. WLAN-Access Points oder Mesh-Systeme → für obere Stockwerke

**Mehrstöckiges Haus:**

* Ethernet-Kabel zwischen den Stockwerken verlegen
* Pro Etage Access Point oder Mesh-Repeater installieren
* Access Points per LAN anbinden (bessere Stabilität als WLAN-Repeater)

### Internet-Anbindungen und Varianten

| Technologie                   | Beschreibung                     | Geschwindigkeit    | Zielgruppe             |
| ----------------------------- | -------------------------------- | ------------------ | ---------------------- |
| **DSL / ADSL / VDSL / VDSL2** | Kupferleitung (Telefonanschluss) | bis ca. 250 Mbit/s | Privatkunden           |
| **FTTH (Fiber To The Home)**  | Glasfaser bis ins Haus           | bis 10 Gbit/s      | Privat & Business      |
| **Koaxial (Kabelnetz)**       | Fernsehkabel                     | bis 1 Gbit/s       | Privatkunden           |
| **Mobile (4G / 5G)**          | Mobilfunknetz                    | bis 1-2 Gbit/s     | Unterwegs / Backup     |
| **SHDSL / G.SHDSL**           | Symmetrisch (gleicher Up/Down)   | bis 2 Mbit/s       | Firmen, Standleitungen |

### OSI-7-Schichtenmodell und Aufgaben

| Nr. | Name (engl./dt.)           | Aufgabe                                   | Beispielprotokolle   |
| --- | -------------------------- | ----------------------------------------- | -------------------- |
| 7   | Application / Anwendung    | Dienste für Nutzer und Programme          | HTTP, FTP, DNS, SMTP |
| 6   | Presentation / Darstellung | Übersetzen, Verschlüsseln, Komprimieren   | SSL/TLS, JPEG, ASCII |
| 5   | Session / Sitzung          | Aufbau, Verwaltung, Beenden von Sitzungen | NetBIOS, SMB         |
| 4   | Transport / Transport      | Zuverlässige Ende-zu-Ende-Kommunikation   | TCP, UDP             |
| 3   | Network / Vermittlung      | Routing & IP-Adressierung                 | IP, ICMP, OSPF       |
| 2   | Data Link / Sicherung      | Fehlerfreie Übertragung, MAC-Adressen     | Ethernet, WLAN       |
| 1   | Physical / Bitübertragung  | Physische Übertragung der Bits            | Kabel, Stecker, Funk |

### System im Netzwerkplan richtig konfigurieren

**Beispiel (LAN):**

* Router: `192.168.0.1` (Gateway, DHCP, DNS)
* Switch (verwaltbar): `192.168.0.2`
* Server/Drucker: `192.168.0.100-120`
* Clients (statisch oder DHCP): `192.168.0.10-80`
* Subnetzmaske: `255.255.255.0`
* WLAN-SSID + Passwort (WPA2/3)
* DNS → Router oder externer DNS (z. B. 8.8.8.8)

### Netzwerkplan deklarieren & Komponenten darstellen

**Im Plan beschriften:**

* Router, Switch, Access Point, Server, Clients
* Verbindungstypen (LAN/WLAN)
* IP-Adressen
* DHCP-Bereich
* Legende, Name, Datum, Version

**Software-Tools:** draw.io / yEd / Lucidchart

### Materialliste erstellen

| Gerät              | Anzahl | Zweck                   |
| ------------------ | ------ | ----------------------- |
| Router             | 1      | Verbindung zum Internet |
| Switch (Gigabit)   | 1      | LAN-Verteilung          |
| Access Points      | 2      | WLAN-Abdeckung          |
| Ethernetkabel CAT6 | n      | Geräte verbinden        |
| Patchpanel         | 1      | Ordnung & Wartung       |
| Server / Drucker   | 1      | Dienste bereitstellen   |

### Berechtigungsmatrix erstellen (Beispiel)

| Ressource      | Management      | Lehrer      | Admin       | Technik     | Schüler | Gäste |
| -------------- | --------------- | ----------- | ----------- | ----------- | ------- | ----- |
| Management     | Vollzugriff     | Lesen       | Lesen       | Lesen       | -       | -     |
| Lehrmaterial   | Lesen/Schreiben | Vollzugriff | Lesen       | -           | Lesen   | -     |
| Administration | Lesen           | Lesen       | Vollzugriff | -           | -       | -     |
| Technik        | Lesen           | -           | -           | Vollzugriff | -       | -     |
| Öffentlich     | Lesen           | Lesen       | Lesen       | Lesen       | Lesen   | Lesen |

### Windows-Befehle (Commands)

| Befehl              | Zweck / Beschreibung                                       |
| ------------------- | ---------------------------------------------------------- |
| `ipconfig /all`     | Zeigt vollständige IP-Konfiguration (inkl. MAC, DHCP, DNS) |
| `ping <Ziel>`       | Prüft Verbindung & Antwortzeit                             |
| `tracert <Ziel>`    | Zeigt Route zu einem Ziel                                  |
| `netstat -ano`      | Zeigt aktive Verbindungen & Ports                          |
| `nslookup <Domain>` | Prüft DNS-Auflösung                                        |
| `net user`          | Benutzer anzeigen / erstellen / löschen                    |
| `net localgroup`    | Gruppen verwalten                                          |
| `net use`           | Netzlaufwerke verbinden oder trennen                       |
| `net share`         | Freigaben anzeigen / erstellen                             |
| `net view`          | Zeigt alle Computer im Netzwerk                            |
| `net statistics`    | Zeigt gesendete/empfangene Pakete                          |

### Testplan (Vorgehen bei Netzwerkprüfung)

1. Sichtprüfung - Kabel, Adapter, Verbindungen kontrollieren
2. IP-Konfiguration prüfen - `ipconfig /all`
3. LAN-Test - `ping <Gateway-IP>`
4. Internet-Test - `ping 8.8.8.8`
5. DNS-Test - `nslookup www.google.com`
6. Routing prüfen - `tracert www.google.com`
7. Verbindungen prüfen - `netstat -ano`
8. Freigaben & Benutzer prüfen - `net share`, `net user`
9. Dokumentation - Ergebnisse festhalten, Fehler beheben

### Einmalige vs. wiederkehrende Kosten

| Art                       | Beschreibung              | Beispiel                            |
| ------------------------- | ------------------------- | ----------------------------------- |
| **Einmalige Kosten**      | Anschaffung, Installation | Router, Switch, Kabel, Montage      |
| **Wiederkehrende Kosten** | Laufende Betriebskosten   | Internetabo, Strom, Wartung, Domain |
