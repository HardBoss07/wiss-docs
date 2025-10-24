# Modul 117

## 117-1A
* Wie wirken sich IT Netze auf unser tägliches Leben aus?
  * IT Netze werden heute überall und immer verwendet. Vom eigenen WLAN zu Hause oder von der Bluetooth-Verbindung mit den eigenen Kopfhörer
* Welche Hauptkomponenten kennt Ihr von IT Netzen?
  * Router
  * Switch
  * Server / Client
  * Hub
  * DNS
  * Access Point
  * Modem
  * Firewall
* Welches sind die Chancen und Risiken in IT Netzen?
  * Chancen:
    * Vernetzung Menschen weltweit
    * Vereinfachte Kommunikation
    * Vereinfachte Bezahlungen / generelle kommerzielle Aktionen
  * Risiken:
    * Impersonation ist einfacher
    * Missbrauch von Daten
    * Cybersecurity
* Welches sind die "Mega-Trends" in der Datenkommunikation?
  * Morse-Code
  * Telefon
  * Digitales Messaging
  * Instant Messaging
  * Fiber-Optic Kabel

## 117-1B
* 1 Gigabit (Gb) = 125 Megabyte (MB)
* 64000 Ports
* Firewall spielt den Türsteher vom Internetverkehr. Limitiert von wo welche Pakete kommt und filtert unerlaubte raus
* Internet existiert seit 1960er, in Schweiz seit 1995
* IPv4: 32-Bit
* IPv6: 128-Bit
* Immer zuerst Router und dann Firewall

## 117-1C
| Komponente                | Funktion                                                                                  | Vor- und Nachteile                                                                                              | Einsatz im Netzwerk                            |
| ------------------------- | ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| Switch                    | Verbindet Geräte innerhalb eines LAN. Leitet Datenpakete gezielt an den richtigen Port.   | **Vorteile:** schnelle Datenübertragung, effizienter als Hub; **Nachteil:** keine Routing-Funktion ins Internet | LAN-Verbindungen in Büro oder Zuhause          |
| Hub                       | Leitet Datenpakete an alle Ports weiter (ungezielt).                                      | **Vorteil:** einfach; **Nachteil:** ineffizient, Kollisionen möglich                                            | Alte Netzwerke, selten noch genutzt            |
| Router                    | Verbindet verschiedene Netzwerke (z. B. LAN und Internet). Verteilt IP-Adressen via DHCP. | **Vorteile:** Internetzugang für alle Geräte, Firewall-Funktionen; **Nachteil:** teurer, komplexer              | Verbindung des Heimnetzwerks mit dem Internet  |
| Access Point (AP)         | Stellt drahtlosen Zugang zum Netzwerk bereit (WLAN).                                      | **Vorteile:** kabelloser Zugriff, flexibel; **Nachteil:** Reichweite begrenzt, Funkstörungen möglich            | WLAN-Zugriff für Laptops, Smartphones, Tablets |
| Modem                     | Wandelt digitale Signale in analoge Signale (und umgekehrt).                              | **Vorteile:** ermöglicht Internetzugang; **Nachteil:** kein Routing, nur Signalwandlung                         | Verbindung zum Internetprovider                |
| Firewall (Hardware)       | Überwacht und kontrolliert den Datenverkehr, schützt vor unautorisierten Zugriffen.       | **Vorteile:** Schutz vor Angriffen; **Nachteil:** kann komplex konfiguriert sein                                | Sicherheit im Netzwerk                         |
| Repeater / Range Extender | Verstärkt Signale, um grössere Entfernungen zu überbrücken.                                | **Vorteile:** verbessert Reichweite; **Nachteil:** kann Geschwindigkeit reduzieren                              | Grosse Gebäude oder WLAN-Lücken                 |

## 117-2A

Wichtige Ethernetkabel:
- CAT6
- CAT7
- CAT8.1
- CAT8.2
> Immer Prüfprotokoll bei Netzwerkabel vom Elektriker verlangen

3 Anschlüsse:
- Kupfer: Standartmässiger Internetanschluss
- Koaxial: Rund, Älterer Fehrsehr-Anschluss, Internet bis 1 Gigabit
- Fiber (OTO Box)
  - Multimode
  - Singlemode

## 117-2B (Freiwillig)

### Übersicht DSL-Übermittlungsverfahren

- DSL-Light
  - Erste abgespeckte DSL-Variante (früher ca. 384 kbit/s).
  - Eingesetzt, wenn Leitungsqualität schlecht war.
- ADSL (Asymmetric DSL)
  - Asymmetrisch: mehr Download (bis ca. 8 Mbit/s, ADSL2+ bis 24 Mbit/s) als Upload.
  - Typisch für Privatkunden.
- VDSL (Very High Bitrate DSL)
  - Sehr hohe Datenrate (bis ca. 50 Mbit/s).
  - Nur kurze Kupferstrecken, oft mit Glasfaser bis zum Verteiler kombiniert.
- VDSL2 mit Vectoring
  - Weiterentwicklung von VDSL2.
  - Störunterdrückung zwischen Leitungen (Vectoring).
  - Bis 100-250 Mbit/s möglich.
- HDSL (High bit-rate DSL)
  - Symmetrisch, bis ca. 2 Mbit/s.
  - Früher für Standleitungen (z.B. Firmenanbindungen).
- HDSL2
  - Optimierte Version von HDSL.
  - Gleiche Geschwindigkeit (ca. 1,5-2 Mbit/s), benötigt aber nur eine Kupferdoppelader statt zwei.
- SDSL (Symmetric DSL)
  - Symmetrische Bandbreite, bis ca. 2 Mbit/s.
  - Vor allem für Unternehmen mit gleichem Upload-/Download-Bedarf.
- G.SHDSL (Single-pair High Speed DSL)
  - Internationale Norm (ITU G.991.2).
  - Symmetrisch, flexibel skalierbar (bis ca. 2,3 Mbit/s pro Leitung, mit Bündelung mehr).
  - Effizienter als HDSL/SDSL.
- SHDSL (Synonym zu G.SHDSL)
  - Im Prinzip dasselbe Verfahren (nur Kurzform des Namens).

### FTTH (Glasfaser direkt ins Haus) + Business / statische IP
* **Warum:** Glasfaser liefert symmetrische hohe Bandbreiten (z.B. 300 Mbit-10 Gbit je nach Tarif), sehr niedrige Latenz und stabile Leistung abends, wenn viele Geräte aktiv sind. Für einen Webshop ist Zuverlässigkeit + feste IP ideal.
* **Wie (praktisch):** Prüfen, ob Glasfaser an der Adresse verfügbar ist (Hinwil wird aktuell ausgebaut - Ausbau läuft etappenweise). Wenn FTTH verfügbar: Anbieterangebote (Swisscom, Sunrise, Quickline, Salt, lokale Anbieter) vergleichen; Business-Tarif oder Residential + Static-IP-Option wählen. (Swisscom Ausbau Hinwil / Verfügbarkeit prüfen).
* **Kosten/Beispiel:** Swisscom / Sunrise/Quickline haben FTTH-Tarife - Preise variieren (Promotionen möglich). Für Preisvergleiche siehe Vergleichsportale.


* **ADSL/DSL-Light** = asymmetrisch, für Privatkunden.
* **VDSL/VDSL2-Vectoring** = moderne, schnelle Varianten.
* **HDSL/HDSL2/SDSL/G.SHDSL/SHDSL** = symmetrische Verfahren, vor allem Business-Anschlüsse.

## 117-2C

OSI-7 Schichten Modell

Geschwindigkeit von Fiber ist abhängig von SFP-Modul.

Protokoll ist eine bestimme, standartisierte Anreihung von Bits.

### 1. Physical Layer
1. Wie heisst diese Schicht?: Physical Layer (Bitübertragungsschicht Schicht)
2. Was macht diese Schicht?: Überträgt die rohen Bits (0 und 1) als elektrische, optische oder Funk-Signale
3. Welche Protokolle sind in dieser Schicht?: Streng genommen keine Protokolle (Aber Standarts / Technologien); Ethernet, DSL, WLAN, Bluetooth, Koaxial
4. Beschreibung: In der physischer Schicht wird die mechanische, elektrische und funktionale Eigenschaften der Verbindung definiert. Stecker, Kabeltypen, Übertragungsrate oder Signalcodierung. Es wird sichergestellt, dass die Bits zuverlässig von einem Gerät zum anderen kommen.

### 2. Data Link Layer
1. Wie heisst diese Schicht?: Data Link Layer (Sicherungsschicht)
2. Was macht diese Schicht?: Stellt eine fehlerfreie Übertragung von Frames zwischen zwei direkt verbundenen Geräten sicher. Kümmert sich um Adressierung (MAC-Adressen) und Zugriffskontrolle auf das Medium.
3. Welche Protokolle sind in dieser Schicht?: Ethernet, PPP, ARP, WLAN (IEEE 802.11), Token Ring.
4. Beschreibung: Die Sicherungsschicht teilt die Bitströme aus der physikalischen Schicht in Rahmen (Frames) auf und kontrolliert diese auf Fehler (z.B. per CRC). Ausserdem werden MAC-Adressen für die Gerätekommunikation innerhalb eines lokalen Netzwerks genutzt.

### 3. Network Layer
1. Wie heisst diese Schicht?: Network Layer (Vermittlungsschicht)
2. Was macht diese Schicht?: Kümmert sich um die logische Adressierung (IP-Adressen), Routing und Weiterleitung von Datenpaketen zwischen verschiedenen Netzwerken.
3. Welche Protokolle sind in dieser Schicht?: IP (IPv4, IPv6), ICMP, IPsec, RIP, OSPF.
4. Beschreibung: Diese Schicht sorgt dafür, dass Pakete den richtigen Weg vom Sender zum Empfänger finden, auch über verschiedene Netzwerke hinweg. Dabei kommen Routing-Tabellen und Algorithmen zum Einsatz.

### 4. Transport Layer
1. Wie heisst diese Schicht?: Transport Layer (Transportschicht)
2. Was macht diese Schicht?: Sichert die Ende-zu-Ende-Verbindung zwischen Anwendungen. Stellt sicher, dass Daten vollständig, in richtiger Reihenfolge und fehlerfrei ankommen.
3. Welche Protokolle sind in dieser Schicht?: TCP, UDP, SCTP.
4. Beschreibung: Hier wird die Segmentierung und Zusammensetzung von Daten übernommen. TCP sorgt für zuverlässige, verbindungsorientierte Übertragung, UDP für schnelle, verbindungslose Übertragung.

### 5. Session Layer
1. Wie heisst diese Schicht?: Session Layer (Sitzungsschicht)
2. Was macht diese Schicht?: Stellt Sitzungen zwischen Anwendungen her, verwaltet sie und beendet sie. Sorgt für Synchronisation und Dialogkontrolle.
3. Welche Protokolle sind in dieser Schicht?: NetBIOS, RPC, PPTP, SMB.
4. Beschreibung: In dieser Schicht wird die Kommunikation strukturiert, sodass Anwendungen Daten austauschen können, ohne sich um den Verbindungsaufbau oder -abbau kümmern zu müssen.

### 6. Presentation Layer
1. Wie heisst diese Schicht?: Presentation Layer (Darstellungsschicht)
2. Was macht diese Schicht?: Übersetzt, verschlüsselt und komprimiert Daten, damit unterschiedliche Systeme sie verstehen können.
3. Welche Protokolle sind in dieser Schicht?: JPEG, GIF, MPEG, SSL/TLS, ASCII, EBCDIC.
4. Beschreibung: Diese Schicht fungiert als „Übersetzer“. Sie sorgt dafür, dass Daten aus unterschiedlichen Formaten in eine gemeinsame Darstellungsform gebracht werden, z.B. Zeichencodierung oder Verschlüsselung.

### 7. Application Layer
1. Wie heisst diese Schicht?: Application Layer (Anwendungsschicht)
2. Was macht diese Schicht?: Bietet direkte Schnittstellen zu den Anwendungen und ermöglicht so die Kommunikation für den Nutzer.
3. Welche Protokolle sind in dieser Schicht?: HTTP, FTP, SMTP, DNS, POP3, IMAP, SNMP.
4. Beschreibung: Hier findet die eigentliche Interaktion mit den Anwendungen statt. Diese Schicht stellt die Dienste bereit, die Nutzer oder Programme direkt verwenden, z.B. Webzugriff oder E-Mail.

## 117-3A

```bash
PS C:\> ipconfig /?

VERWENDUNG:
    ipconfig [/allcompartments] [/? | /all |
                                 /renew [adapter] | /release [adapter] |
                                 /renew6 [adapter] | /release6 [adapter] |
                                 /flushdns | /displaydns | /registerdns |
                                 /showclassid adapter |
                                 /setclassid adapter [classid] |
                                 /showclassid6 adapter |
                                 /setclassid6 adapter [classid] ]

wobei:
    adapter             Verbindungsname
                       (Die Platzhalter * und ? sind zulässig, siehe Beispiele)

    Optionen:
       /?               Zeigt diese Hilfenachricht an.
       /all             Zeigt alle Konfigurationsinformationen an.
       /release         Gibt die IPv4-Adresse für den angegebenen Adapter frei.
       /release6        Gibt die IPv6-Adresse für den angegebenen Adapter frei.
       /renew           Erneuert die IPv4-Adresse für den angegebenen Adapter.
       /renew6          Erneuert die IPv6-Adresse für den angegebenen Adapter.
       /flushdns        Leert den DNS-Konfliktlösercache.
       /registerdns     Aktualisiert alle DHCP-Leases und registriert die DNS-Namen erneut.
       /displaydns      Zeigt den Inhalt des DNS-Konfliktlösercaches an.
       /showclassid     Zeigt alle für den Adapter zugelassenen DHCP-Klassen-IDs an.
       /setclassid      Ändert die DHCP-Klassen-ID.
       /showclassid6    Zeigt alle für den Adapter zugelassenen IPv6-DHCP-Klassen-IDs an.
       /setclassid6     Ändert die IPv6-DHCP-Klassen-ID.
```

```bash
PS C:\> ipconfig

Windows-IP-Konfiguration


Ethernet-Adapter Ethernet:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::10a:120a:2684:5306%12
   IPv4-Adresse (Auto. Konfiguration): 169.254.223.103
   Subnetzmaske  . . . . . . . . . . : 255.255.0.0
   Standardgateway . . . . . . . . . :

Unbekannter Adapter LAN-Verbindung:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:

Drahtlos-LAN-Adapter LAN-Verbindung* 3:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:

Drahtlos-LAN-Adapter LAN-Verbindung* 12:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:

Ethernet-Adapter VMware Network Adapter VMnet1:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::8e52:fea:b41b:fa8e%24
   IPv4-Adresse  . . . . . . . . . . : 192.168.23.1
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Standardgateway . . . . . . . . . :

Ethernet-Adapter VMware Network Adapter VMnet8:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::54db:d6f2:9391:ec22%22
   IPv4-Adresse  . . . . . . . . . . : 192.168.174.1
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Standardgateway . . . . . . . . . :

Drahtlos-LAN-Adapter WLAN:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::2456:9b56:a5a0:ed1b%23
   IPv4-Adresse  . . . . . . . . . . : 10.40.170.76
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Standardgateway . . . . . . . . . : 10.40.170.141
```

```bash
PS C:\> ipconfig /all

Windows-IP-Konfiguration

   Hostname  . . . . . . . . . . . . : Matteo-Lenovo
   Primäres DNS-Suffix . . . . . . . :
   Knotentyp . . . . . . . . . . . . : Hybrid
   IP-Routing aktiviert  . . . . . . : Nein
   WINS-Proxy aktiviert  . . . . . . : Nein

Ethernet-Adapter Ethernet:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : VirtualBox Host-Only Ethernet Adapter
   Physische Adresse . . . . . . . . : 0A-00-27-00-00-0C
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::10a:120a:2684:5306%12(Bevorzugt)
   IPv4-Adresse (Auto. Konfiguration): 169.254.223.103(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.0.0
   Standardgateway . . . . . . . . . :
   DHCPv6-IAID . . . . . . . . . . . : 168427559
   DHCPv6-Client-DUID. . . . . . . . : 00-01-00-01-2F-47-BB-8F-F4-7B-09-9E-0C-73
   NetBIOS über TCP/IP . . . . . . . : Aktiviert

Unbekannter Adapter LAN-Verbindung:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : TAP-Windows Adapter V9
   Physische Adresse . . . . . . . . : 00-FF-FA-27-56-5C
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja

Drahtlos-LAN-Adapter LAN-Verbindung* 3:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter #3
   Physische Adresse . . . . . . . . : F4-7B-09-9E-0C-74
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja

Drahtlos-LAN-Adapter LAN-Verbindung* 12:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter #4
   Physische Adresse . . . . . . . . : F6-7B-09-9E-0C-73
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja

Ethernet-Adapter VMware Network Adapter VMnet1:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : VMware Virtual Ethernet Adapter for VMnet1
   Physische Adresse . . . . . . . . : 00-50-56-C0-00-01
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::8e52:fea:b41b:fa8e%24(Bevorzugt)
   IPv4-Adresse  . . . . . . . . . . : 192.168.23.1(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Lease erhalten. . . . . . . . . . : Donnerstag, 18. September 2025 13:15:51
   Lease läuft ab. . . . . . . . . . : Donnerstag, 18. September 2025 15:30:51
   Standardgateway . . . . . . . . . :
   DHCP-Server . . . . . . . . . . . : 192.168.23.254
   DHCPv6-IAID . . . . . . . . . . . : 1023430742
   DHCPv6-Client-DUID. . . . . . . . : 00-01-00-01-2F-47-BB-8F-F4-7B-09-9E-0C-73
   NetBIOS über TCP/IP . . . . . . . : Aktiviert

Ethernet-Adapter VMware Network Adapter VMnet8:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : VMware Virtual Ethernet Adapter for VMnet8
   Physische Adresse . . . . . . . . : 00-50-56-C0-00-08
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::54db:d6f2:9391:ec22%22(Bevorzugt)
   IPv4-Adresse  . . . . . . . . . . : 192.168.174.1(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Lease erhalten. . . . . . . . . . : Donnerstag, 18. September 2025 13:15:51
   Lease läuft ab. . . . . . . . . . : Donnerstag, 18. September 2025 15:30:51
   Standardgateway . . . . . . . . . :
   DHCP-Server . . . . . . . . . . . : 192.168.174.254
   DHCPv6-IAID . . . . . . . . . . . : 1040207958
   DHCPv6-Client-DUID. . . . . . . . : 00-01-00-01-2F-47-BB-8F-F4-7B-09-9E-0C-73
   Primärer WINS-Server. . . . . . . : 192.168.174.2
   NetBIOS über TCP/IP . . . . . . . : Aktiviert

Drahtlos-LAN-Adapter WLAN:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : Intel(R) Wi-Fi 6 AX201 160MHz
   Physische Adresse . . . . . . . . : DE-9F-C0-E9-89-9D
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::2456:9b56:a5a0:ed1b%23(Bevorzugt)
   IPv4-Adresse  . . . . . . . . . . : 10.40.170.76(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Lease erhalten. . . . . . . . . . : Donnerstag, 18. September 2025 14:36:14
   Lease läuft ab. . . . . . . . . . : Donnerstag, 18. September 2025 15:36:13
   Standardgateway . . . . . . . . . : 10.40.170.141
   DHCP-Server . . . . . . . . . . . : 10.40.170.141
   DHCPv6-IAID . . . . . . . . . . . : 400465856
   DHCPv6-Client-DUID. . . . . . . . : 00-03-00-01-DE-9F-C0-E9-89-9D
   DNS-Server  . . . . . . . . . . . : 10.40.170.141
   NetBIOS über TCP/IP . . . . . . . : Aktiviert
```
1. /all gibt viel mehr Details als Standard ipconfig.
2. Virtuelle Adapter (VMware, VirtualBox, Wi-Fi Direct) werden angezeigt, auch wenn sie „getrennt“ sind.
3. APIPA-Adressen (169.254.x.x) erscheinen, wenn DHCP keine IP liefert.
4. Für schnelle IP-Checks reicht ipconfig.
5. Für Fehleranalyse oder DHCP-Infos muss ipconfig /all genutzt werden.
| Befehl          | Infos sichtbar                                        | Typische Verwendung                             |
| --------------- | ----------------------------------------------------- | ----------------------------------------------- |
| `ipconfig /?`   | Nur Hilfe / Syntax / Optionen                         | Lernen, Befehlsreferenz                         |
| `ipconfig`      | IP, Subnetz, Gateway, Medienstatus                    | Schnellübersicht, Check ob Adapter verbunden    |
| `ipconfig /all` | Alles: MAC, DHCP, Lease, DNS, NetBIOS, Adapterdetails | Troubleshooting, Netzwerkanalyse, Dokumentation |

## 117-3B

### Aufgabe 1
| Subnetz | Netzadresse       | Maske           | Hostbereich                     | Broadcast      |
| ------- | ----------------- | --------------- | ------------------------------- | -------------- |
| 1       | 192.168.10.0/26   | 255.255.255.192 | 192.168.10.1 - 192.168.10.62    | 192.168.10.63  |
| 2       | 192.168.10.64/26  | 255.255.255.192 | 192.168.10.65 - 192.168.10.126  | 192.168.10.127 |
| 3       | 192.168.10.128/26 | 255.255.255.192 | 192.168.10.129 - 192.168.10.190 | 192.168.10.191 |
| 4       | 192.168.10.192/26 | 255.255.255.192 | 192.168.10.193 - 192.168.10.254 | 192.168.10.255 |

### Aufgabe 2
| Nr. | Netzadresse        | Erster Host  | Letzter Host  | Broadcast     |
| --: | ------------------ | ------------ | ------------- | ------------- |
|   1 | 120.48.7.104       | 120.48.7.105 | 120.48.7.110  | 120.48.7.111  |
|   2 | 77.88.99.176       | 77.88.99.177 | 77.88.99.190  | 77.88.99.191  |
|   3 | 40.1.1.8           | 40.1.1.9     | 40.1.1.14     | 40.1.1.15     |
|   4 | 67.88.96.0         | 67.88.96.1   | 67.88.103.254 | 67.88.103.255 |
|  5A | 77.88.96.0 (/21)   | 77.88.96.1   | 77.88.103.254 | 77.88.103.255 |
|  5B | 77.88.99.160 (/27) | 77.88.99.161 | 77.88.99.190  | 77.88.99.191  |

## 117-3C

### I - Informieren
**Bekannte Infos:**
* Neues Lokal in Bulgarien
* Netzwerk soll eingerichtet werden (LAN/WLAN)

**Benötigte Infos:**
* Grösse des Lokals / Stockwerke -> Kabelwege & WLAN-Abdeckung
* Anzahl Geräte (PCs, Laptops, Tablets, Drucker)
* Bandbreitenanforderungen / Anwendungen
* Sicherheitsanforderungen (z.B. Gastnetz)
* Budgetrahmen

### P - Planen
#### Netzwerkschema (Basis)
[Netzwerkplan für Variante 2](./diagramme/edugames.graphml)

Im Netzwerkplan immer:
- Name
- Datum
- Versionsnummer

**IP-Adressen Erklärung:**
* Router: 192.168.0.1 -> Standardgateway für alle Geräte
* Switch (verwaltbar): 192.168.0.2 -> Management-IP für Konfiguration
* LAN-Clients: 192.168.0.10 - 192.168.0.20
* Server & Drucker: 192.168.0.100 - 192.168.0.120
* WLAN-Clients: 192.168.0.50 - 192.168.0.80
* DHCP-Range: 192.168.0.10 - 192.168.0.80 für dynamische Geräte

#### Hardware
| Gerät              | Menge       | Zweck                        |
| ------------------ | ----------- | ---------------------------- |
| Router/Firewall    | 1           | Internet & Sicherheit        |
| Switch Gigabit     | 1           | LAN-Verbindungen, verwaltbar |
| WLAN-Accesspoints  | 2           | WLAN-Abdeckung               |
| Server/Drucker     | 1           | interne Dienste              |
| Kabel / Patchpanel | nach Bedarf | Verbindung Geräte            |

#### Netzwerkdienste
* DHCP & DNS (IP-Bereich: 192.168.0.10-192.168.0.80)
* Firewall/NAT
* Datei- & Druckdienste
* Optional: VPN für externen Zugriff

#### Client-Konfiguration
* IP: DHCP oder statisch im vorgesehenen Bereich
* Subnetzmaske: `255.255.255.0`
* Standardgateway: 192.168.0.1
* DNS: Router oder externer DNS
* WLAN: SSID + Passwort (WPA2/WPA3)
* Netzlaufwerke & Drucker verbinden

### E - Entscheiden (Varianten)
**Variante 1 - WLAN + kleiner Switch**
* Vorteil: günstig, flexibel
* Nachteil: bei vielen Geräten evtl. langsamer

**Variante 2 - Kabelgebundenes LAN + WLAN**
* LAN-Clients feste IPs (192.168.0.10-192.168.0.20)
* WLAN dynamische IPs (192.168.0.50-192.168.0.80)
* Vorteil: stabil & schnell
* Nachteil: höherer Kostenaufwand

### R - Realisieren
* Geräte besorgen & aufstellen
* Router / Switch / APs konfigurieren
* DHCP-Server einrichten
* WLAN & LAN testen
* Server & Drucker einbinden

### K - Kontrollieren
* IP-Vergabe prüfen (DHCP / statisch)
* LAN- und WLAN-Zugriff testen
* Server & Drucker prüfen
* Switch-Management prüfen (192.168.0.2)
* Sicherheit & Gästezugang kontrollieren

### A - Auswerten
* Netzwerkschema inkl. 192.168.x.x-Adressen präsentieren
* Hardware & Kosten vorstellen
* Dienste & Konfiguration erklären
* Varianten & Sicherheitsoptionen diskutieren

### Erwartete Lernergebnisse erfüllt:
* Netzwerkschema mit allen wichtigen Informationen (inkl. Switch-IP)
* Materialliste für Netzwerkkomponenten
* Netzwerkparameter für Betrieb der Geräte definiert
* Vorgehensweise nach IPERKA angewendet

## 117-4C

### Benutzer- und Gruppenkonzept

**Benutzerkonten:**

* Jeder Mitarbeiter erhält ein persönliches Benutzerkonto (Vorname.Nachname).
* Authentifizierung über ein zentrales Active Directory.
* Passwort-Richtlinien (Komplexität, Ablauf nach 90 Tagen).

**Gruppen (basierend auf Organigramm):**

* Management (z.B. Direktor, Abteilungsleiter)
* Lehrkräfte
* Administration (Sekretariat, Organisation)
* Technik/Support
* Schüler/Teilnehmer
* Gastnetz (WLAN) → kein Zugriff auf interne Ressourcen

#### Datenkonzept

**Freizugebende Datenbereiche:**

* **Management-Daten** (z.B. Planung, Finanzen, Verträge)
* **Lehrmaterialien** (Unterrichtsunterlagen, Prüfungen)
* **Administration** (Stundenpläne, Schülerlisten, Formulare)
* **Technik-Daten** (Netzwerkdokumentation, Software-Images)
* **Öffentliche Daten** (z.B. Info-Aushänge, Newsletter, allgemeine Formulare)

#### Berechtigungsmatrix

| Ressource      | Management      | Lehrkräfte  | Administration | Technik     | Schüler | Gäste (WLAN) |
| -------------- | --------------- | ----------- | -------------- | ----------- | ------- | ------------ |
| Management     | Vollzugriff     | Lesen       | Lesen          | Lesen       | -       | -            |
| Lehrmaterial   | Lesen/Schreiben | Vollzugriff | Lesen          | -           | Lesen   | -            |
| Administration | Lesen           | Lesen       | Vollzugriff    | -           | -       | -            |
| Technik        | Lesen           | -           | -              | Vollzugriff | -       | -            |
| Öffentlich     | Lesen           | Lesen       | Lesen          | Lesen       | Lesen   | Lesen        |

Legende:

* **Vollzugriff** = Lesen, Schreiben, Ändern, Löschen
* **Lesen/Schreiben** = kein Löschen
* **Lesen** = nur Anzeige der Daten
* **-** = kein Zugriff

## Netzklassen

### IPv4 Netzklassen Übersicht

| Klasse | Erster Oktett-Bereich | Standard-Subnetzmaske | Adressbereich (Start - Ende) | Anzahl Hosts pro Netz | Zweck                      |
| ------ | --------------------- | --------------------- | ---------------------------- | --------------------- | -------------------------- |
| A      | 0 - 127               | 255.0.0.0 (/8)        | 0.0.0.0 - 127.255.255.255    | ca. 16 Mio            | Sehr große Netze           |
| B      | 128 - 191             | 255.255.0.0 (/16)     | 128.0.0.0 - 191.255.255.255  | ca. 65k               | Mittelgroße Netze          |
| C      | 192 - 223             | 255.255.255.0 (/24)   | 192.0.0.0 - 223.255.255.255  | 254                   | Kleine Netze               |
| D      | 224 - 239             | -                     | 224.0.0.0 - 239.255.255.255  | -                     | Multicast                  |
| E      | 240 - 255             | -                     | 240.0.0.0 - 255.255.255.255  | -                     | Reserviert (Experimentell) |

**Private Adressbereiche** (häufig genutzt im LAN):

* Klasse A: 10.0.0.0 - 10.255.255.255
* Klasse B: 172.16.0.0 - 172.31.255.255
* Klasse C: 192.168.0.0 - 192.168.255.255

## 117-5B

| Befehl         | Zweck / Beschreibung                                                                                                                             |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| ipconfig       | Zeigt die aktuelle IP-Konfiguration des Computers an (IP-Adresse, Gateway, DNS-Server, etc.). Wird oft genutzt, um Netzwerkprobleme zu erkennen. |
| ping           | Prüft, ob ein Ziel (z. B. ein anderer Computer oder eine Website) im Netzwerk erreichbar ist, und misst die Antwortzeit.                         |
| tracert        | Zeigt den Weg (Route) an, den Datenpakete zu einem Zielserver nehmen, und wo mögliche Verbindungsprobleme auftreten.                             |
| net share      | Zeigt alle freigegebenen Ordner und Ressourcen im Netzwerk oder erstellt neue Freigaben.                                                         |
| net statistics | Zeigt Netzwerkstatistiken an (z. B. Anzahl der gesendeten und empfangenen Pakete). Nützlich zur Fehleranalyse.                                   |
| net use        | Verbindet oder trennt Netzlaufwerke und zeigt bestehende Verbindungen zu anderen Computern im Netzwerk.                                          |
| net localgroup | Zeigt oder verwaltet lokale Gruppen auf dem Computer (z. B. Administratoren, Benutzer).                                                          |
| net user       | Zeigt Benutzerkonten an oder erstellt, ändert und löscht sie.                                                                                    |
| netstat        | Zeigt aktive Netzwerkverbindungen, offene Ports und Protokolle (TCP/UDP). Wichtig, um laufende Verbindungen zu prüfen.                           |
| nslookup       | Prüft DNS-Einträge – also die Auflösung von Domainnamen in IP-Adressen. Hilft bei DNS-Problemen.                                                 |

## 117-6A

| Befehl         | Beschreibung / Zweck                                                                                                    |
| -------------- | ----------------------------------------------------------------------------------------------------------------------- |
| ipconfig       | Zeigt die aktuelle IP-Konfiguration an (IP-Adresse, Subnetz, Gateway, DNS). Hilft bei IP- oder Verbindungsproblemen.    |
| ping           | Testet, ob ein Ziel (z. B. Server oder Website) erreichbar ist, und misst die Antwortzeit.                              |
| tracert        | Zeigt die Route (Zwischenstationen) an, die ein Datenpaket zu einem Ziel nimmt. Hilfreich bei Verbindungsverzögerungen. |
| net share      | Zeigt freigegebene Ordner an oder erstellt neue Netzwerkfreigaben.                                                      |
| net statistics | Zeigt Netzwerkstatistiken wie gesendete und empfangene Pakete oder Fehler an.                                           |
| net use        | Verbindet, trennt oder zeigt Netzlaufwerke und Netzwerkverbindungen an.                                                 |
| net localgroup | Zeigt oder verwaltet lokale Benutzergruppen (z. B. Administratoren, Benutzer).                                          |
| net user       | Zeigt Benutzerkonten an oder erstellt, ändert und löscht sie.                                                           |
| net view       | Zeigt Computer und freigegebene Ressourcen im Netzwerk an.                                                              |
| netstat        | (oft falsch als *netstats* bezeichnet) Zeigt aktive Verbindungen, Ports und Netzwerkprotokolle an.                      |
| nslookup       | Überprüft DNS-Einträge – also die Zuordnung von Domainnamen zu IP-Adressen.                                             |

## 117-6B - Testplan

1. Sichtprüfung
   * Prüfen, ob die Netzwerkkarte aktiviert ist und die Verbindung im System aktiv angezeigt wird.
   * Sicherstellen, dass die VirtualBox-Netzwerkeinstellungen (Adapter) korrekt eingebunden sind.

2. IP-Konfiguration prüfen
   * Befehl: `ipconfig /all`
   * Ziel: Kontrolle der IP-Adresse, Subnetzmaske, Gateway und DNS-Server.
   * Erwartung: Eine gültige IP-Adresse ist vorhanden, Gateway und DNS sind korrekt eingetragen.

3. Verbindung im lokalen Netzwerk testen
   * Befehl: `ping <Gateway-IP>`
   * Ziel: Prüfen, ob die lokale Netzwerkverbindung funktioniert.
   * Erwartung: Antwort vom Gateway erhalten.

4. Verbindung ins Internet testen
   * Befehl: `ping 8.8.8.8`
   * Ziel: Prüfen, ob eine Verbindung ins Internet besteht.
   * Erwartung: Antwort von der externen IP-Adresse erhalten.

5. DNS-Auflösung testen
   * Befehl: `ping www.google.com` und `nslookup www.google.com`
   * Ziel: Überprüfen, ob DNS-Namen korrekt aufgelöst werden.
   * Erwartung: Domain wird in eine IP-Adresse aufgelöst.

6. Routing überprüfen
   * Befehl: `tracert www.google.com`
   * Ziel: Route zum Ziel anzeigen, um festzustellen, wo die Verbindung unterbrochen wird.
   * Erwartung: Route wird vollständig angezeigt, keine Abbrüche.

7. Aktive Verbindungen prüfen
   * Befehl: `netstat -ano`
   * Ziel: Kontrolle laufender Netzwerkverbindungen und Dienste.
   * Erwartung: Erwartete Ports und Verbindungen sind sichtbar.

8. Netzwerkfreigaben und Benutzer prüfen
   * Befehle: `net share, net use, net user`
   * Ziel: Überprüfen, ob Freigaben und Benutzerberechtigungen korrekt sind.
   * Erwartung: Notwendige Freigaben und Benutzer vorhanden.

9. Zusammenfassung und Dokumentation
   * Beobachtungen notieren.
   * Fehlerursache und mögliche Massnahme oder temporären Fix beschreiben.

> BENUTZER UND GRUPPEN ERSTELLEN WIRD AN DER PRÜFUNG KOMMEN