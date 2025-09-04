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
| Repeater / Range Extender | Verstärkt Signale, um größere Entfernungen zu überbrücken.                                | **Vorteile:** verbessert Reichweite; **Nachteil:** kann Geschwindigkeit reduzieren                              | Große Gebäude oder WLAN-Lücken                 |

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
  - Bis 100–250 Mbit/s möglich.
- HDSL (High bit-rate DSL)
  - Symmetrisch, bis ca. 2 Mbit/s.
  - Früher für Standleitungen (z.B. Firmenanbindungen).
- HDSL2
  - Optimierte Version von HDSL.
  - Gleiche Geschwindigkeit (ca. 1,5–2 Mbit/s), benötigt aber nur eine Kupferdoppelader statt zwei.
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
* **Warum:** Glasfaser liefert symmetrische hohe Bandbreiten (z.B. 300 Mbit–10 Gbit je nach Tarif), sehr niedrige Latenz und stabile Leistung abends, wenn viele Geräte aktiv sind. Für einen Webshop ist Zuverlässigkeit + feste IP ideal.
* **Wie (praktisch):** Prüfen, ob Glasfaser an der Adresse verfügbar ist (Hinwil wird aktuell ausgebaut - Ausbau läuft etappenweise). Wenn FTTH verfügbar: Anbieterangebote (Swisscom, Sunrise, Quickline, Salt, lokale Anbieter) vergleichen; Business-Tarif oder Residential + Static-IP-Option wählen. (Swisscom Ausbau Hinwil / Verfügbarkeit prüfen).
* **Kosten/Beispiel:** Swisscom / Sunrise/Quickline haben FTTH-Tarife - Preise variieren (Promotionen möglich). Für Preisvergleiche siehe Vergleichsportale.


* **ADSL/DSL-Light** = asymmetrisch, für Privatkunden.
* **VDSL/VDSL2-Vectoring** = moderne, schnelle Varianten.
* **HDSL/HDSL2/SDSL/G.SHDSL/SHDSL** = symmetrische Verfahren, vor allem Business-Anschlüsse.

## 117-2C

OSI-7 Schichten Modell

### 1. Physical Layer
1. Wie heisst diese Schicht?: Physical Layer (Physische Schicht)
2. Was macht diese Schicht?: Überträgt die rohen Bits (0 und 1) als elektrische, optische oder Funk-Signale
3. Welche Protokolle sind in dieser Schicht?: Streng genommen keine Protokolle (Aber Standarts / Technologien); Ethernet, DSL, WLAN, Bluetooth
4. Beschreibung: In der physischer Schicht wird die mechanische, elektrische und funktionale EIgenschaften der Verbindung definiert. Stecker, Kabeltypen, Übertragungsrate oder Signalcodierung. Es wird sichergestellt, dass die Bits zuverlässig von einem Gerät zum anderen kommen.