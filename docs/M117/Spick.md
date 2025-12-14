# Netzwerktechnik - M117 Spick / Zusammenfassung

## Megatrends

* Langfristige, globale Entwicklungen, die Gesellschaft, Wirtschaft & Technik stark beeinflussen
* Beispiele in IT / Netzwerktechnik:

  * Digitalisierung & Cloud Computing
  * Internet of Things (IoT)
  * Künstliche Intelligenz & Automatisierung
  * Mobile Kommunikation (5G, Wi-Fi 6/7)
  * Cybersecurity & Datenschutz
  * Glasfaser- & Hochgeschwindigkeitsnetze
* Datenkommunikation: Morse → Telefon → Digitales Messaging → Instant Messaging → Glasfaser

## Netzwerkkomponenten

| Komponente                | Aufgabe                                     | Bemerkung / Erklärung                                                |
| ------------------------- | ------------------------------------------- | -------------------------------------------------------------------- |
| Router                    | Verbindet Netzwerke (z. B. LAN ↔ Internet)  | Verteilt IP-Adressen via DHCP, NAT, Gateway zum Internet             |
| Switch                    | Verbindet Geräte im LAN                     | Leitet Daten gezielt anhand der MAC-Adresse, effizienter als Hub     |
| Hub                       | Sendet Daten an alle Ports                  | Veraltet (Kollisionen)                                               |
| Firewall                  | Filtert Datenverkehr, schützt vor Angriffen | Hardware oder Software                                               |
| Access Point              | Stellt WLAN-Zugang bereit                   | Pro Etage oder Mesh-System, LAN-Anbindung stabiler als WLAN-Repeater |
| Repeater / Range Extender | Verstärkt WLAN-Signal                       | Kann Geschwindigkeit reduzieren                                      |
| Modem                     | Wandelt digitale ↔ analoge Signale          | Verbindung zum Provider                                              |

## Internet zu Hause / mehrere Stockwerke

**Grundaufbau:**

1. Internetanbieter → Modem/Router (meist kombiniert)
2. Router verteilt IP-Adressen via DHCP
3. Switch → Verbindung zu mehreren Geräten über LAN-Kabel
4. WLAN-Access Points oder Mesh-Systeme → für obere Stockwerke

**Tipps für mehrstöckige Häuser:**

* Ethernet-Kabel zwischen Stockwerken verlegen
* Pro Etage Access Point oder Mesh-Repeater installieren
* Access Points per LAN anbinden für bessere Stabilität
* Repeater nur bei fehlendem Kabel
* Powerline-Adapter als Alternative über Stromnetz

## Internet-Anbindungen / Varianten

| Typ / Technologie             | Beschreibung                     | Geschwindigkeit    | Zielgruppe             |
| ----------------------------- | -------------------------------- | ------------------ | ---------------------- |
| DSL / ADSL / VDSL / VDSL2     | Kupferleitung (Telefonanschluss) | bis ca. 250 Mbit/s | Privatkunden           |
| HDSL / SDSL / SHDSL / G.SHDSL | Symmetrisch (gleicher Up/Down)   | bis 2 Mbit/s       | Firmen, Standleitungen |
| FTTH (Fiber To The Home)      | Glasfaser bis ins Haus           | bis 10 Gbit/s      | Privat & Business      |
| Koaxial (Kabelnetz)           | Fernsehkabel                     | bis 1 Gbit/s       | Privatkunden           |
| Mobile (4G / 5G)              | Mobilfunknetz                    | bis 1-2 Gbit/s     | Unterwegs / Backup     |

## OSI-7-Schichtenmodell

| Nr. | Name (engl./dt.)           | Aufgabe                                   | Beispielprotokolle                     |
| --- | -------------------------- | ----------------------------------------- | -------------------------------------- |
| 7   | Application / Anwendung    | Dienste für Nutzer & Programme          | HTTP, FTP, DNS, SMTP, POP3, IMAP, SNMP |
| 6   | Presentation / Darstellung | Übersetzen, Verschlüsseln, Komprimieren   | SSL/TLS, JPEG, ASCII                   |
| 5   | Session / Sitzung          | Aufbau, Verwaltung, Beenden von Sitzungen | NetBIOS, SMB, RPC, PPTP                |
| 4   | Transport / Transport      | Zuverlässige Ende-zu-Ende-Kommunikation   | TCP, UDP, SCTP                         |
| 3   | Network / Vermittlung      | Routing & IP-Adressen                     | IP, ICMP, OSPF                         |
| 2   | Data Link / Sicherung      | Fehlerfreie Übertragung, MAC-Adressen     | Ethernet, PPP, ARP, WLAN               |
| 1   | Physical / Bitübertragung  | Physische Übertragung der Bits            | Kabel, Stecker, Funk, DSL, Koaxial     |

## IPv4-Netzklassen

| Klasse | Oktett  | Subnetzmaske | Hosts  | Zweck             |
| ------ | ------- | ------------ | ------ | ----------------- |
| A      | 0-127   | /8           | 16 Mio | sehr große Netze  |
| B      | 128-191 | /16          | 65k    | mittelgroße Netze |
| C      | 192-223 | /24          | 254    | kleine Netze      |
| D      | 224-239 | -            | -      | Multicast         |
| E      | 240-255 | -            | -      | reserviert        |

**Private Bereiche:**

* A: 10.0.0.0-10.255.255.255
* B: 172.16.0.0-172.31.255.255
* C: 192.168.0.0-192.168.255.255

## Berechtigungsmatrix (Beispiel)

| Ressource      | Management      | Lehrkräfte  | Administration | Technik     | Schüler | Gäste |
| -------------- | --------------- | ----------- | -------------- | ----------- | ------- | ----- |
| Management     | Vollzugriff     | Lesen       | Lesen          | Lesen       | -       | -     |
| Lehrmaterial   | Lesen/Schreiben | Vollzugriff | Lesen          | -           | Lesen   | -     |
| Administration | Lesen           | Lesen       | Vollzugriff    | -           | -       | -     |
| Technik        | Lesen           | -           | -              | Vollzugriff | -       | -     |
| Öffentlich     | Lesen           | Lesen       | Lesen          | Lesen       | Lesen   | Lesen |

## System im Netzwerkplan richtig konfigurieren

* Router: `192.168.0.1` (Gateway, DHCP, DNS)
* Switch (verwaltbar): `192.168.0.2`
* Server/Drucker: `192.168.0.100-120`
* Clients (statisch oder DHCP): `192.168.0.10-80`
* Subnetzmaske: `255.255.255.0`
* WLAN-SSID + Passwort (WPA2/3)
* DNS → Router oder externer DNS (z. B. 8.8.8.8)

**Netzwerkplan beschriften:**

* Router, Switch, Access Point, Server, Clients
* Verbindungstypen (LAN/WLAN)
* IP-Adressen
* DHCP-Bereich
* Legende, Name, Datum, Version

**Software-Tools:** draw.io, yEd, Lucidchart

## Materialliste (Beispiel)

| Gerät              | Anzahl | Zweck                   |
| ------------------ | ------ | ----------------------- |
| Router             | 1      | Verbindung zum Internet |
| Switch (Gigabit)   | 1      | LAN-Verteilung          |
| Access Points      | 2      | WLAN-Abdeckung          |
| Ethernetkabel CAT6 | n      | Geräte verbinden        |
| Patchpanel         | 1      | Ordnung & Wartung       |
| Server / Drucker   | 1      | Dienste bereitstellen   |

## Windows-Befehle / Commands

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

## Testplan (Netzwerkprüfung)

1. Sichtprüfung - Kabel, Adapter, Verbindungen kontrollieren
2. IP-Konfiguration prüfen - `ipconfig /all`
3. LAN-Test - `ping <Gateway-IP>`
4. Internet-Test - `ping 8.8.8.8`
5. DNS-Test - `nslookup www.google.com`
6. Routing prüfen - `tracert www.google.com`
7. Verbindungen prüfen - `netstat -ano`
8. Freigaben & Benutzer prüfen - `net share`, `net user`
9. Dokumentation - Ergebnisse festhalten, Fehler beheben

## Kostenarten

| Art                   | Beschreibung              | Beispiel                            |
| --------------------- | ------------------------- | ----------------------------------- |
| Einmalige Kosten      | Anschaffung, Installation | Router, Switch, Kabel, Montage      |
| Wiederkehrende Kosten | Laufende Betriebskosten   | Internetabo, Strom, Wartung, Domain |
