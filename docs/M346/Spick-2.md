## 1. & 2. Cloud-Servicemodelle & Unterschiede

Die Servicemodelle unterscheiden sich grundlegend durch die **Verteilung der Verantwortlichkeiten (Shared Responsibility Model)** zwischen dir (dem Kunden) und dem Cloud-Anbieter.

### Übersicht und Abgrenzung

- **Infrastructure as a Service (IaaS):** Der Anbieter stellt lediglich die fundamentale IT-Infrastruktur (Server, Speicher, Netzwerk, Virtualisierung) bereit. Du hast die volle Kontrolle über das Betriebssystem, die Middleware und die Anwendungen.
- **Platform as a Service (PaaS):** Der Anbieter übernimmt zusätzlich die Verwaltung des Betriebssystems, der Laufzeitumgebungen (Runtime) und der Datenbanken. Du konzentrierst dich rein auf das Deployment deines Anwendungscodes.
- **Software as a Service (SaaS):** Das "Rundum-sorglos-Paket". Die gesamte Anwendung wird vom Anbieter gehostet und gewartet. Du nutzt die Software schlussendlich nur noch (meist via Browser oder API).

### Vergleichstabelle: Wer verwaltet was?

| Komponente / Schicht             | On-Premises (Lokal) | IaaS                   | PaaS                   | SaaS                   |
| -------------------------------- | ------------------- | ---------------------- | ---------------------- | ---------------------- |
| **Applikation & Daten**          | Selbst verwaltet    | Selbst verwaltet       | **Selbst verwaltet**   | Vom Anbieter verwaltet |
| **Runtime & Middleware**         | Selbst verwaltet    | Selbst verwaltet       | Vom Anbieter verwaltet | Vom Anbieter verwaltet |
| **Betriebssystem (OS)**          | Selbst verwaltet    | **Selbst verwaltet**   | Vom Anbieter verwaltet | Vom Anbieter verwaltet |
| **Virtualisierung & Hypervisor** | Selbst verwaltet    | Vom Anbieter verwaltet | Vom Anbieter verwaltet | Vom Anbieter verwaltet |
| **Server-Hardware & Storage**    | Selbst verwaltet    | Vom Anbieter verwaltet | Vom Anbieter verwaltet | Vom Anbieter verwaltet |
| **Netzwerk-Infrastruktur**       | Selbst verwaltet    | Vom Anbieter verwaltet | Vom Anbieter verwaltet | Vom Anbieter verwaltet |

### Praxisbeispiele & Vor-/Nachteile

| Modell   | Typische Beispiele                                        | Hauptvorteil                                                             | Hauptnachteil                                                                              |
| -------- | --------------------------------------------------------- | ------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| **IaaS** | AWS EC2, Google Compute Engine (GCE), Azure VMs           | Maximale Flexibilität und Kontrolle über die Systemkonfiguration.        | Hoher Administrations- und Wartungsaufwand (Updates, Security-Patches).                    |
| **PaaS** | AWS Elastic Beanstalk, Heroku, Azure App Services, Vercel | Schnelles Deployment; Infrastruktur skaliert automatisch im Hintergrund. | Gewisser "Vendor Lock-in"; weniger Kontrolle über die zugrunde liegende Systemarchitektur. |
| **SaaS** | Microsoft 365, GitHub, Salesforce, Nextcloud Cloud        | Sofort einsatzbereit; keinerlei Wartungs- oder Entwicklungsaufwand.      | Kaum Individualisierungsmöglichkeiten; vollständige Abhängigkeit vom Anbieter.             |

## 3. Cloud Native & die 12-Faktor-Anwendung

### Die Grundidee

**Cloud Native** beschreibt einen Ansatz zur Entwicklung und zum Betrieb von Anwendungen, die _speziell für die Cloud_ konzipiert wurden. Es geht nicht darum, eine alte Legacy-Anwendung einfach auf einer VM in der Cloud laufen zu lassen (Lift and Shift). Stattdessen nutzt Cloud Native die Vorteile von dynamischen Cloud-Umgebungen voll aus.

- **Kernmerkmale:** Skalierbarkeit, Resilienz (Fehlertoleranz), lose Kopplung (Microservices) und ein hoher Grad an Automatisierung (CI/CD, Container-Orchestrierung wie Kubernetes).

### Zentraler Business-Treiber: Time-to-Market

- **Definition:** Die Zeitspanne von der ersten Produktidee (oder dem Schreiben eines Features) bis zur tatsächlichen Verfügbarkeit auf dem Markt für den Endnutzer.
- **Zusammenhang mit Cloud Native:** Durch modulare Microservices, automatisierte Testpipelines (CI/CD) und deklarative Infrastruktur können Code-Änderungen innerhalb von Minuten statt Monaten in die Produktion ausgerollt werden. Die **Time-to-Market sinkt drastisch**, was einen massiven Wettbewerbsvorteil bedeutet.

### Die 12-Faktor-Anwendung (The Twelve-Factor App)

Dieses Framework bietet 12 Best Practices, um robuste, portable und sauber skalierbare Applikationen (insb. als Software-as-a-Service) zu bauen.

| Faktor | Name                                          | Kurzerklärung (Fachlich)                                                                                                                              |
| ------ | --------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1**  | **Codebase (Codebasis)**                      | Eine im Versionskontrollsystem (z. B. Git) getrackte Codebasis für viele Deployments (Dev, Staging, Prod).                                            |
| **2**  | **Dependencies (Abhängigkeiten)**             | Abhängigkeiten müssen explizit deklariert und isoliert werden (kein Verlass auf global installierte Tools).                                           |
| **3**  | **Config (Konfiguration)**                    | Konfigurationen (DB-Credentials, Umgebungsvariablen) strikt vom Code trennen.                                                                         |
| **4**  | **Backing Services (Unterstützende Dienste)** | Externe Dienste (Datenbanken, Message Broker) werden als lose gekoppelte, austauschbare Ressourcen behandelt.                                         |
| **5**  | **Build, Release, Run**                       | Strikte Trennung des Deployment-Prozesses in drei Phasen: Code bauen $\rightarrow$ mit Config kombinieren $\rightarrow$ ausführen.                    |
| **6**  | **Processes (Prozesse)**                      | Die Anwendung läuft als ein oder mehrere zustandslose (_stateless_) Prozesse. Daten werden nur in Backing Services persistent gespeichert.            |
| **7**  | **Port Binding (Port-Bindung)**               | Der Service ist eigenständig und exportiert Dienste direkt über die Bindung an einen Port (z. B. lauscht selbst auf HTTP).                            |
| **8**  | **Concurrency (Nebenläufigkeit)**             | Skalierung erfolgt über das Hinzufügen weiterer Prozess-Instanzen (horizontale Skalierung), nicht innerhalb eines monolithischen Prozesses.           |
| **9**  | **Disposability (Einwegbereitschaft)**        | Prozesse müssen schnell starten und sauber stoppen können (Robustheit bei plötzlichen Abstürzen oder Neustarts).                                      |
| **10** | **Dev/Prod Parity**                           | Entwicklungs-, Staging- und Produktionsumgebungen so identisch wie möglich halten, um "Läuft bei mir"-Probleme zu vermeiden.                          |
| **11** | **Logs**                                      | Logs werden als kontinuierlicher Stream von Events behandelt. Die Anwendung schreibt einfach nach `stdout`, die Cloud-Infrastruktur leitet es weiter. |
| **12** | **Admin Processes**                           | Administrative Aufgaben oder Einmal-Skripte (z. B. DB-Migrationen) laufen in exakt derselben Umgebung wie die Applikation selbst.                     |

## 4. Skalierung und Verfügbarkeit (Load Balancer)

Ein **Load Balancer** (Lastverteiler) fungiert als digitaler Verkehrspolizist. Er nimmt eingehenden Netzwerkverkehr entgegen und verteilt diesen nach bestimmten Algorithmen (z. B. Round Robin, Least Connections) auf mehrere dahinterliegende Backend-Server (Target Groups).

- **Zweck:** Vermeidung von Überlastung einzelner Server, Maximierung des Durchsatzes, Minimierung der Latenz und Sicherstellung von **Hochverfügbarkeit** (fällt ein Server aus, leitet der Load Balancer den Traffic automatisch an die gesunden Instanzen weiter).

### Netzwerk- vs. Anwendungs-Load-Balancer

Der zentrale Unterschied liegt in der Schicht des **OSI-Modells**, auf der die Routing-Entscheidung getroffen wird.

| Merkmal                   | Network Load Balancer (NLB)                                                                           | Application Load Balancer (ALB)                                                                         |
| ------------------------- | ----------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| **OSI-Schicht**           | **Schicht 4 (Transport Layer)**                                                                       | **Schicht 7 (Application Layer)**                                                                       |
| **Kriterien für Routing** | IP-Adressen, Subnetze, TCP/UDP-Ports.                                                                 | HTTP/HTTPS-Header, Cookies, URL-Pfade (z. B. `/api` vs. `/static`).                                     |
| **Performance / Latenz**  | Extrem hoch / extrem niedrig (kann Millionen von Requests pro Sekunde auf Netzwerkebene verarbeiten). | Höhere Latenz als NLB, da das Datenpaket bis zur Anwendungsschicht geöffnet und analysiert werden muss. |
| **Features**              | Unterstützt statische IPs, eignet sich für unvorhersehbare, massive Traffic-Spitzen auf TCP-Ebene.    | SSL/TLS-Terminierung, Session Stickiness (Sticky Cookies), erweitertes Request-Tracing.                 |
| **Typischer Use-Case**    | High-Performance TCP/UDP-Streaming, Datenbank-Cluster-Routing.                                        | Microservices-Architekturen, Web-Applikationen mit pfadbasierter Weiterleitung.                         |

## 5. Hybrid Cloud und Container

### Architektur-Einordnung

Eine **Hybrid Cloud** kombiniert private Infrastruktur (On-Premises-Rechenzentrum oder lokale Hardware) mit den Diensten einer Public Cloud (wie AWS, Azure oder GCP).

### Die Rolle von Containern in der Hybrid Cloud

Das grösste Problem einer Hybrid-Cloud-Umgebung ist die **Heterogenität**: Lokale Server nutzen oft andere Betriebssystem-Konfigurationen, Kernel-Versionen oder Hardware-Abstraktionen als die Instanzen beim Public-Cloud-Anbieter. Hier sind Container das perfekte Bindeglied:

- **Abstraktion vom Host-System:** Container verpacken die Anwendung und alle ihre Abhängigkeiten (Libraries, Runtimes). Solange eine Container-Engine (wie Docker oder Podman) auf dem Host läuft, verhält sich der Container lokal exakt genau so wie in der Public Cloud.
- **Portabilität:** Du kannst ein containerisiertes Image ohne Code-Änderungen aus deinem lokalen Environment direkt in eine Cloud-Umgebung verschieben.
- **Orchestrierung:** Tools wie Kubernetes oder Docker Swarm ermöglichen es, Container-Cluster über Cloud-Grenzen hinweg konsistent zu verwalten (z. B. Workloads bei Lastspitzen flexibel von On-Premises in die Public Cloud auszulagern – sogenannte _Cloud Bursts_).

## 6. Betrieb von Diensten (Container-Kommandos)

Für das Bereitstellen, Stoppen und Starten von containerisierten Diensten unterscheidet man in der Praxis meist zwischen Befehlen für **einzelne Container** (`docker`) und der Orchestrierung von **Multi-Container-Setups** (`docker compose`).

### Einzelsysteme (Docker CLI)

| Befehl         | Zweck / Aktion                                                                              | Wichtige Flags (Beispiele)                                                       |
| -------------- | ------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `docker run`   | Erstellt einen neuen Container aus einem Image und startet ihn.                             | `-d` (Hintergrund) `-p 8080:80` (Port-Mapping); `--name mein-dienst` (Benennung) |
| `docker stop`  | Stoppt einen laufenden Container elegant (sendet zuerst `SIGTERM`, nach Timeout `SIGKILL`). | `docker stop <container_id_oder_name>`                                           |
| `docker start` | Startet einen bereits existierenden, aber gestoppten Container wieder.                      | `docker start <container_id_oder_name>`                                          |
| `docker rm`    | Löscht einen gestoppten Container endgültig vom System.                                     | `-f` (erzwingt das Löschen eines noch laufenden Containers)                      |

### Multi-Container-Umgebungen (Docker Compose)

Wenn Dienste aus mehreren Komponenten bestehen (z. B. App-Server + Datenbank), werden sie deklarativ in einer `docker-compose.yml` definiert. Die Steuerung erfolgt gebündelt:

```bash
# Startet das gesamte in der yaml-Datei definierte Setup im Hintergrund,
# baut falls nötig Images und erstellt Netzwerke/Volumes
docker compose up -d

# Stoppt alle Container des Setups und entfernt die erstellten Container sowie Netzwerke
docker compose down

# Stoppt die Container temporär, ohne sie oder die Netzwerke zu löschen
docker compose stop

# Startet die gestoppten Container des Setups wieder
docker compose start
```

## 7. Sichere Anbindung und Public Cloud

### Gesicherte Verbindungen zur Cloud

Für die Anbindung eines lokalen Standorts (On-Premises) an einen Public-Cloud-Anbieter gibt es zwei etablierte Hauptwege, die sich in Kosten, Performance und Sicherheit unterscheiden.

| Methode                     | Funktionsweise                                                                                                         | Vorteile                                                                                                    | Nachteile                                                                           |
| --------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| **Site-to-Site VPN**        | Verschlüsselter IPSec-Tunnel über das öffentliche Internet.                                                            | Kostengünstig, schnell einzurichten, keine dedizierte Hardware von Drittanbietern am Cloud-Edge nötig.      | Bandbreite und Latenz hängen vom öffentlichen Internetverkehr ab; nicht garantiert. |
| **Dedizierte Standleitung** | Physikalische, direkte Netzwerkverbindung (z. B. AWS Direct Connect, Azure ExpressRoute) unter Umgehung des Internets. | Garantierte Bandbreite, extrem niedrige und stabile Latenzen, maximale Sicherheit durch physische Trennung. | Sehr hohe Kosten, lange Bereitstellungszeiten durch Netzbetreiber.                  |

### Vorteile einer selbst betriebenen Lösung auf Container-Infrastruktur

Wenn man sich gegen fertige Cloud-Managed-Services (SaaS/PaaS) entscheidet und stattdessen eine eigene Lösung auf einer Container-Infrastruktur (z. B. Docker, Kubernetes) betreibt, ergeben sich spezifische strategische Vorteile:

- **Vollständige Datenhoheit und Compliance:** Da die gesamte Infrastruktur und die Datenhaltung selbst kontrolliert werden, können strengste regulatorische Vorgaben (wie die DSGVO oder Schweizer Datenschutzrichtlinien) ohne Abhängigkeit von Drittanbietern eingehalten werden.
- **Maximale technologische Unabhängigkeit:** Es entsteht kein Vendor Lock-in. Ein containerisierter Stack läuft identisch auf lokaler Bare-Metal-Hardware wie bei jedem beliebigen Cloud-Provider, was den Wechsel des Anbieters massiv erleichtert.
- **Feingranulare Kostenkontrolle:** Bei sehr grossen Datenmengen oder dauerhaft hoher Grundlast fallen die variablen Nutzungsgebühren von Cloud-Plattformen weg. Die Kosten sind durch die bereitgestellte Hardware fix und planbar.
- **Massgeschneiderte Konfiguration:** Anpassungen am Betriebssystem-Kernel, spezielle Sicherheitsmodule oder tiefgreifende Netzwerk-Routings können exakt nach eigenen Vorstellungen umgesetzt werden, was bei restriktiven PaaS-Umgebungen oft blockiert wird.

## 8. Migration in die Cloud

Die Wahl der Migrationsstrategie bestimmt den Aufwand und den späteren Nutzen in der Cloud. Die beiden gängigsten Ansätze lassen sich wie folgt abgrenzen:

| Strategie                          | Erklärung                                                                                                                                                      | Typische Situation für den Einsatz                                                                                                     | Begründung für die Wahl                                                                                                              |
| ---------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| **Lift & Shift** (Rehosting)       | Die Anwendung wird eins zu eins ohne Code-Änderungen aus der lokalen Umgebung in virtuelle Maschinen (VMs) der Cloud verschoben.                               | Ein Rechenzentrumvertrag läuft kurzfristig aus und die gesamte Infrastruktur muss unter extremem Zeitdruck migriert werden.            | Minimale Risiken bei der Migration, kaum Entwicklungsaufwand vor dem Umzug und schnelle Ausführung.                                  |
| **Lift & Reshape** (Replatforming) | Die Kernarchitektur bleibt gleich, aber die Anwendung wird leicht optimiert, um Cloud-Dienste zu nutzen (z. B. eine lokale DB durch eine Managed DB ersetzen). | Eine monolithische Anwendung soll kosteneffizienter laufen und der Wartungsaufwand für die zugrunde liegende Datenbank soll entfallen. | Geringer Anpassungsaufwand bei gleichzeitigem Gewinn von Cloud-Vorteilen wie automatischer Skalierung, Backups und Patch-Management. |

## 9. Fehlersuche und Performance (Troubleshooting)

Bei Infrastrukturproblemen muss systematisch analysiert werden, ob die Ursache auf Netzwerkebene (Erreichbarkeit) oder Systemebene (Auslastung/Performance) liegt.

| Problem-Szenario                                       | Mögliche Ursache                                                                                                                        | Sinnvolle Massnahme zur Behebung                                                                               | Fachliche Begründung                                                                                                       |
| ------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| **Anwendung ist plötzlich gar nicht mehr erreichbar**  | Fehlkonfiguration der Sicherheitsgruppen (Firewall/Security Groups) oder ein blockiertes Routing im Load Balancer.                      | Überprüfung der Port-Freigaben und Durchführung eines HTTP-Health-Checks auf den Backend-Instanzen.            | Stellt sicher, ob der Dienst selbst abgestürzt ist oder ob der Netzwerk-Traffic vor der Applikation blockiert wird.        |
| **Latenz steigt bei Traffic-Spitzen massiv an**        | Die CPU- oder RAM-Ressourcen der Server-Instanzen sind am Limit, wodurch Anfragen in eine Warteschlange geraten.                        | Einrichtung von horizontalem Auto-Scaling über den Load Balancer, um automatisch weitere Instanzen zu starten. | Verteilt die Last auf mehrere Systeme und fängt die Traffic-Spitze ab, bevor die einzelnen Nodes überlastet werden.        |
| **Datenbank-Abfragen werden kontinuierlich langsamer** | Fehlende Indizes auf häufig abgefragten Tabellen oder Erschöpfung der maximalen IOPS (Input/Output Operations Per Second) des Storages. | Aktivierung von Slow-Query-Logs zur Index-Optimierung oder temporäres Upgrade auf performanteren SSD-Speicher. | Behebt entweder ineffizienten Code direkt oder eliminiert den Hardware-Flaschenhals beim Festplatten-Schreib-Lese-Zugriff. |

## 10. Datenplattformen

Für das moderne Datenmanagement im Unternehmen kommen je nach Struktur und Verwendungszweck der Daten zwei unterschiedliche Architekturen zum Einsatz.

### Vergleich: Data Lake vs. Data Warehouse

| Merkmal                   | Data Lake                                                                                                                | Data Warehouse                                                                                                      |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| **Datenstruktur**         | Unstrukturierte, semistrukturierte und strukturierte Daten (Rohdaten wie Logs, Bilder, CSVs, JSON).                      | Rein strukturierte Daten, die bereits transformiert und in relationale Tabellenmodelle gepresst wurden.             |
| **Verarbeitungs-Ansatz**  | **ELT** (Extract, Load, Transform) – Daten werden zuerst unverändert gespeichert und erst bei der Abfrage transformiert. | **ETL** (Extract, Transform, Load) – Daten müssen vor dem Speichern bereinigt, transformiert und modelliert werden. |
| **Zielgruppe & Fokus**    | Data Scientists und Data Engineers für flexible, explorative Analysen und maschinelles Lernen.                           | Business Analysten und Management für vordefinierte Berichte, Dashboards und Business Intelligence (BI).            |
| **Kosten & Flexibilität** | Sehr kostengünstig skalierbar (Objektspeicher wie AWS S3), extrem flexibel bei neuen Datentypen.                         | Höhere Speicherkosten durch optimierte, proprietäre Compute- und Storage-Engines; starr bei Schema-Änderungen.      |

### Typische Einsatzbeispiele

- **Einsatzbeispiel für einen Data Lake:** Ein IoT-Unternehmen sammelt sekündlich rohe Telemetriedaten, Sensorwerte und Log-Dateien von Millionen von Geräten. Diese Daten werden ungefiltert in den Data Lake geschrieben, damit Data Scientists später Algorithmen für Predictive Maintenance (vorausschauende Wartung) darauf trainieren können.
- **Einsatzbeispiel für ein Data Warehouse:** Eine internationale Schweizer Detailhandelskette führt die Verkaufsdaten aller Filialen, die Daten aus dem CRM und die Lagerbestände in einem System zusammen. Das Management nutzt dieses Data Warehouse, um quartalsweise Finanzberichte und exakte Umsatzanalysen pro Region zu erstellen.
