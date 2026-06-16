## 1. CLOUD-GRUNDLAGEN & NIST-EIGENSCHAFTEN

- **Definition:** Netzwerk aus entfernten Servern, die über das Internet Rechenleistung, Speicher und Apps bereitstellen (Ortsunabhängigkeit, keine eigene Hardware-Wartung).
- **Die 5 NIST-Eigenschaften (Muss sitzen!):**

1. **On-Demand Self-Service:** Ressourcen selbstständig ohne menschliche Interaktion mit dem Anbieter buchen.
2. **Broad Network Access:** Zugriff von überall über Standardmechanismen mit diversen Geräten (Laptop, Mobile).
3. **Resource Pooling:** Viele Nutzer teilen sich dieselbe physische Hardware (Mandantenfähigkeit / Multi-Tenancy).
4. **Rapid Elasticity:** Kapazitäten extrem schnell je nach Bedarf vergrössern/verkleinern (Skalierbarkeit).
5. **Measured Service:** Ressourcennutzung wird genau überwacht und nach Verbrauch abgerechnet (Pay-per-Use).

- **Redundanz:** Daten werden fast immer auf mehrere Festplatten oder über verschiedene Brandabschnitte/Rechenzentren hinweg gespiegelt, um Datenverlust bei Defekten zu verhindern.
- **Vor- und Nachteile im Überblick:**
- _Vorteile:_ Keine hohen Investitionskosten in eigene Hardware, dynamische Skalierbarkeit mit den Anforderungen, hohe Verfügbarkeit von überall.
- _Nachteile:_ Zwingende Abhängigkeit von einer Internetverbindung, Datenschutz-Bedenken bezüglich Datenhoheit, Risiko eines Vendor Lock-in.

## 2. CLOUD-SERVICEMODELLE (\*aaS) & VERANTWORTLICHKEITEN

### Verantwortungsmatrix (Wer managt was?)

| Schicht                        | On-Premise | IaaS (Infrastructure) | PaaS (Platform) | SaaS (Software) |
| ------------------------------ | ---------- | --------------------- | --------------- | --------------- |
| **Anwendung / Code**           | Nutzer     | **Nutzer**            | **Nutzer**      | Provider        |
| **Daten**                      | Nutzer     | **Nutzer**            | **Nutzer**      | Provider        |
| **Laufzeitumgebung (Runtime)** | Nutzer     | **Nutzer**            | Provider        | Provider        |
| **Middleware**                 | Nutzer     | **Nutzer**            | Provider        | Provider        |
| **Betriebssystem (OS)**        | Nutzer     | **Nutzer**            | Provider        | Provider        |
| **Virtualisierung**            | Nutzer     | Provider              | Provider        | Provider        |
| **Physische Server**           | Nutzer     | Provider              | Provider        | Provider        |
| **Storage (Physisch)**         | Nutzer     | Provider              | Provider        | Provider        |
| **Netzwerk (Physisch)**        | Nutzer     | Provider              | Provider        | Provider        |

### Modellspezifische Details

- **IaaS (Infrastructure as a Service):**
- _Prinzip:_ Reine "Hardware" wird als virtuelle Ressource gemietet. Volle Admin-Rechte auf OS-Ebene.
- _Kriterien zur Auswahl:_ Sicherheit & Compliance (Serverstandort, DSGVO), Skalierbarkeit von CPU/RAM, transparente Kostenstrukturen, vertraglich garantierte Verfügbarkeit (SLA) und Support-Reaktionszeit.
- _Prüfungsbeispiel:_ **AWS EC2**, **Azure Virtual Machines (VMs)**, Google Compute Engine.

- **PaaS (Platform as a Service):**
- _Prinzip:_ Fertige Entwicklungs- und Laufzeitumgebung. Infrastruktur & OS komplett abstrahiert.
- _Deine Aufgabe:_ Nur Applikationscode deployen und Daten/Datenbank konfigurieren.
- _Prüfungsbeispiel:_ **Vercel**, **Heroku**, AWS Elastic Beanstalk, Google App Engine.

- **SaaS (Software as a Service):**
- _Prinzip:_ Komplette Software zur direkten Nutzung über das Internet im Abo-Modell.
- _Prüfungsbeispiel:_ **Netflix**, **Microsoft 365**, Google Docs, Nextcloud Cloud-Abo.

### 2b. DIE ZENTRALEN UNTERSCHIEDE ZWISCHEN IaaS, PaaS & SaaS

#### Direkter Vergleich der Kerneigenschaften

| Kriterium             | IaaS (Infrastructure)                                    | PaaS (Platform)                                             | SaaS (Software)                                                |
| --------------------- | -------------------------------------------------------- | ----------------------------------------------------------- | -------------------------------------------------------------- |
| **Fokus des Nutzers** | Infrastruktur-Design, Netzwerke & OS-Konfiguration.      | Reine Softwareentwicklung & Bereitstellung (Code).          | Reine Nutzung der fertigen Business-Funktionen.                |
| **Abstraktionsgrad**  | **Sehr gering** (Du verwaltest die virtuelle Hardware).  | **Mittel** (Hardware und OS sind unsichtbar).               | **Maximale Abstraktion** (gesamte technische Kette verborgen). |
| **Flexibilität**      | **Maximale Freiheit** (jedes OS/Tool installierbar).     | **Eingeschränkt** (an Runtimes/DBs der Plattform gebunden). | **Keine Flexibilität** (nur Einstellungen in der App möglich). |
| **Vendor Lock-in**    | **Sehr gering** (Linux-VM läuft fast überall identisch). | **Mittel bis hoch** (Nutzt oft proprietäre Dienste).        | **Sehr hoch** (Datenexport und Wechsel extrem schwer).         |
| **Zielgruppe**        | System- und Netzwerk-Engineers, Cloud-Architekten.       | Software-Entwickler, DevOps-Teams.                          | Endanwender, Unternehmen ohne IT-Fokus.                        |

#### Vor- und Nachteile der Hyperscaler (Wichtig für Vergleiche!)

- **AWS:**
- _Vorteile:_ Grösstes Service-Angebot, weltweite Marktführerschaft, enorm ausgereifte Technologie, riesige Community.
- _Nachteile:_ Sehr komplexe Kostenstrukturen (Fehlkalkulationsgefahr), steile Lernkurve.

- **Microsoft Azure:**
- _Vorteile:_ Perfekte Integration in Windows-, Office- und Active-Directory-Umgebungen; hervorragend für Hybrid-Cloud.
- _Nachteile:_ Portal-Benutzeroberfläche gilt oft als unübersichtlich; Dokumentation teilweise lückenhaft.

- **GCP (Google Cloud):**
- _Vorteile:_ Technologisch führend bei KI, Datenanalyse und Container-Technologien (Kubernetes); einfachere Preisgestaltung.
- _Nachteile:_ Geringere Auswahl an speziellen Enterprise-Services; kleineres Netz an weltweiten RZ.

### 2c. REFERENZARCHITEKTUR EINES HYPERSCALERS

Wie spielen die Cloud-Komponenten bei einer klassischen Web-App zusammen?

1. **Nutzerzugriff & Verteilung:** Anfragen treffen aus dem Internet auf einen _Load Balancer_, der den Traffic gleichmässig verteilt.
2. **Rechenleistung (Compute):** Dahinter liegt eine _Auto-Scaling Group_ aus VMs, die bei hoher Last automatisch neue Instanzen hochfährt (dynamische Skalierung).
3. **Datenbank (Storage):** Server greifen auf eine verwaltete DB zu, die über mehrere physische Rechenzentren (_Availability Zones_) gespiegelt ist (Ausfallsicherung bei Stromausfall).
4. **Statische Daten:** Bilder, Videos oder Backups liegen in einem günstigen, unbegrenzten _Objektspeicher_ (z. B. Amazon S3).

## 3. CLOUD NATIVE & DIE 12 LEITFÄDEN (THE TWELVE-FACTOR APP)

- **Definition Cloud Native:** Ansatz zur Entwicklung von Apps, die speziell für dynamische Cloud-Umgebungen konzipiert sind. Nutzt Microservices (kleine, lose gekoppelte, unabhängige Dienste pro Geschäftsfunktion) und Container.
- **Vorteile:** Automatische Skalierbarkeit, hohe Resilienz (Teilausfälle reissen nicht alles mit), schnelle Feature-Releases, hohe Kosteneffizienz.
- **Ökosystem-Tools:** Kubernetes (Orchestrierung), GitHub Actions / GitLab CI (CI/CD), Istio / Linkerd (Service Mesh), Prometheus & Grafana (Monitoring & Logging).
- **Time-to-Market (TTM):** Dauer von der Idee bis zum Marktstart. Verkürzt durch CI/CD-Automatisierung, unabhängige Microservice-Teams und minimales Risiko dank schnellen Rollbacks bei Fehlern.

### 3b. TIME-TO-MARKET (TTM) & DAS 12-FAKTOREN-KERNPRINZIP

> **Der 12-Faktoren-Kernsatz für die Prüfung:** > _Das 12-Faktoren-Prinzip etabliert einen strikten Architektur-Leitfaden, der Anwendungen komplett zustandslos, modular und isoliert aufbaut; dadurch wird Software maximal portabel, lässt sich unbegrenzt horizontal skalieren und bildet das technische Fundament, um automatisiertes Testen, fehlerfreie CI/CD-Pipelines und automatische Releases im Minutentakt überhaupt erst zu ermöglichen._

#### Time-to-Market (TTM) Kurz-Zusammenfassung

- **Warum wichtig (Business):** - _Wettbewerbsvorteil:_ Features sind sofort vor der Konkurrenz am Markt.
- _Feedback-Loops:_ Fehler und User-Bedürfnisse werden nach Stunden statt Monaten erkannt.
- _Risiko-Minimierung:_ Kontinuierliche kleine Updates statt riskantem "Big Bang"-Release.

- **Wie technisch umgesetzt (Cloud-Native-Hebel):**
- **Microservices:** Entkoppelte Dienste; Teams deployen unabhängig voneinander ohne Blockaden.
- **CI/CD-Automatisierung:** Code-Push triggert automatische Tests, Docker-Builds und das Ausrollen binnen Minuten.
- **Dev/Prod-Parität (Faktor 10):** Identische Docker-Umgebungen eliminieren den _"Auf meinem Laptop lief es aber!"_-Effekt.
- **Fast Rollback (Resilienz):** Bei Fehlern schaltet der Load Balancer sofort per Knopfdruck auf die vorherige, stabile Container-Version zurück.

### Die 12 Faktoren (Prüfungstiefe)

1. **Codebase:** Eine Codebasis, in Git verwaltet, viele Deployments. Strikte 1:1-Beziehung zwischen Service und Git-Repo.
2. **Dependencies:** Abhängigkeiten explizit deklarieren und isolieren. Keine Abhängigkeit von globalen System-Tools. Fixe Deklaration in Manifesten (`package.json`, `pom.xml`, `Cargo.toml`).
3. **Config:** Konfiguration in den Umgebungsvariablen (`ENV`) speichern. Strikt vom Code getrennt (Geheimnisse gehören nicht ins Git).
4. **Backing Services:** Unterstützende Dienste als angebundene Ressourcen behandeln (via Netzwerk-URL). Lokale DB im Container und Managed Cloud-DB sind ohne Code-Änderung austauschbar.
5. **Build, Release, Run:** Unumkehrbare Trennung des Deployments: _Build_ (Kompilieren/Docker Image), _Release_ (Verbindung von Image + Umgebungsvariablen, unveränderbare ID), _Run_ (Ausführung des Containers).
6. **Processes:** Anwendung als einen oder mehrere zustandslose (stateless) Prozesse ausführen. Lokaler Speicher ist flüchtig (_ephemeral_). Persistente Daten müssen in externe Zustandsspeicher (DB, S3, Redis).
7. **Port Binding:** Dienste durch Port-Bindung exportieren. Die App bringt ihren eigenen Webserver mit und bindet sich selbst an einen Port (z. B. 8080). Externe Webserver agieren nur als Reverse Proxy.
8. **Concurrency:** Über das Prozess-Modell horizontal skalieren (mehr Container-Instanzen statt Erhöhung von CPU/RAM der einzelnen Maschine).
9. **Disposability:** Robustheit durch schnelle Starts und sicheres Beenden (_Graceful Shutdown_ via `SIGTERM`) maximieren. Laufende Anfragen werden sauber abgearbeitet, bevor der Prozess stoppt.
10. **Dev/Prod Parity:** Entwicklungs-, Staging- und Produktionsumgebungen so identisch wie möglich halten (zeitlich, personell und technisch via Docker - lokal exakt dieselbe DB-Version wie live nutzen).
11. **Logs:** Logs als kontinuierliche Ereignisströme behandeln. Die App schreibt ungepuffert nach `stdout`/`stderr`. Der Host-Daemon fängt den Stream ab und leitet ihn an Log-Aggregatoren weiter.
12. **Admin Processes:** Administrative Aufgaben (DB-Migrationen, Backups) als Einmal-Prozesse (_Ephemeral Processes_) im selben Netzwerk mit exakt derselben Codebasis und Konfiguration ausführen.

Das 12-Faktoren-Prinzip erzwingt eine strikte Trennung von Code, Konfiguration und Zustand sowie die vollständige Isolation von Abhängigkeiten, wodurch die Anwendung maximal portabel, austauschbar und horizontal skalierbar wird - erst das ermöglicht automatisierte Tests, fehlerfreie CI/CD-Pipelines und risikofreie Releases im Minutentakt.

## 4. SKALIERUNG, VERFÜGBARKEIT & LOAD BALANCER

- **Zweck des Load Balancers (LB):** Agiert als Reverse Proxy, fängt Anfragen ab und verteilt sie gleichmässig auf Backend-Server. Verhindert Überlastung, bietet Ausfall-Erkennung und ermöglicht horizontale Skalierung.
- **Layer 4 (Transport-Ebene - TCP/UDP):** Routing-Entscheidung erfolgt rein auf Basis von Quell-/Ziel-IP und Port. Extrem schnell, kann Payload/Inhalt aber nicht lesen.
- **Layer 7 (Applikations-Ebene - HTTP/HTTPS):** Kann den Inhalt einsehen (HTTP-Header, Cookies, URL-Pfade). Ermöglicht intelligentes, pfadbasiertes Routing (z. B. `/api` an Server A, `/static` an Server B).

### Lastverteilungs-Algorithmen

- **Statisch (Starr nach Plan):**
- _Round Robin:_ Streng abwechselnde Verteilung (Gerechtigkeit).
- _Weighted Round Robin:_ Leistungsstärkere Server erhalten via Gewichtungsfaktor mehr Anfragen.
- _Source IP Hash:_ Bindet eine Benutzer-IP fix an einen Backend-Server (wichtig für Sessions/Logins).

- **Dynamisch (Echtzeit-Check):**
- _Least Connections:_ Leitet die Anfrage dorthin, wo aktuell am wenigsten aktive User-Verbindungen offen sind.
- _Least Bandwidth:_ Sendet Traffic dorthin, wo aktuell der geringste Datendurchsatz fliesst.

- **Performance-basiert:**
- _Least Response Time:_ Kombiniert die geringste Serverauslastung mit der schnellsten Antwortzeit.

## 5. HYBRID CLOUD & CONTAINER

- **Hybrid Cloud:** Kombination aus lokaler Infrastruktur (On-Premise / Private Cloud) und Ressourcen einer Public Cloud.
- **Rolle von Containern (Docker):** Bieten maximale **Portabilität**. Da ein Container den Code inklusive aller Abhängigkeiten isoliert kapselt, verhält er sich lokal auf dem Entwickler-Laptop exakt gleich wie auf einem Server in der Public Cloud.
- **Docker Speichertypen & Backup-Verhalten (Prüfungsfokus!):**
- _Bind Mounts:_ Direkt vom Host-System in den Container gemountete Verzeichnisse (z. B. Konfigurationen). Einfaches Backup über klassische Ordner-Archivierung auf dem Host.
- _Volumes:_ Komplett von Docker verwaltet und vom Host isoliert (bevorzugt für persistente Anwendungsdaten wie Datenbanken). Backup/Restore muss zwingend über temporäre Hilfs-Container und `tar`-Archive erfolgen.

## 6. BETRIEB & WICHTIGE DOCKER-BEFEHLE

- `docker compose up -d` : Startet alle in der `docker-compose.yml` definierten Container im Hintergrund (Detached Mode), erstellt Netzwerke und Volumes.
- `docker compose down` : Stoppt laufende Container des Projekts und entfernt sie inklusive der internen Netzwerke (Daten in benannten Volumes bleiben bestehen!).
- `docker compose logs -f` : Zeigt den kontinuierlichen Log-Stream (`stdout`/`stderr`) aller Projekt-Container live an.
- `docker stats` : Zeigt die Live-Ressourcenauslastung (CPU, RAM, Netzwerk-I/O) aller laufenden Container auf dem Host.

## 7. SICHERE ANBINDUNG & PUBLIC CLOUD (HYPERSCALER)

- **Schnittstellen zur Public Cloud:**
- _Site-to-Site VPN:_ Verschlüsselte Verbindung über das öffentliche Internet. Kostengünstig, aber Bandbreitenschwankungen und unberechenbare Latenzen.
- _Dedicated Connection (AWS Direct Connect / Azure ExpressRoute):_ Physische, dedizierte Standleitung direkt ins Rechenzentrum des Cloud-Providers.
- _Vorteile:_ Extrem hohe Bandbreite (bis 100 Gbit/s), geringe und konstante Latenz, maximale Sicherheit (am Internet vorbei).
- _SiteLink (AWS):_ Ermöglicht die direkte Kopplung mehrerer On-Premise-Firmenstandorte untereinander über das globale Backbone des Cloud-Providers.

- **Vorteile von selbst betriebener Container-Infrastruktur gegenüber reinem SaaS:**
- _Volle Datenhoheit (Souveränität):_ Daten verbleiben physisch auf eigenen Servern/Volumes (elementar für das Schweizer Datenschutzgesetz DSG).
- _Kein Vendor Lock-in:_ Container lassen sich jederzeit zu einem anderen Provider umziehen.
- _Kosteneffizienz:_ Bei massiven Datenmengen günstiger als teure Pro-User-Lizenzen (Seat-Lizenzen) von SaaS-Anbietern.

- **Sicherheitskonzept (Account-Trennung):** Strikte Trennung zwischen dem Haupt-Administrator und separaten Accounts für die IT-Abteilung, um administrative Aufgaben klar von operativen Tätigkeiten zu isolieren.

## 8. MIGRATION IN DIE CLOUD (DIE 6 R's)

- **1. Rehosting (Lift & Shift):** Die Anwendung/VM wird **1:1** ohne jegliche Code- oder Architekturänderungen in die Cloud kopiert. _Szenario:_ Hoher Zeitdruck oder sehr geringes Budget.
- **2. Replatforming (Lift & Reshape):** Kernarchitektur bleibt gleich, aber minimale Anpassungen werden vorgenommen, um grundlegende Cloud-Vorteile zu nutzen (z. B. Auslagerung der DB auf einen fertig verwalteten Dienst wie **AWS RDS**).
- **3. Refactoring / Re-architecting:** Kompletter Umbau der Anwendung zu einer Cloud-Native-Architektur (z. B. Monolith zu Microservices aufbrechen).
- **4. Repurchasing:** Wechsel der bestehenden Software zu einem fertigen SaaS-Produkt (z. B. eigene Mailserver abschalten und zu Microsoft 365 wechseln).
- **5. Retire:** Abschaltung und Eliminierung ungenutzter oder veralteter IT-Ressourcen.
- **6. Retain:** Beibehalten der aktuellen On-Premise-Umgebung (z. B. aus Compliance- oder Altsystem-Gründen).

## 9. FEHLERSUCHE & PERFORMANCE (TROUBLESHOOTING)

- **OCI-Runtime-Fehler (`Are you trying to mount a directory onto a file?`):**
- _Ursache:_ In der `docker-compose.yml` wurde ein Bind-Mount für eine Datei definiert, die auf dem Host-System beim Startzeitpunkt fehlte. Docker erstellt daraufhin automatisch ein leeres _Verzeichnis_ mit diesem Namen auf dem Host.
- _Lösung:_ 1. `docker compose down` -> 2. Falsches Verzeichnis auf dem Host löschen (`rm -rf dateiname`) -> 3. Konfigurationsdatei korrekt als Textdatei anlegen -> 4. `docker compose up -d`.

- **Anwendung von aussen nicht erreichbar:**
- _Prüfpunkte:_ Port-Mapping kontrollieren (`80:80`), Firewall/Security Groups des Cloud-Providers prüfen (Inbound Rules offen?), interne Docker-Netzwerk-Isolation checken (Datenbanken sollten absichtlich _nicht_ nach aussen gemappt sein, sondern isoliert im internen Docker-Netzwerk liegen).

## 10. DATENPLATTFORMEN: DATA WAREHOUSE VS. DATA LAKE

| Kriterium           | Data Warehouse (DWH)                                                                             | Data Lake                                                                                                                  |
| ------------------- | ------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------- |
| **Datenstruktur**   | Streng strukturiert, relational (Tabellen). Erfordert vordefiniertes Schema (_Schema-on-Write_). | Unstrukturiert, semistrukturiert, strukturiert (Rohdaten: Logs, JSON, Bilder). Schema erst bei Abfrage (_Schema-on-Read_). |
| **Zweck**           | Historische Datenanalyse, klar definierte Business-Reports, Management-Dashboards.               | Big Data Analysen, Data Science, Machine Learning, exploratives Suchen.                                                    |
| **Speichertyp**     | Hochperformanter, strukturierter und tendenziell teurerer Speicher.                              | Extrem kostengünstiger Objektspeicher (z. B. **Amazon S3**).                                                               |
| **Einsatzbeispiel** | Finanz-Quartalsbericht auswerten, Verkaufszahlen der letzten 5 Jahre vergleichen.                | Speichern von rohen IoT-Sensordaten, Klickströmen oder App-Logs für spätere KI-Modelle.                                    |

## 11. SCHWEIZER HYPERSCALER REGIONEN (EXAM-FACTS)

- **Microsoft Azure:** Regionen `Switzerland North` (Zürich) und `Switzerland West` (Genf).
- **Google Cloud Platform (GCP):** Region `europe-west6` (Zürich).
- **Amazon Web Services (AWS):** Region `Europe Zurich` bzw. `eu-central-2`.
- _Kosten-Fact:_ Die Preise in den Schweizer Cloud-Regionen sind aufgrund höherer Betriebs-, Immobilien- und Stromkosten in der Regel etwas teurer als z. B. in Deutschland (Frankfurt). Rabatte gibt es bei 1- oder 3-jährigen Ressourcen-Reservierungen.

## 12. TESTEN & QUALITÄTSSICHERUNG (NEU - AUS UNTERRICHTSNOTIZEN)

### Die 4 HERMES-Dokumenttypen im Testwesen

- **Testkonzept:** Definiert die gesamte Teststrategie und dient als strategischer Bauplan für alle Tests.
- **Testprotokoll:** Formelles Dokument zur tabellarischen Erfassung von konkreten Testfällen, erwarteten Resultaten und dem tatsächlichen Status (_Bestanden/Nicht bestanden_) während der Durchführung.
- **Checkliste:** Dient der simplen, schnellen Vorab-Prüfung von Bedingungen.
- **Abnahmeprotokoll (Testbericht):** Fasst abschliessend alle Resultate für die Stakeholder zusammen und bildet die rechtliche/organisatorische Entscheidungsgrundlage für den produktiven Betrieb (_Go-Live_).

### Die goldene Faustregel: Funktionale vs. Nicht-funktionale Tests

> **Funktionale Tests prüfen das "Was", nicht-funktionale Tests prüfen das "Wie".**

#### 1. Funktionale Tests (Das "Was")

Prüfen, ob das System tut, was es gemäss den funktionalen Anforderungen tun soll (Features, Business-Logik).

- _Beispielfragen:_ Funktioniert der Login mit korrektem Passwort? Legt der Button den Artikel in den Warenkorb? Wird die Mehrwertsteuer korrekt berechnet?
- _Prüfungsrelevante Szenarien:_ Web-Erreichbarkeit (FT01), Loadbalancing-Wechsel (FT02), Datei-Upload in Cloud-Speicher (FT03), Datenpersistenz nach Container-Neustart (FT04).

#### 2. Nicht-funktionale Tests (Das "Wie")

Prüfen, wie gut, sicher, performant oder resilient das System seine Funktionen ausführt (Qualitäts- und Infrastrukturmerkmale).

- _Beispielfragen:_ Lädt die Seite in unter 2 Sekunden (Performance)? Hält das System stand, wenn 1.000 User gleichzeitig klicken (Last/Stress)? Sind Passwörter verschlüsselt (Security)?
- _Prüfungsrelevante Szenarien:_ Ausfallsicherheit bei Ausfall einer VM/eines Webservers (NFT01), Netzwerksicherheit/Port-Blockierung von aussen (NFT02), Ladezeit/Performance (NFT03), Ressourcenverbrauch via `docker stats` im Leerlauf (NFT04).
