# Zusammenfassung Modul 346 - Cloud Lösungen konzipieren und realisieren

Diese Zusammenfassung basiert auf der Dokumentation in [index.md](./index.md). Alle redundanten Informationen wurden konsolidiert, um eine präzise und lückenlose Übersicht zu bieten.

## 1. Cloud-Computing Grundlagen & Dienstmodelle (IaaS, PaaS, SaaS)

- **Definition & Bedeutung:** Eine Cloud ist ein über das Internet erreichbares Netzwerk aus entfernten Servern, das Rechenleistung, Speicher und Anwendungen bereitstellt. Sie ermöglicht Ortsunabhängigkeit und den Verzicht auf eigene Hardware-Verwaltung.
- **Die 5 NIST-Eigenschaften:**
  1.  _On-Demand Self-Service:_ Ressourcen können eigenständig und ohne Interaktion mit dem Anbieter gebucht werden.
  2.  _Broad Network Access:_ Zugriff erfolgt über Standardmechanismen von beliebigen Standorten und Endgeräten (z. B. Smartphone, Laptop).
  3.  _Resource Pooling:_ Physische Hardware wird durch Mandantenfähigkeit von mehreren Nutzern geteilt.
  4.  _Rapid Elasticity:_ Kapazitäten lassen sich extrem schnell vergrössern oder verkleinern.
  5.  _Measured Service:_ Die Nutzung wird überwacht und verbrauchsabhängig abgerechnet (Pay-per-Use).
- **Vor- und Nachteile:**
  - _Vorteile:_ Keine hohen Vorabinvestitionen in Hardware (Kostenersparnis), hohe Skalierbarkeit und weltweite Verfügbarkeit.
  - _Nachteile:_ Zwingende Abhängigkeit von einer funktionierenden Internetverbindung, Herausforderungen beim Datenschutz (Sorge um Datenhoheit) und das Risiko eines Vendor Lock-ins (erschwerter Anbieterwechsel).
- **Daten & Redundanz:** Die Daten liegen in Rechenzentren in bestimmten Regionen (z. B. "Europe-West"). Um Datenverlust bei Hardwaredefekten zu verhindern, spiegeln Anbieter die Daten auf mehrere Festplatten oder über verschiedene Brandabschnitte und Rechenzentren hinweg.
- **Private Nutzung:** Beispiele sind E-Mail (Gmail, Outlook.com), Online-Speicher (iCloud, Google Drive, Dropbox, OneDrive), Streaming (Netflix, Spotify) und Kommunikations-Backups (WhatsApp).
- **Assets in der Cloud:** Daten (Dokumente, Fotos, Datenbanken), Software (SaaS), Infrastruktur (Server, Netzwerke, Betriebssysteme) und Rechenleistung (für Berechnungen oder KI-Modelle).
- **Die drei Dienstmodelle & Verantwortlichkeiten:**
  - _IaaS (Infrastructure as a Service):_ Der Anbieter stellt die Hardware-Infrastruktur bereit (Server, Storage, Netzwerk, Virtualisierung). Der Nutzer verwaltet das Betriebssystem, die Middleware, die Laufzeitumgebung, Daten und Anwendungen. (Zielgruppe: Systemadministratoren; hohe Kontrolle und Wartungsaufwand; Analogie: leerer Herd in einer Mietküche).
  - _PaaS (Platform as a Service):_ Der Anbieter verwaltet zusätzlich das Betriebssystem, die Middleware und die Laufzeitumgebung. Der Nutzer kümmert sich ausschliesslich um die Entwicklung sowie die Verwaltung der Anwendungen und Daten. (Zielgruppe: Softwareentwickler; mittlere Kontrolle, geringer Aufwand; Analogie: fertiges Buffet).
  - _SaaS (Software as a Service):_ Der Anbieter betreibt und wartet die komplette Softwareanwendung inklusive aller darunterliegenden Schichten. Der Nutzer greift über den Webbrowser darauf zu. (Zielgruppe: Endanwender; geringe Kontrolle, minimaler Aufwand; Analogie: Restaurantbesuch).

## 2. Hyperscaler & Cloud-Provider

- **Grundlagen:** Hyperscaler sind weltweite Marktführer mit riesigen Rechenzentren, die Ressourcen on-demand bereitstellen, sich dynamisch skalieren (Grid Computing) und eine globale Infrastruktur für niedrige Latenz und Ausfallsicherheit besitzen.
- **Schweizer Regionen:** Alle drei grossen Anbieter besitzen eigene Rechenzentren in der Schweiz, um Datensouveränität (Daten bleiben im Land) und schnelle Verbindungen zu gewährleisten:
  - _Microsoft Azure:_ Regionen "Switzerland North" (Zürich) und "Switzerland West" (Genf).
  - _Google Cloud Platform (GCP):_ Region "europe-west6" (Zürich).
  - _Amazon Web Services (AWS):_ Region "Europe Zurich" ("eu-central-2").
- **Provider-Vergleich:**
  - _AWS:_ Marktführer mit dem grössten Service-Angebot, ausgereifter Technologie und einer grossen Community. Nachteilig sind die sehr komplexen Kostenstrukturen und eine steile Lernkurve.
  - _Microsoft Azure:_ Bietet eine hervorragende Integration in Windows-/Office- und Active-Directory-Umgebungen sowie für Hybrid-Cloud-Szenarien. Nachteile sind eine unübersichtliche Portal-Oberfläche und teils veraltete Dokumentationen.
  - _GCP:_ Technologisch führend im Bereich KI, Datenanalyse und Container-Technologien (Kubernetes) bei einfacherer Preisgestaltung. Nachteilig sind weniger spezielle Enterprise-Services und ein kleineres Netz an Rechenzentren.
- **Kostenmodelle:** Abrechnung erfolgt nach dem On-Demand-Modell (Pay-as-you-go) ohne Vorabkosten. Die Schweizer Cloud-Regionen sind aufgrund höherer Betriebs-, Immobilien- und Stromkosten teurer als Regionen in Deutschland (Frankfurt) oder den USA. Zur Kostensenkung können Rabatte durch die Reservierung von Ressourcen für ein oder drei Jahre in Anspruch genommen werden.
- **Referenzarchitektur:** Eingehender Traffic wird über einen _Load Balancer_ gleichmässig verteilt. Dahinter liegt eine _Auto-Scaling Group_ aus virtuellen Maschinen (Compute-Ebene), die bei Bedarf automatisch wächst oder schrumpft. Die Daten werden in einer verwalteten _Datenbank_ über mehrere physische _Availability Zones_ gespiegelt. Statische Daten (Bilder, Backups) werden kostengünstig auf einem _Objektspeicher_ (z. B. Amazon S3) abgelegt.

## 3. Cloud Native, Container & Microservices

- **Cloud Native:** Ein Ansatz zum Erstellen und Ausführen von Anwendungen, der die Vorteile von Cloud-Systemen (Skalierbarkeit, Ausfallsicherheit, Flexibilität) nutzt.
- **Vorteile:** Automatische Skalierung (Auto-scaling), Resilienz (Teilausfälle beeinträchtigen die Gesamtanwendung nicht), beschleunigte Veröffentlichung neuer Funktionen und Kosteneffizienz.
- **Technologien:**
  - _Orchestrierung:_ Kubernetes (K8s) als Industriestandard zur Container-Verwaltung.
  - _CI/CD-Tools:_ Jenkins, GitHub Actions, GitLab CI zur Test- und Deployment-Automatisierung.
  - _Service Mesh:_ Istio, Linkerd für die interne Dienstkommunikation.
  - _Monitoring & Logging:_ Prometheus, Grafana.
- **Microservices:** Eine Anwendungsarchitektur aus kleinen, unabhängigen Diensten, die über APIs kommunizieren und jeweils eine spezifische Funktion (z. B. Warenkorb oder Zahlung) ausführen.
- **Container:** Eine Methode, um Software und deren Abhängigkeiten (Code, Laufzeitumgebung, Systemwerkzeuge) in ein einziges, isoliertes Paket zu verpacken. Container laufen auf dem Entwickler-PC identisch wie in der Cloud. Die bekannteste Technologie ist **Docker**.
- **Time-to-Market (TTM):** Die Zeitspanne von der Idee bis zur Markteinführung eines Produkts. Sie wird im Cloud-Native-Bereich verkürzt durch:
  - Automatisierung (automatisches Testen und ausrollen).
  - Unabhängigkeit der Teams bei der Entwicklung einzelner Microservices.
  - Experimentierfreude durch risikoarme, schnelle Rollbacks auf Vorversionen.

## 4. Infrastruktur & Webserver-Setup (EduGame)

Für die fiktive Firma EduGame wurde eine containerisierte, skalierbare Webserver-Umgebung auf einer Ubuntu-VM in VirtualBox aufgesetzt.

- **Spezifikation der Host-VM:**
  - Betriebssystem: Ubuntu Desktop (bzw. Ubuntu 20.04 LTS).
  - Hardware: Mindestens 2 GB RAM, 2 CPUs, 10 GB Festplattenspeicher.
  - Benutzer & Gruppe: Neuer User und neue Gruppe namens `docker`.
  - Netzwerk: 4 Adapter (1x NAT für ausgehende Internetverbindungen, 3x Host-Only Adapter zur Isolation des internen Traffics und für SSH/SCP-Zugriffe über die Host-IP `192.168.56.126` oder `192.168.56.104`).
- **Host-Vorbereitung:** Die Docker-Installation erfolgt automatisiert über das Skript [docker_init.sh](./docker_init.sh), welches Paketquellen-GPG-Schlüssel einliest, das Docker-Repository einrichtet und die Docker Engine (`docker-ce`, `docker-ce-cli`, `containerd.io`) installiert.
- **Multi-Container-Architektur:**
  - _Loadbalancer:_ Ein Nginx-Container (`edugame_lb`), der nach aussen über Port 80 erreichbar ist. Er fungiert als Reverse Proxy auf Layer 7 und verteilt eingehende Anfragen zustandslos über das **Round-Robin-Verfahren** (abwechselnde Verteilung).
  - _Webserver:_ Zwei Apache-Container (`edugame_web1` auf Basis von `httpd:2.4` und `edugame_web2`), die isoliert in einem internen Docker-Bridge-Netzwerk namens `edugame_net` laufen und keine Ports direkt nach aussen freigeben.
- **Verzeichnisstruktur im Ordner `edugame-setup`:**
  ```text
  M306/
  ├── index.md
  └── edugame-setup/
      ├── docker-compose.yml
      ├── nginx.conf
      ├── web1/
      │   └── index.html
      └── web2/
          └── index.html
  ```
- **Konfigurationsdateien:**
  - [docker-compose.yml](./edugame-setup/docker-compose.yml): Definiert das Netzwerk `edugame_net` und die drei Container (Loadbalancer, Web1, Web2) als Infrastructure as Code.
  - [nginx.conf](./edugame-setup/nginx.conf): Konfiguriert den Nginx-Server, lauscht auf Port 80 und leitet Anfragen an die upstream-Gruppe weiter.
  - [web1/index.html](./edugame-setup/web1/index.html) und [web2/index.html](./edugame-setup/web2/index.html): Enthalten eine sichtbare Markierung (z. B. "Ausgeliefert von: Webserver X"), um die Lastverteilung testen zu können.
- **Inbetriebnahme und Troubleshooting:**
  - Die Container werden über die Befehle `cd ./M306/edugame-setup` und `docker compose up -d` im Hintergrund gestartet.
  - _Fehlerbehebung:_ Ein OCI-Runtime-Fehler (`Are you trying to mount a directory onto a file`) trat auf, weil Docker die Host-Datei `nginx.conf` nicht fand und stattdessen ein gleichnamiges Verzeichnis erstellte. Der Fehler wurde gelöst, indem die Container mit `docker compose down` gestoppt, das falsche Verzeichnis mit `rm -rf nginx.conf` gelöscht und die Konfigurationsdatei korrekt neu angelegt wurde.
  - _Test:_ Der Aufruf von `curl http://localhost` liefert abwechselnd die Inhalte von Webserver 1 und Webserver 2 zurück, was die Funktion des Loadbalancers bestätigt.
- **Load-Balancer Algorithmen im Überblick:**
  1.  _Statische Algorithmen:_
      - _Round Robin:_ Streng abwechselnde Verteilung.
      - _Weighted Round Robin:_ Leistungsstärkere Server erhalten proportional mehr Anfragen.
      - _Source IP Hash:_ Anfragen desselben Nutzers werden immer an denselben Server geleitet (wichtig für Logins).
  2.  _Dynamische Algorithmen (Echtzeit-Prüfung):_
      - _Least Connections:_ Zuweisung an den Server mit den aktuell wenigsten aktiven Verbindungen.
      - _Least Bandwidth:_ Zuweisung an den Server mit dem geringsten aktuellen Datendurchsatz.
  3.  _Performance-Sieger:_
      - _Least Response Time:_ Zuweisung basierend auf geringster Last und schnellster Antwortzeit.

## 5. Nextcloud-Inbetriebnahme & Standorte-Kopplung

- **Netzwerkanbindung (AWS Direct Connect):** Für die drei physischen Standorte von EduGame wird AWS Direct Connect als dedizierte Netzwerkverbindung zur Public Cloud genutzt. Dies bietet konstante Bandbreiten (bis 100 Gbit/s) und hohe Sicherheit mittels MACsec-Verschlüsselung. Die Funktion **SiteLink** ermöglicht zudem die direkte Vernetzung der drei Büro-Standorte untereinander über das AWS-Backbone.
- **Nextcloud-Infrastruktur:**
  - Die Bereitstellung erfolgt mittels Docker Compose über die Datei [docker-compose.yml (Cloud)](./edugame-cloud/docker-compose.yml).
  - Der Zugriff ist über den Port 8080 eingerichtet.
  - Es wurden zwei Benutzerkonten angelegt: Ein Administrator-Account und ein separater Account für die IT-Abteilung, um administrative von operativen Tätigkeiten zu trennen.
  - _Erkenntnis:_ Die Containerisierung (SaaS-ähnlicher Betrieb auf IaaS-Infrastruktur) erhält die Flexibilität für künftige Skalierungen oder Migrationen.

## 6. Migrationskonzept, Backup & Disaster Recovery (DR)

- **Begriffsdefinitionen:**
  - _Verfügbarkeit:_ Prozentsatz der Betriebszeit, in der ein System erreichbar ist.
  - _Datensicherheit:_ Schutz vor Manipulation, Zerstörung, Diebstahl oder Offenlegung über den gesamten Lebenszyklus.
  - _Datenresilienz:_ Widerstandsfähigkeit von Daten und Systemen gegen Fehler oder Angriffe, um den Betrieb aufrechtzuerhalten.
  - _Hochverfügbarkeit (HA):_ Systemarchitektur ohne Single Point of Failure (SPOF) und mit automatischem Failover zur Echtzeit-Vermeidung von Ausfällen (hoher Aufwand, synchrone Replikation).
  - _Disaster Recovery (DR):_ Richtlinien und technische Abläufe zur Wiederherstellung der IT nach einem Totalausfall (mittlerer bis hoher Aufwand, Fokus auf Wiederherstellungszeit/RTO).
  - _Backup:_ Regelmässige, versionierte Spiegelung und Archivierung von Datenbeständen gegen Verlust (geringer Aufwand, historischer Fokus).
- **Gegenüberstellung der Schutzmassnahmen:**
  | Kriterium | Hochverfügbarkeit (HA) | Disaster Recovery (DR) | Backup |
  | :--- | :--- | :--- | :--- |
  | **Primäres Ziel** | Ausfallvermeidung im Live-Betrieb | Komplette Systemwiederherstellung | Sicherung des rohen Datenbestands |
  | **Zeitlicher Fokus** | Echtzeit (Sekunden bis Minuten) | Stunden bis Tage (RTO) | Historisch (Tage, Wochen, Monate) |
  | **Typisches Szenario** | Ausfall einer HDD oder Server-Instanz | Totalausfall RZ, Ransomware | Versehentliches Löschen, Fehl-Deployments |
  | **Aufwand** | Sehr hoch | Mittel bis hoch | Gering bis mittel |
- **Die 6 R's der Cloud-Migration:**
  - _Rehosting (Lift & Shift):_ 1:1-Verschiebung der Infrastruktur ohne Architekturänderungen.
  - _Replatforming:_ Leichte Optimierungen zur Nutzung von Cloud-Vorteilen (z. B. Migration auf Managed Databases).
  - _Refactoring:_ Kompletter Umbau der Software auf eine Cloud-Native-Architektur (z. B. Microservices).
  - _Repurchasing:_ Wechsel der Software zu einem SaaS-Produkt.
  - _Retire:_ Abschaltung nicht mehr benötigter Systeme.
  - _Retain:_ Beibehaltung der bestehenden Umgebung.
- **Docker-Speichertypen und Backup-Konzept:**
  - _Bind Mounts:_ Host-Verzeichnisse werden in den Container gemountet (im EduGame-Setup für den Nginx-Loadbalancer genutzt). Sie lassen sich einfach als klassische Ordner sichern.
  - _Docker Volumes:_ Werden isoliert von Docker verwaltet (im EduGame-Setup für Nextcloud und MariaDB genutzt). Sie müssen zwingend über temporäre Hilfscontainer gesichert werden, da ein direktes Kopieren im laufenden Betrieb zu Dateninkonsistenz führt.
- **Automatisierte Migration (Lift & Shift auf neue VM mit IP `192.168.56.126`):**
  - _Backup:_ Auf der alten VM sichert das Skript [backup_migration.sh](./backup_migration.sh) die Bind-Mounts des Loadbalancers direkt und verpackt die Nextcloud-Volumes über einen temporären Hilfscontainer in ein `tar`-Archiv.
  - Die Backup-Archive werden per `scp` auf die neue VM übertragen.
  - _Restore:_ Auf der neuen VM entpackt das Skript [restore_migration.sh](./restore_migration.sh) die Bind-Mounts, erstellt leere Docker-Volumes, spielt die `tar`-Daten über temporäre Container ein und startet die Services mittels `docker compose up -d`.
- **Automatisierung (Cron):** Backups werden über einen systemeigenen Cronjob in der Crontab (`crontab -e`) automatisiert, beispielsweise täglich um 02:00 Uhr mit Log-Erstellung:
  ```bash
  0 2 * * * /bin/bash /home/docker/backup_migration.sh >> /var/log/backup_edugame.log 2>&1
  ```
- **Disaster Recovery (DR) Simulation:**
  1.  _System-Stopp:_ Container stoppen und Volumes löschen (`docker compose down -v`).
  2.  _Wiederherstellung:_ Aufruf von [restore_migration.sh](./restore_migration.sh).
  3.  _Integritätsprüfung:_ Bitidentischer Datenabgleich über MD5-Prüfsummen in Nextcloud oder Zeilenabgleiche in der MariaDB.
- **DR-Validierung:** Alle 6 Monate wird dieses DR-Szenario in einer isolierten Testumgebung (Host-Only-Netzwerk) durchgespielt, um zu prüfen, ob die Ladezeit der Nextcloud nach dem Restore unter 2 Sekunden liegt und die Ports strikt isoliert bleiben.

## 7. Testverfahren & IT-Systemdokumentation

- **Dokumenttypen:**
  - _Testkonzept:_ Definiert die Teststrategie und dient als Bauplan.
  - _Testprotokoll (nach HERMES):_ Formelle Tabelle zur Erfassung von Testfällen, erwarteten Ergebnissen, tatsächlichen Resultaten und Status (Bestanden/Nicht bestanden).
  - _Checkliste:_ Einfache Vorab-Prüfung von Bedingungen.
  - _Abnahmeprotokoll (Testbericht):_ Zusammenfassung aller Ergebnisse als Entscheidungsgrundlage für den Go-Live.
- **Unterschied Funktionale vs. Nicht-funktionale Tests:**
  - _Funktionale Tests (Das "Was"):_ Prüfen, ob das System die funktionalen Anforderungen erfüllt (Features, Use Cases, Eingabe/Ausgabe).
  - _Nicht-funktionale Tests (Das "Wie"):_ Prüfen die Qualität der Ausführung (Performance, Sicherheit, Skalierbarkeit, Ressourcenverbrauch).
- **Durchgeführte Testszenarien (Auszug aus dem Protokoll von Matteo Bosshard für die VM `192.168.56.126`):**
  - _FT01 (Web-Erreichbarkeit):_ Aufruf von IP über Port 80 lädt Website 1 oder 2. -> **Bestanden**
  - _FT02 (Loadbalancing):_ Mehrmaliges Laden der Seite wechselt abwechselnd zwischen Website 1 und 2. -> **Bestanden**
  - _FT03 (Nextcloud Upload):_ Login und Datei-Upload auf Port 8080 funktionieren. -> **Bestanden**
  - _FT04 (Datenpersistenz):_ Hochgeladene Nextcloud-Dateien existieren nach Container-Neustart weiter. -> **Bestanden**
  - _NFT01 (Ausfallsicherheit):_ Nach Stopp von `web1` leitet der Loadbalancer Traffic fehlerfrei an `web2` weiter. -> **Bestanden**
  - _NFT02 (Netzwerksicherheit):_ Externer Verbindungsversuch auf MariaDB-Port 3306 läuft in ein Timeout (Port-Isolation). -> **Bestanden**
  - _NFT03 (Performance):_ Ladezeit der Nextcloud-Startseite liegt unter 2 Sekunden. -> **Bestanden**
  - _NFT04 (Ressourcenverbrauch):_ CPU-Auslastung im Leerlauf liegt unter 5 %, RAM-Verbrauch bleibt stabil. -> **Bestanden**
- **Abnahme & verbleibende Massnahmen:** Die Migration wurde als zu 100 % erfolgreich bewertet. Die Freigabe für den produktiven Betrieb wurde erteilt; die alte On-Premise-VM kann nach einer Sicherheitsfrist von 7 Tagen gelöscht werden. Als offene Massnahme muss der Nginx-Loadbalancer zwingend mit SSL-Zertifikaten (HTTPS) konfiguriert werden, bevor er für das öffentliche Internet freigegeben wird.
- **Relevanz der IT-Systemdokumentation:**
  - _Wissenstransfer:_ Verhindert den Verlust impliziten Wissens bei Teamwechseln.
  - _Fehlerbehebung:_ Verkürzt die Behebungszeit (MTTR) im Fehlerfall erheblich.
  - _Compliance & Sicherheit:_ Dient als Nachweis für Audits und zur Minimierung der Angriffsfläche.
- _Folgen fehlender Dokumentation:_ Verlängerte Ausfallzeiten (Downtime), Sicherheitslücken (z. B. versehentlich geöffnete Ports), unkontrollierte Kosten ("Cloud Waste") durch vergessene Ressourcen und erhöhtes Risiko bei zukünftigen Migrationen.
- **Bedeutung im System-Lebenszyklus:**
  - _Betrieb (Run):_ Definiert den Soll-Zustand (Baseline) für das Monitoring.
  - _Veränderung (Change):_ Ermöglicht eine Impact-Analyse vor Systemerweiterungen.
  - _Notfall (Disaster Recovery):_ Dient als Schritt-für-Schritt-Anleitung zum Wiederaufbau.
- **Dokumentations-Tools:**
  - _Wikis & Wissensdatenbanken:_ DokuWiki (dateibasiert, Open-Source, einfache Administration), MS OneNote (schnelle Notizen und Screenshots).
  - _CMDB:_ i-doit CMDB (relationales IT-Asset-Management zur Verknüpfung von Hardware und Software).
  - _Documentation as Code (Markdown in Git):_ Dokumentation (z. B. [index.md](./index.md)) liegt direkt im Code-Verzeichnis, wächst synchron mit der Anwendung und wird über Versionskontrolle (Git) getrackt.

## 8. Datenstrukturen, Cloud-Speicher & Datenschutz

- **Die drei Datenstrukturtypen:**
  1.  _Strukturierte Daten:_ Folgen einem starren, vorgegebenen Schema (Zeilen/Spalten), z. B. SQL-Tabellen (PostgreSQL, MariaDB) oder CSV-Dateien. Abfrage erfolgt mittels SQL. Schemaänderungen erfordern Migrationen (geringe Flexibilität).
  2.  _Teilstrukturierte (semi-strukturierte) Daten:_ Besitzen kein starres Tabellenschema, aber eine innere Hierarchie mittels Tags oder Key-Value-Paaren (z. B. JSON, XML, YAML, Quellcode-Dateien). Abfrage über REST-APIs, GraphQL oder NoSQL-Queries.
  3.  _Unstrukturierte Daten:_ Formlose Binärdaten (Blobs) oder Textströme ohne vordefinierte Struktur, z. B. PDFs, Bilder, Videos oder Office-Dokumente. Abfrage erfordert Volltextsuche, Metadaten-Indizierung oder KI-/Vektorsuche.
- **Technische Analyse der Speicherorte:**
  - _Google Drive / OneDrive:_ Dient als Object Storage (BLOB-Speicher) für unstrukturierte Dateien (PDFs, Videos, Bilder) ohne einheitliches Datenmodell.
  - _GitHub Repositories:_ Speichert teilstrukturierte Quellcode- und Konfigurationsdateien (JSON, YAML), die syntaktischen Regeln (z. B. AST) folgen.
  - _Lokale Docker-Infrastruktur:_ Speichert strukturierte Anwendungsdaten (Benutzerkonten, Noten) in relationalen Tabellen mit strikten Datentypen (VARCHAR, INT) und Foreign-Key-Constraints.
- **Git-Speicherarchitektur:** Git speichert keine Zeilendifferenzen (Deltas), sondern komplette Snapshots in einer inhaltsadressierbaren Schlüssel-Wert-Datenbank im Verzeichnis `.git/objects/`. Die Objekte sind zlib-komprimiert und nach dem SHA-Hash ihres Inhalts benannt:
  1.  _Blobs:_ Speichern den reinen Dateiinhalt ohne Metadaten (keine Dateinamen, Pfade oder Berechtigungen).
  2.  _Trees:_ Repräsentieren Verzeichnisse. Sie verweisen auf die SHA-Hashes von Blobs oder Unter-Trees und ordnen ihnen Dateinamen und Zugriffsrechte zu.
  3.  _Commits:_ Verweisen auf den Root-Tree des jeweiligen Systemzustands, enthalten Metadaten (Autor, Timestamp, Nachricht) und verweisen auf den/die SHA-Hash(es) der Vorgänger-Commits (Parents).
- **Einfluss auf Backupkonzepte:**
  - _Strukturierte Daten (Datenbanken):_ Dateikopien im laufenden Betrieb führen zu korrupten Backups. Notwendig sind transaktionssichere Dumps (`mariadb-dump`, `pg_dump`) oder Point-in-Time-Recovery (PITR) über Write-Ahead-Logs (WAL).
  - _Teilstrukturierte Daten (Code/Git):_ Code is durch lokale Klone redundant, aber Pipelines, Issues und Pull-Requests müssen separat über die GitHub-API gesichert werden.
  - _Unstrukturierte Daten (Drive):_ Inkrementelle, blockbasierte Sicherungsverfahren mit Deduplizierung (z. B. BorgBackup, Restic) sind zwingend erforderlich, um Bandbreite und Speicher zu sparen.
- **Big Data & Speicherarchitekturen:**
  - _Big Data:_ Gekennzeichnet durch die 3 Vs: Volume (Volumen), Velocity (Geschwindigkeit) und Variety (Vielfalt).
  - _Data Warehouse (DWH):_ Für hochstrukturierte Daten optimiert (Schema-on-Write). Daten werden vor der Speicherung bereinigt und transformiert (z. B. AWS Redshift, Snowflake). Ideal für Business-Analysten (BI).
  - _Data Lake:_ Hochskalierbarer Objektspeicher für Rohdaten aller Strukturtypen. Die Strukturierung erfolgt erst bei der Abfrage (Schema-on-Read, z. B. AWS S3, Azure Data Lake Storage). Bestens geeignet für Data Scientists sowie KI/ML-Training.
- **Messenger-Vergleich & DSG:**
  | Kriterium | WhatsApp (Meta Platforms) | Telegram (Telegram FZ-LLC) | Threema (Threema GmbH) |
  | :--- | :--- | :--- | :--- |
  | **Rechtlicher Sitz** | USA / Irland (für EU/CH) | Dubai, Vereinigte Arabische Emirate | Schweiz (Pfäffikon SZ) |
  | **Anwendbares Recht** | EU-DSGVO / Schweizer DSG | VAE-Recht | Schweizer DSG / EU-DSGVO |
  | **Verschlüsselung** | E2E standardmässig aktiv | E2E nur in "Geheimen Chats" (Standard-Chats liegen auf Servern) | E2E standardmässig für alle Chats aktiv |
  | **Metadaten** | Sehr hoch (Nummer, IP, Kontakte, online) | Hoch (Nummer, IP, Kontaktliste auf Servern) | Minimal (anonyme 8-stellige ID, keine Nummer nötig) |
  | **Datennutzung** | Meta-Werbeprofile, Business-Features | Cloud-Synchronisation, Kanäle-Werbung | Nur zur technischen Übermittlung |
- **Datenschutz nach Schweizer DSG (gültig ab 1. September 2023):**
  - IP-Adressen, Telefonnummern, Standortdaten und Profilbilder gelten als personenbezogene Daten.
  - _Zweckbindung & Datensparsamkeit:_ Daten dürfen nur für den bei der Beschaffung deklarierten Zweck erhoben werden (Art. 6 DSG).
  - _Transparenz:_ Der Anbieter muss den Nutzer über die Datenbeschaffung informieren (Art. 19 DSG).
  - _Privacy by Design / Default:_ Systeme müssen ab Werk datenschutzfreundlich konzipiert sein (Art. 7 DSG).
  - _Recht auf Auskunft & Löschung:_ Nutzer können Auskunft verlangen und Löschung fordern. Während dies bei WhatsApp und Threema prozessual geregelt ist, ist eine rechtliche Durchsetzung gegenüber Telegram in Dubai praktisch unmöglich.

## 9. Die 12 Faktoren einer Cloud-Native Applikation

Dieses Regelwerk definiert Best Practices für moderne, skalierbare Cloud-Anwendungen:

1.  **Codebase (Codebasis):** Es gibt eine strikte 1:1-Beziehung zwischen Applikation und Git-Repository. Der Code bleibt über alle Deployments (Dev, Staging, Prod) identisch. Ein eigenener Branch mit hardcodierten Zugangsdaten für die Live-Umgebung ist ein Verstoss.
2.  **Dependencies (Abhängigkeiten):** Die App darf sich nicht auf global vorinstallierte Host-Werkzeuge (z. B. `curl`) verlassen. Alle Abhängigkeiten müssen explizit im Manifest (z. B. `package.json`, `requirements.txt`) deklariert und durch Container-Technologien (Docker) isoliert werden.
3.  **Config (Konfiguration):** Alles, was sich zwischen den Deployments unterscheidet (Datenbank-Passwörter, API-Keys), gehört über Umgebungsvariablen (`ENV`) zur Laufzeit injiziert. Der Quellcode muss ohne Sicherheitsrisiko als Open-Source auf GitHub veröffentlicht werden können.
4.  **Backing Services (Unterstützende Dienste):** Externe Dienste (Datenbanken, Mailserver, Caches) werden als lose gekoppelte Ressourcen behandelt, die über das Netzwerk via Connection String angebunden sind. Sie müssen sich ohne Code-Änderung austauschen lassen.
5.  **Build, Release, Run (Phasentrennung):** Der Weg vom Code zum Betrieb ist in drei unumkehrbare Schritte untergeteilt:
    - _Build-Phase:_ Der Code wird mit Abhängigkeiten in ein unveränderliches Artefakt (z. B. Docker-Image) übersetzt.
    - _Release-Phase:_ Das Artefakt wird mit der Konfiguration der Zielumgebung zusammengeführt. Jedes Release erhält eine eindeutige ID (z. B. v12).
    - _Run-Phase:_ Der Container wird ausgeführt. Änderungen im laufenden Betrieb ("Hot-Fixes" auf dem Server) sind nicht erlaubt.
6.  **Processes (Prozesse):** Die Anwendung wird als ein oder mehrere absolut zustandslose (stateless) Prozesse ausgeführt (Shared-Nothing-Architektur). Da Container-Speicher flüchtig (ephemeral) ist, müssen persistente Daten in Datenbanken, Redis-Caches oder Objektspeichern abgelegt werden.
7.  **Port Binding (Port-Bindung):** Die Anwendung ist autark und bringt ihren eigenen Webserver im Code mit (z. B. Spring Boot auf Port 8080). Sie verlässt sich nicht auf einen externen Webserver auf dem Host. Der externe Zugriff wird über vorgelagerte Load Balancer oder Reverse Proxies geroutet.
8.  **Concurrency (Nebenläufigkeit):** Skalierung erfolgt horizontal durch das Starten weiterer Instanzen des zustandslosen Prozesses (z. B. `docker compose up --scale web=5`), anstatt den bestehenden Server vertikal zu vergrössern.
9.  **Disposability (Einweg-Mentalität):** Prozesse müssen robust sein. Sie müssen sich schnell starten lassen (um auf Lastspitzen zu reagieren) und sich bei einem Stopp-Signal (`SIGTERM`) sauber beenden (Graceful Shutdown: laufende Anfragen abarbeiten, DB-Verbindungen schliessen). Bei Abstürzen darf keine Datenkorruption auftreten.
10. **Dev/Prod Parity (Umgebungsparität):** Unterschiede zwischen Entwicklung (Dev) und Live-Betrieb (Prod) werden minimiert: zeitlich (Code geht in Minuten live), personell (DevOps-Ansatz) und technisch (lokal wird exakt dieselbe Datenbank-Version via Docker genutzt wie produktiv).
11. **Logs (Protokolle):** Die App kümmert sich nicht um die Speicherung, Rotation oder Analyse von Logdateien. Sie schreibt Logs ungepuffert direkt nach `stdout` und `stderr`. Die Laufzeitumgebung (z. B. Docker-Daemon) fängt den Stream ab und leitet ihn an Log-Aggregatoren (z. B. Loki, ELK) weiter.
12. **Admin Processes (Administrative Prozesse):** Einmalige administrative Aufgaben (z. B. Datenbankmigrationen, Backups) müssen unter exakt denselben Bedingungen (gleiche Codebasis und Umgebungskonfiguration) in kurzlebigen Einmal-Containern (Ephemeral Processes) ausgeführt werden.
