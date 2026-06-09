# Cloud-Servicemodelle & Unterschiede

| Modell   | Sicherheitsverantwortung                                     | Kontrolltiefe                                          | Schichten (Kunde)                    | Beispiele              |
| :------- | :----------------------------------------------------------- | :----------------------------------------------------- | :----------------------------------- | :--------------------- |
| **IaaS** | Kunde: OS, Middleware, App; Provider: Hardware & Hypervisor. | Sehr hoch; freie OS-, Routing- und Software-Wahl.      | App, Daten, Runtime, Middleware, OS. | AWS EC2, Azure VMs.    |
| **PaaS** | Kunde: App, Daten; Provider: OS, Runtime, HW-Infrastruktur.  | Mittel; Fokus auf App-Code; Plattform fest vorgegeben. | App, Daten.                          | Cloud Run, Heroku.     |
| **SaaS** | Provider: Gesamter Stack; Kunde: Benutzerzugriff (IAM).      | Gering; nur Konfigurationen innerhalb der Applikation. | Keine.                               | Microsoft 365, GitHub. |

# Cloud Native & 12-Factor App

- **Cloud Native:** App-Entwicklung optimiert für dynamische Cloud-Infrastrukturen (Microservices, Container, CI/CD, automatische Orchestrierung).
- **Nutzen (Time-to-Market):** Kürzere Entwicklungszyklen durch unabhängiges Deployment, automatisierte Testpipelines und minimales Ausfallrisiko (schnelle Rollbacks).

### Twelve-Factor App Principles

| #      | Faktor                  | Prinzip                                                                                              |
| :----- | :---------------------- | :--------------------------------------------------------------------------------------------------- |
| **1**  | **Codebase**            | Eine im Git verwaltete Codebasis für alle Deployments (Dev, Staging, Prod).                          |
| **2**  | **Dependencies**        | Explizite Deklaration in Manifesten (package.json, pom.xml); keine globalen Tools voraussetzen.      |
| **3**  | **Config**              | Umgebungsvariablen (ENV) strikt vom Code trennen; keine Geheimnisse im Git.                          |
| **4**  | **Backing Services**    | Externe Ressourcen (DBs, Caches) lose über Netzwerk-URL anbinden und austauschen.                    |
| **5**  | **Build, Release, Run** | Strikte Trennung: Code kompilieren (Build), mit Config vereinen (Release), ausführen (Run).          |
| **6**  | **Processes**           | Prozesse sind zustandslos (stateless); flüchtiges Dateisystem; Daten extern persistieren.            |
| **7**  | **Port Binding**        | App ist eigenständig und lauscht autark auf eigenem Port (z.B. 8080) statt externem Webserver.       |
| **8**  | **Concurrency**         | Horizontale Skalierung durch das Hinzufügen weiterer Prozess-Instanzen (Container).                  |
| **9**  | **Disposability**       | Schneller Start für Elastizität; sauberer Shutdown (Graceful Shutdown) bei Stopp-Signalen (SIGTERM). |
| **10** | **Dev/Prod Parity**     | Entwicklungs-, Staging- und Produktionsumgebungen technisch und versionell identisch halten.         |
| **11** | **Logs**                | Logs als Event-Stream nach stdout/stderr schreiben; Host leitet an Log-Aggregatoren weiter.          |
| **12** | **Admin Processes**     | Einmal-Skripte (z.B. DB-Migrationen) in identischer Umgebung und Release-Version ausführen.          |

# Skalierung, Verfügbarkeit & Load Balancing

- **Zweck von Load Balancern:** Verteilung des Netzwerkverkehrs zur Überlastungsvermeidung, Erhöhung der Hochverfügbarkeit (Failover) und Latenzminimierung.
- **Lastverteilungs-Algorithmen:** Round Robin (abwechselnd), Weighted RR (nach Serverleistung), Source IP Hash (IP-Bindung an Server für Session-Persistenz), Least Connections (an Server mit wenigsten aktiven Verbindungen), Least Response Time (schnellste Antwortzeit).

### Network Load Balancer (L4) vs. Application Load Balancer (L7)

| Merkmal           | L4 Network Load Balancer (NLB)                                                         | L7 Application Load Balancer (ALB)                                              |
| :---------------- | :------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------ |
| **OSI-Schicht**   | Schicht 4 (Transport-Ebene).                                                           | Schicht 7 (Applikations-Ebene).                                                 |
| **Routing-Basis** | IP-Adressen und TCP/UDP-Ports; keine Inhaltsanalyse der Pakete.                        | HTTP/HTTPS-Header, Cookies, URL-Pfade; inhaltsbasiertes Routing.                |
| **Performance**   | Ultra-hoch, sehr niedrige Latenz; verarbeitet Millionen Requests/s auf Transportebene. | Höhere Latenz durch SSL-Entschlüsselung und Inhaltsanalyse auf App-Ebene.       |
| **Features**      | Statische IP-Unterstützung; ideal bei massiven, unvorhersehbaren TCP-Spitzen.          | SSL/TLS-Terminierung; Sticky Cookies; pfad- und hostbasiertes Routing.          |
| **Use-Case**      | High-Performance TCP/UDP-Streaming; Datenbank-Cluster-Routing.                         | Microservices-Architekturen; Web-Applikationen mit Pfad-Routings (z.B. `/api`). |

# Hybrid Cloud & Container-Betrieb

- **Architektur-Szenario:** Kombination aus lokaler IT (On-Premises) und Public Cloud. Container (z.B. Docker, Podman) kapseln Applikation und Abhängigkeiten. Dies sichert Portabilität und ermöglicht das Verschieben von Workloads zwischen lokaler Hardware und Cloud (z.B. Cloud-Bursting bei Lastspitzen).
- **Vorteile selbst betrieben vs. Public Cloud:** Datensouveränität (Einhaltung Schweizer DSG), kein Vendor Lock-in (einfacher Providerwechsel), feste Hardwarekosten statt variabler Pay-per-Use-Kosten bei hoher Dauerlast, feingranulare Kernel-/Netzwerkkontrolle.

### Syntax-Spickzettel: Container-Befehle

| Befehl                        | Aktion / Zweck                                    | Flags / Parameter                                                   |
| :---------------------------- | :------------------------------------------------ | :------------------------------------------------------------------ |
| `docker run`                  | Container aus Image erstellen und starten.        | `-d` (Hintergrund), `-p 80:80` (Port-Mapping), `--name web` (Name). |
| `docker stop / start`         | Stoppt (`SIGTERM`/`SIGKILL`) / startet Container. | Container-ID oder Name.                                             |
| `docker ps`                   | Listet laufende Container auf.                    | `-a` (zeigt auch gestoppte Container).                              |
| `docker logs / stats`         | Zeigt Log-Stream / Echtzeit-CPU-RAM-Verbrauch.    | `-f` (folgt Log live), zeigt alle Container live.                   |
| `docker rm`                   | Löscht gestoppten Container permanent.            | `-f` (erzwingt Löschen eines laufenden Containers).                 |
| `docker compose up`           | Baut/startet das gesamte Multi-Container-Setup.   | `-d` (startet im Hintergrund / detached).                           |
| `docker compose down`         | Stoppt und entfernt Container sowie Netzwerke.    | `-v` (löscht benannte Volumes permanent).                           |
| `docker compose stop / start` | Stoppt / startet Container des Setups temporär.   | Netzwerke und Container-Objekte bleiben erhalten.                   |

# Sichere Anbindung

- **Standort-Verbindungen zur Cloud:**

| Kriterium           | Site-to-Site IPsec VPN                                       | Dedicated / Direct Connect                                               |
| :------------------ | :----------------------------------------------------------- | :----------------------------------------------------------------------- |
| **Übertragungsweg** | Verschlüsselter Tunnel über öffentliches Internet.           | Physische Standleitung direkt ins Rechenzentrum.                         |
| **Sicherheit**      | Hoch (IPsec-Verschlüsselung); Daten nutzen offenes Internet. | Maximal; physisch isolierte Leitung am Internet vorbei; optional MACsec. |
| **Performance**     | Schwankend; Latenz/Bandbreite internetabhängig.              | Sehr stabil; konstant niedrige Latenz; bis zu 100 Gbit/s.                |
| **Kosten**          | Günstig; schnelle Einrichtung.                               | Sehr hoch; wiederkehrende Gebühren und Hardwarekosten.                   |
| **Use-Case**        | Anbindung kleinerer Standorte oder als Backup-Leitung.       | Hauptrechenzentren mit permanenter Last.                                 |

- **AWS SiteLink:** Koppelt On-Premises-Standorte direkt über das globale Provider-Backbone.
- **Schweizer Regionen:** Azure: `Switzerland North` (ZH), `West` (GE); GCP: `europe-west6` (ZH); AWS: `Europe Zurich` (`eu-central-2`). Schweizer Regionen sind teurer; Rabatte über 1-3 Jahre Ressourcen-Reservierung möglich.

# Cloud-Migration

- **Rehosting (Lift & Shift):** 1:1 Verschiebung in Cloud-VMs ohne Code-Änderung. _Kriterium:_ Akuter Zeitdruck (RZ-Vertrag läuft aus), geringes Budget, Legacy-Systeme.
- **Replatforming (Lift & Reshape):** Verschiebung mit minimalen Anpassungen zur Nutzung von Cloud-Managed-Services (z.B. eigene DB durch Managed DB ersetzen). _Kriterium:_ Einsparung von DB-Betriebsaufwand bei stabiler App-Architektur.

| Kriterium            | Lift & Shift (Rehosting)                                 | Lift & Reshape (Replatforming)                                   |
| :------------------- | :------------------------------------------------------- | :--------------------------------------------------------------- |
| **Aufwand / Risiko** | Minimaler Voraufwand; sehr geringes Migrationsrisiko.    | Geringer Anpassungsaufwand; geringes bis mittleres Risiko.       |
| **Zeit / Kosten**    | Sehr schnell abgeschlossen; geringe Vorbereitungskosten. | Mittelschnell; moderate Anpassungs- und Testkosten.              |
| **Cloud-Nutzen**     | Gering; VM-Betriebssystem muss selbst gewartet werden.   | Mittel; Managed Backups und automatische Betriebssystem-Patches. |

# Fehlersuche & Performance

### Diagnostischer Leitfaden

| Symptom                             | Ursache                                                                        | Massnahme                                                                                |
| :---------------------------------- | :----------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------- |
| **App nicht erreichbar.**           | Port-Mapping falsch; Cloud-Firewall blockiert; LB-Health-Check fehlgeschlagen. | Inbound-Rules prüfen; Port-Mapping verifizieren; Health-Check-Pfad anpassen.             |
| **OCI-Runtime-Fehler: `mount...`**  | Bind-Mount-Datei fehlte auf Host; Docker erstellte leeren Ordner.              | Container stoppen; falschen Ordner auf Host löschen; Datei korrekt anlegen; neu starten. |
| **Hohe Latenz bei Traffic-Spitze.** | CPU/RAM ausgelastet; Anfragen stauen sich.                                     | Auto-Scaling (horizontale Skalierung) einrichten; Container-Ressourcenlimits anheben.    |
| **DB-Abfragen schleichend.**        | Fehlende Tabellenindizes; Festplatten-IOPS erschöpft.                          | Slow-Query-Logs prüfen; Indizes optimieren; SSD-Speicherklasse upgraden (mehr IOPS).     |

### Validierung & Testwesen (HERMES)

- **HERMES-Dokumente:** Testkonzept (Teststrategie), Testprotokoll (konkrete Testfälle mit Soll/Ist-Status), Checkliste (Vorab-Prüfung), Abnahmeprotokoll (Entscheidungsgrundlage Go-Live).
- **Funktionale Tests (Was?):** Prüfen Features. _Beispiele:_ Login-Funktion (FT01), Loadbalancing-Wechsel (FT02), Datei-Upload (FT03), Datenpersistenz nach Container-Neustart (FT04).
- **Nicht-funktionale Tests (Wie?):** Prüfen Qualitätsmerkmale. _Beispiele:_ Ausfallsicherheit bei VM-Stopp (NFT01), DB-Port-Blockierung von aussen (NFT02), Ladezeit unter 2s (NFT03), Idle-Ressourcenverbrauch (NFT04).

# Datenplattformen

### Matrix: Data Lake vs. Data Warehouse (DWH)

| Kriterium            | Data Lake                                                                | Data Warehouse (DWH)                                          |
| :------------------- | :----------------------------------------------------------------------- | :------------------------------------------------------------ |
| **Datentyp**         | Rohdaten; unstrukturiert, semistrukturiert (Logs, JSON, Bilder).         | Relational; strukturiert und vorverarbeitet (Tabellen).       |
| **Schema-Ansatz**    | Schema-on-Read (Strukturierung erst bei Abfrage).                        | Schema-on-Write (Schema vor Speicherung definiert).           |
| **Verarbeitung**     | ELT (Extract, Load, Transform).                                          | ETL (Extract, Transform, Load).                               |
| **Kosten & Eignung** | Sehr günstig (S3); perfekt für ML/KI.                                    | Höher (Compute-Optimiert); für Business Intelligence/Reports. |
| **Praxisbeispiel**   | IoT-Sensor-Telemetriedaten ungefiltert speichern für ML-Wartungsmodelle. | Verkaufs- und CRM-Daten zusammenführen für Quartalsberichte.  |

- **Datentypen:** _Strukturierte Daten:_ SQL-Tabellen. _Teilstrukturierte Daten:_ JSON, XML, YAML (Key-Value). _Unstrukturierte Daten:_ PDFs, Bilder, Videos (Blobs).
- **Schweizer DSG & Big Data:** Personenbezogene Daten unterliegen dem DSG. Vorgaben: Zweckbindung (Nutzung nur für deklarierten Zweck), Datensparsamkeit, Privacy by Design/Default (datenschutzfreundliche Voreinstellungen), Recht auf Auskunft/Löschung.
