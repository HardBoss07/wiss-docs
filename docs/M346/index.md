# Modul 346 - Cloud Lösungen konzipieren und realisieren

## 346-1A SideQuest:

### Definition & Bedeutung

Eine Cloud ist ein Netzwerk aus entfernten Servern, die über das Internet Rechenleistung, Speicher und Anwendungen bereitstellen. Sie bedeutet Ortsunabhängigkeit und den Wegfall eigener Hardware-Verwaltung.

### Die 5 NIST-Eigenschaften

1.  On-Demand Self-Service: Ressourcen (wie Speicher) können ohne menschliche Interaktion mit dem Anbieter selbst gebucht werden.
2.  Broad Network Access: Zugriff ist über Standardmechanismen von überall mit verschiedenen Geräten (Handy, Laptop) möglich.
3.  Resource Pooling: Viele Nutzer teilen sich die gleiche physische Hardware (Mandantenfähigkeit).
4.  Rapid Elasticity: Kapazitäten lassen sich extrem schnell vergrössern oder verkleinern, je nach Bedarf.
5.  Measured Service: Die Nutzung wird genau überwacht und meist nach Verbrauch abgerechnet (Pay-per-Use).

### Private Nutzung (Beispiele)

- E-Mail: Gmail, Outlook.com.
- Speicher: iCloud, Google Drive, Dropbox, OneDrive.
- Streaming: Netflix, Spotify.
- Kommunikation: WhatsApp (Backups).

### Speicherort & Region

Die Daten liegen in Rechenzentren. Grosse Anbieter bieten Regionen (z.B. "Europe-West") an. Oft befinden sich diese in den USA, bei Fokus auf Datenschutz auch gezielt in Deutschland oder der EU.

### Redundanz

**Ja.** Cloud-Anbieter spiegeln Daten fast immer auf mehrere Festplatten oder sogar über verschiedene Brandabschnitte/Rechenzentren hinweg, um Datenverlust bei Hardwaredefekten zu verhindern.

### Assets in der Cloud

- Daten: Dokumente, Fotos, Datenbanken.
- Software: CRM-Systeme, Office-Anwendungen (SaaS).
- Infrastruktur: Virtuelle Server, Netzwerke, Betriebssysteme.
- Rechenpower: Für komplexe Berechnungen oder KI-Modelle.

### Vor- und Nachteile

| Vorteile                                            | Nachteile                                               |
| --------------------------------------------------- | ------------------------------------------------------- |
| Kosten: Keine hohen Investitionen in Hardware.      | Abhängigkeit: Internetverbindung zwingend nötig.        |
| Skalierbarkeit: Wächst mit den Anforderungen.       | Datenschutz: Sorge um Datenhoheit und Zugriff Dritter.  |
| Verfügbarkeit: Zugriff von überall und jedem Gerät. | Vendor Lock-in: Wechsel zu anderem Anbieter oft schwer. |

## 346-1B SideQuest:

### 1. Arten von Cloud-Computing

Es gibt drei primäre Dienstmodelle im Cloud-Computing, die sich durch den Umfang der vom Anbieter übernommenen Aufgaben unterscheiden:

- IaaS (Infrastructure as a Service): Der Anbieter stellt die grundlegende IT-Infrastruktur bereit (Server, Speicher, Netzwerk). Der Nutzer ist für das Betriebssystem, die Middleware und die Anwendungen selbst verantwortlich.
- PaaS (Platform as a Service): Der Anbieter stellt eine Plattform bereit, die neben der Infrastruktur auch Laufzeitumgebungen und Entwicklungswerkzeuge umfasst. Der Nutzer konzentriert sich rein auf die Entwicklung und Verwaltung seiner Anwendungen und Daten.
- SaaS (Software as a Service): Der Anbieter stellt die komplette Softwareanwendung über das Internet bereit. Der Nutzer muss nichts installieren oder warten, sondern nutzt die Anwendung lediglich (z.B. Webmail oder Office-Tools im Browser).

### 2. Aspekte bei der Auswahl eines IaaS-Anbieters

Bei der Wahl eines IaaS-Anbieters sollten folgende Kriterien geprüft werden:

- Sicherheit & Compliance: Wo stehen die Server? Werden DSGVO-Standards eingehalten?
- Skalierbarkeit: Wie schnell und einfach lassen sich Ressourcen (CPU, RAM) erweitern?
- Kostenstruktur: Gibt es ein transparentes "Pay-as-you-go"-Modell?
- Verfügbarkeit (SLA): Welche Ausfallsicherheit garantiert der Anbieter vertraglich?
- Support: Wie schnell ist der technische Support bei Problemen erreichbar?

### 3. Anteile der vom Provider gemanagten Schichten

| Schicht          | IaaS     | PaaS     | SaaS     |
| ---------------- | -------- | -------- | -------- |
| Anwendung        | Nutzer   | Nutzer   | Provider |
| Daten            | Nutzer   | Nutzer   | Provider |
| Laufzeitumgebung | Nutzer   | Provider | Provider |
| Middleware       | Nutzer   | Provider | Provider |
| Betriebssystem   | Nutzer   | Provider | Provider |
| Virtualisierung  | Provider | Provider | Provider |
| Server           | Provider | Provider | Provider |
| Storage          | Provider | Provider | Provider |
| Netzwerk         | Provider | Provider | Provider |

### Argumente für die Nutzung von Cloud-Diensten

- [x] Skalierbarkeit (Ressourcen wachsen mit dem Bedarf)
- [ ] Direkter Zugriff auf die Hardware (Das ist meist ein Nachteil/nicht möglich in der Cloud)
- [x] Verfügbarkeit (Hohe Ausfallsicherheit durch Rechenzentren)
- [ ] Anbieterunabhängigkeit (Gefahr des "Vendor Lock-in" besteht oft)
- [ ] Privacy (Ist in der Cloud oft eine Herausforderung/ein Gegenargument)
- [x] Zahlung nach Nutzung (Pay-per-use spart Investitionskosten)

## 346-1C SideQuest:

### Die Cloud-Modelle kurz erklärt

- **IaaS (Infrastructure as a Service):** Hier mietest du die reine "Hardware" (virtuelle Server, Speicher, Netzwerk). Du bist der Administrator und musst dich selbst um das Betriebssystem und die Software kümmern.
- **PaaS (Platform as a Service):** Du erhältst eine fertige Umgebung zum Entwickeln und Ausführen von Apps. Um Server oder Updates des Betriebssystems musst du dich nicht sorgen; du lädst nur deinen Code oder deine Daten hoch.
- **SaaS (Software as a Service):** Das Rundum-sorglos-Paket. Du nutzt fertige Software über den Browser (z.B. Google Docs oder Netflix). Der Anbieter kümmert sich um alles Technische im Hintergrund.

### Die wesentlichen Unterschiede

Der Hauptunterschied liegt im Grad der **Verantwortung** und **Kontrolle**:

| Merkmal    | IaaS                                    | PaaS                                    | SaaS                     |
| ---------- | --------------------------------------- | --------------------------------------- | ------------------------ |
| Kontrolle  | Sehr hoch (volle Freiheit)              | Mittel (fokus auf Apps)                 | Gering (nur Nutzung)     |
| Aufwand    | Hoch (Wartung nötig)                    | Gering (Plattform bereit)               | Minimal (startklar)      |
| Zielgruppe | Systemadministratoren                   | Softwareentwickler                      | Endanwender              |
| Vergleich  | Wie ein leerer Herd in einer Mietküche. | Wie ein fertiges Buffet (du wählst aus) | Wie ein Restaurantbesuch |

## 346-2A SideQuest:

### Grundlagen Hyperscaler

Hyperscaler sind die weltweit grössten Anbieter von Cloud-Infrastruktur und Cloud-Diensten. Sie betreiben riesige Rechenzentren auf der ganzen Welt und bieten IT-Ressourcen wie Rechenleistung, Speicherplatz und Netzwerke über das Internet an.

Die wichtigsten Merkmale (laut deinen Lernzielen) sind:

- On-Demand Delivery: IT-Ressourcen sind sofort auf Knopfdruck verfügbar, ohne dass Hardware bestellt oder physisch aufgebaut werden muss.
- Dynamische Skalierung: Das System kann bei hohen Zugriffszahlen automatisch wachsen (Grid Computing) und bei geringer Nutzung wieder schrumpfen.
- Globale Infrastruktur: Ein weltweites Netz aus Rechenzentren, das hohe Ausfallsicherheit und geringe Latenzzeiten für Nutzer auf der ganzen Welt bietet.

### Grosse Provider in der Schweiz

Die drei grössten Hyperscaler haben eigene Rechenzentren in der Schweiz eröffnet. Das ist besonders für Schweizer Unternehmen wichtig, da so die Daten das Land nicht verlassen müssen (Datensouveränität) und die Verbindungen schneller sind:

- Microsoft Azure: Betreibt die Regionen Switzerland North (Zürich) und Switzerland West (Genf).
- Google Cloud Platform (GCP): Betreibt die Region europe-west6 (Zürich).
- Amazon Web Services (AWS): Betreibt die Region Europe Zurich (auch bekannt als eu-central-2).

### Vor- und Nachteile der Provider

AWS (Amazon Web Services)

- Vorteile
  - Grösstes Service-Angebot und weltweite Marktführerschaft.
  - Enorm ausgereifte Technologie mit hoher Ausfallsicherheit.
  - Riesige Community und viele Experten für Support verfügbar.
- Nachteile
  - Sehr komplexe Kostenstrukturen (Gefahr von Fehlkalkulationen).
  - Steile Lernkurve aufgrund der riesigen Auswahl an Optionen.

Microsoft Azure

- Vorteile
  - Perfekte Integration in Windows-, Office- und Active-Directory-Umgebungen.
  - Hervorragend geeignet für Hybrid-Cloud-Lösungen (Verbindung eigener Server mit der Cloud).
  - Hohe Akzeptanz und Vertrauen bei klassisc hen Grossunternehmen.
- Nachteile
  - Benutzeroberfläche des Portals gilt oft als unübersichtlich.
  - Technische Dokumentation ist teilweise lückenhaft oder veraltet.

GCP (Google Cloud Platform)

- Vorteile
  - Technologisch führend bei Künstlicher Intelligenz (KI) und Datenanalyse.
  - Spezialisiert auf Container-Technologien (Kubernetes).
  - Oft einfachere und transparentere Preisgestaltung für Entwickler.
- Nachteile
  - Geringere Auswahl an speziellen Unternehmens-Services im Vergleich zu AWS/Azure.
  - Kleineres Netz an physischen Rechenzentren weltweit.

### Kostenmodelle und Preise in der Region

Die Preise basieren bei allen Hyperscalern auf dem On-Demand Pricing, also einem Pay-as-you-go Modell. Das bedeutet, es gibt keine Vorabkosten und man zahlt nur genau für das, was man verbraucht (oft sekundengenau abgerechnet).

Für einfache Kostenanalysen bietet jeder Hyperscaler einen eigenen Online-Preisrechner an (z.B. den AWS Pricing Calculator).

Wichtig für die Region Schweiz: Die Preise in den Schweizer Cloud-Regionen sind aufgrund der höheren Betriebs-, Immobilien- und Stromkosten in der Regel etwas teurer als beispielsweise in Cloud-Regionen in Deutschland (Frankfurt) oder den USA. Um Kosten zu senken, bieten die Hyperscaler Rabatte an, wenn man sich entscheidet, gewisse Ressourcen für ein oder drei Jahre im Voraus zu reservieren.

### Referenzarchitektur eines Hyperscalers

Für deine Präsentation kannst du eine klassische Web-Applikation als Referenzarchitektur aufzeigen. Sie veranschaulicht sehr gut, wie die Cloud-Komponenten zusammenspielen:

- Nutzerzugriff und Verteilung: Die Anfragen der Nutzer kommen aus dem Internet und treffen zuerst auf einen Load Balancer. Dieser verteilt den Datenverkehr gleichmässig auf die dahinterliegenden Server, damit kein einzelner Server überlastet wird.
- Rechenleistung (Compute): Hinter dem Load Balancer befindet sich eine Auto-Scaling Group aus virtuellen Maschinen. Wenn plötzlich sehr viele Nutzer auf die App zugreifen, merkt das System dies und startet automatisch weitere Server hinzu (dynamische Skalierung).
- Datenbank (Storage): Die Server greifen auf eine zentrale, verwaltete Datenbank zu. Diese Datenbank ist über mehrere physische Rechenzentren (Availability Zones) gespiegelt. Fällt ein Rechenzentrum durch einen Stromausfall aus, übernimmt sofort das andere, ohne dass die Nutzer es merken.
- Statische Daten: Bilder, Videos oder Backups werden nicht auf teuren Servern gespeichert, sondern in einem extrem günstigen Objektspeicher (z.B. Amazon S3), der unbegrenzt Datenmengen aufnehmen kann.

## 346-2B SideQuest:

### 1. Was ist Cloud Native?

Cloud Native beschreibt einen Ansatz zum Erstellen und Ausführen von Anwendungen, die die Vorteile des Cloud-Computing-Modells (Skalierbarkeit, Flexibilität, Ausfallsicherheit) voll ausschöpfen. Es geht nicht nur darum, eine Anwendung "in die Cloud zu schieben", sondern sie von Grund auf so zu konzipieren, dass sie in dynamischen Umgebungen optimal funktioniert.

### 2. Die grossen Vorteile von Cloud Native

- **Skalierbarkeit:** Anwendungen können je nach Bedarf automatisch wachsen oder schrumpfen (Auto-scaling).
- **Resilienz (Ausfallsicherheit):** Wenn ein Teil des Systems ausfällt, bleibt die Gesamtanwendung meist online.
- **Schnelligkeit:** Neue Funktionen können schneller entwickelt und veröffentlicht werden.
- **Kosteneffizienz:** Man bezahlt nur für die Ressourcen, die man tatsächlich verbraucht.

### 3. Technologien im Cloud-Native-Bereich

In diesem Ökosystem spielen vor allem folgende Werkzeuge eine Rolle:

- **Orchestrierung:** Kubernetes (K8s) ist der Industriestandard zur Verwaltung von Containern.
- **CI/CD-Tools:** Jenkins, GitHub Actions oder GitLab CI für die Automatisierung von Tests und Deployment.
- **Service Mesh:** Istio oder Linkerd für die Kommunikation zwischen Diensten.
- **Monitoring & Logging:** Prometheus und Grafana zur Überwachung des Systemzustands.

### 4. Was sind Microservices?

Microservices sind ein Architekturmuster, bei dem eine Anwendung aus vielen kleinen, unabhängigen Diensten besteht. Jeder Dienst erfüllt eine spezifische Geschäftsfunktion (z.B. "Warenkorb" oder "Zahlungsabwicklung") und kommuniziert über Schnittstellen (APIs) mit anderen Diensten.

### 5. Was sind Container?

Container sind eine Methode, um Software und alle ihre Abhängigkeiten (Code, Laufzeitumgebung, Systemwerkzeuge) in ein einziges Paket zu verpacken.

- **Der Clou:** Sie laufen isoliert vom Rest des Systems und verhalten sich auf dem Laptop eines Entwicklers exakt so wie auf einem Server in der Cloud. **Docker** ist hierfür die bekannteste Technologie.

### 6. Time-to-Market im Bezug auf Cloud Native

**Time-to-Market (TTM)** bezeichnet die Zeitspanne von der ersten Idee für ein Produkt bis zu seiner Verfügbarkeit auf dem Markt.

Im Cloud-Native-Kontext wird die TTM massiv verkürzt durch:

- **Automatisierung:** Code wird automatisch getestet und ausgerollt.
- **Unabhängigkeit:** Da Teams an einzelnen Microservices arbeiten, müssen sie nicht auf den Release der gesamten Applikation warten, um eine kleine Änderung live zu bringen.
- **Experimentierfreude:** Fehler können durch einfache Rollbacks (Zurücksetzen auf die Vorversion) schnell korrigiert werden, was das Risiko bei schnellen Veröffentlichungen senkt.

## 346-3A SideQuest:

VM aufgesetzt mit:

- [x] Virtual Box
- [x] Ubuntu Desktop
- [x] Neuer User `docker`
- [x] Neue Gruppe `docker`
- [x] Docker installieren
- [x] Mind. 2GB RAM
- [x] Mind. 2 CPU
- [x] Mind. 10GB Disk
- [x] 4 Netzwerkadapter
  - [x] 3x Host-Only Adapter
  - [x] 1x NAT

> **SSH into VM:**
> ssh docker@192.168.56.104
>
> **Sync a File to VM:**
> scp /path/to/your/local/file docker@192.168.56.104:/home/docker/
>
> **Sync a Folder to VM:**
> scp -r /path/to/your/local/folder/ docker@192.168.56.104:/home/docker/

Gerne! Hier ist die Kurz-Zusammenfassung in drei Kategorien, damit du die Unterschiede sofort griffbereit hast:

## Load-Balancer Arten

### 1. Die Statischen (Starr nach Plan)

Diese Methoden schauen nicht auf den Zustand der Server, sondern verteilen nach einem festen Muster:

- **Round Robin:** Streng abwechselnd (Gerechtigkeit für alle).
- **Weighted Round Robin:** Starke Server bekommen mehr, schwache weniger.
- **Source IP Hash:** Der Nutzer bleibt immer beim gleichen Server (wichtig für Logins).

### 2. Die Dynamischen (Echtzeit-Check)

Hier entscheidet der Loadbalancer spontan basierend auf der aktuellen Last:

- **Least Connections:** Geht dorthin, wo gerade am wenigsten los ist (Anzahl der User).
- **Least Bandwidth:** Geht dorthin, wo der geringste Datendurchsatz fliesst.

### 3. Der Performance-Sieger

- **Least Response Time:** Die "Königsdisziplin" – kombiniert wenig Arbeit mit hoher Geschwindigkeit, um dem Nutzer die schnellste Antwort zu liefern.

## 346-4A SideQuest:

### 1. Ausgangslage und Zielsetzung

Für die fiktive Firma EduGame wurde eine flexible Webserver-Umgebung konzipiert und umgesetzt. Da EduGame bei bestimmten Ereignissen (z. B. Black Friday) mit hohen Besucherzahlen rechnet, wurde eine Architektur gewählt, die eine einfache Skalierung ermöglicht[cite: 1].

Das Ziel war die Bereitstellung eines Loadbalancers, der die eingehenden HTTP-Anfragen auf zwei parallel arbeitende Webserver verteilt, um die Last effizienter zu verarbeiten[cite: 2]. Die Umgebung wurde auf einer Ubuntu-VM mittels Docker-Containern realisiert, um eine schnelle und ressourcenschonende Skalierbarkeit zu gewährleisten.

### 2. Technisches Konzept

Als Loadbalancer wird **Nginx** eingesetzt, welcher als Reverse Proxy fungiert und die Anfragen nach dem **Round-Robin-Verfahren** verteilt[cite: 2]. Bei diesem Algorithmus wird die erste Anfrage an den ersten Server gesendet, die nächste an den zweiten und so weiter[cite: 2].

Als Backend-Server kommen zwei **Apache HTTP-Server** zum Einsatz, die jeweils an ein isoliertes Host-only-Adapter-Äquivalent (Docker Bridge-Netzwerk) gebunden sind[cite: 1]. Lediglich der Loadbalancer ist nach aussen über den Port 80 erreichbar.

**Diagramm**

```Eingehende Anfragen (HTTP Port 80)
               │
               v
      ┌─────────────────────────┐
      │      Loadbalancer       │
      │    (Nginx Container)    │
      │      "edugame_lb"       │
      └────────────┬────────────┘
                   │
         ┌─────────┴─────────┐
         │   Round-Robin     │ (Lastverteilung)
         └─────────┬─────────┘
                   │
         ┌─────────┴─────────┐
         v                   v
┌─────────────────┐ ┌─────────────────┐
│   Webserver 1   │ │   Webserver 2   │
│ (Apache/httpd)  │ │ (Apache/httpd)  │
│ "edugame_web1"  │ │ "edugame_web2"  │
└─────────────────┘ └─────────────────┘
        │                   │
        └───┬───────────────┘
            v
    [ Docker Network ]
      "edugame_net"
```

### 3. Dateistruktur

Alle Konfigurationsdateien wurden im Unterordner `edugame-setup` abgelegt:

```text
M306/
├── index.md (diese Dokumentation)
└── edugame-setup/
    ├── docker-compose.yml
    ├── nginx.conf
    ├── web1/
    │   └── index.html
    └── web2/
        └── index.html
```

### 4. Umsetzung und Konfigurationsdateien

Die gesamte Infrastruktur wurde als "Infrastructure as Code" mit Docker Compose definiert. Folgende Dateien wurden erstellt:

- **[docker-compose.yml](./edugame-setup/docker-compose.yml)**: Definiert das interne Netzwerk `edugame_net` und die drei Container (Loadbalancer, Web1, Web2). Die Webserver nutzen das Image `httpd:2.4`, der Loadbalancer das Image `nginx:latest`.
- **[nginx.conf](./edugame-setup/nginx.conf)**: Konfiguriert den Nginx-Server so, dass er auf Port 80 lauscht und die Anfragen an die `upstream`-Gruppe (bestehend aus Web1 und Web2) weiterleitet.
- **[web1/index.html](./edugame-setup/web1/index.html)** & **[web2/index.html](./edugame-setup/web2/index.html)**: Die Startseiten der Webserver. Um die Lastverteilung später testen zu können, wurden die Dateien mit einer sichtbaren Markierung versehen (z. B. "Ausgeliefert von: Webserver 1").

### 5. Inbetriebnahme (Befehle)

Die Umgebung wurde mit den folgenden Schritten in der Linux-Shell gestartet:

**1. Navigation in das Projektverzeichnis:**

```bash
cd ./M306/edugame-setup
```

**2. Starten der Docker-Container im Hintergrund (Detached Mode):**

```bash
docker compose up -d
```

_(Anmerkung/Troubleshooting)_: Während der Inbetriebnahme trat der OCI-Runtime-Fehler `Are you trying to mount a directory onto a file` auf. Dieser entstand, weil Docker beim Start die Datei `nginx.conf` auf dem Host-System nicht fand und fälschlicherweise ein Verzeichnis mit diesem Namen erstellte. Der Fehler wurde behoben, indem die Umgebung mit `docker compose down` gestoppt, das falsche Verzeichnis mit `rm -rf nginx.conf` gelöscht und die Datei korrekt neu angelegt wurde.

### 6. Evaluation und Test

Um die Funktionsfähigkeit des Setups und des Loadbalancers zu validieren, wurden mehrere HTTP-Anfragen an den lokalen Host gesendet:

```bash
curl http://localhost
```

**Ergebnis:**
Die Ausgabe im Terminal zeigte im Wechsel die Inhalte von `web1` und `web2`. Dies bestätigt, dass Nginx die Anfragen erfolgreich über das Round-Robin-Verfahren an die beiden Apache-Server verteilt und die Lastverteilung wie gefordert funktioniert.

## 346-5B SideQuest:

Um das Verständnis der Cloud-Modelle (HANOK 1.2) zu vertiefen, kannst du dieses interaktive Tool nutzen, um die Unterschiede zwischen den Verantwortlichkeiten bei On-Premise, IaaS, PaaS und SaaS zu explorieren.

Die ausführliche Dokumentation deiner Inbetriebnahme wurde als Google Doc erstellt:

Dokumentation_Inbetriebnahme_Nextcloud_EduGame

[docker-compose.yml](./edugame-cloud/docker-compose.yml)

### Kurzzusammenfassung der Ergebnisse

- **Teil 1: Netzwerkanbindung (AWS Direct Connect):** Für die drei Standorte von EduGame ist AWS Direct Connect die ideale Wahl, da es eine dedizierte Netzwerkverbindung zur Public Cloud bereitstellt. Dies bietet konsistentere Bandbreite (bis 100 Gbit/s) und höhere Sicherheit durch MACsec-Verschlüsselung im Vergleich zu VPNs über das öffentliche Internet. Die Funktion **SiteLink** ermöglicht zudem die direkte Kopplung der drei Büro-Standorte untereinander über das AWS-Backbone.
- **Teil 2 & 3: Inbetriebnahme & Konfiguration:** Die Plattform wurde erfolgreich mittels Docker Compose bereitgestellt. Der Zugriff erfolgt über Port 8080. Gemäss Vorgabe wurden ein Administrator sowie ein separater Account für die IT-Abteilung eingerichtet, um administrative Aufgaben von den operativen Tätigkeiten zu trennen.
- **Wichtige Erkenntnis:** Durch den Einsatz von Containern (SaaS-ähnlicher Betrieb auf einer IaaS-Infrastruktur) bleibt EduGame flexibel und kann die Collaboration-Plattform bei Bedarf schnell skalieren oder migrieren.

## 346-6A SideQuest:

> IP von dockernew VM: 192.168.56.126

### 01 Einführung

**6 R’s der Cloud-Migration (Kurzfassung):**

- **Rehosting (Lift & Shift):** 1:1 Verschiebung ohne Architekturänderung.
- **Replatforming:** Leichte Anpassungen zur Nutzung von Cloud-Vorteilen (z.B. Managed DBs).
- **Refactoring:** Kompletter Umbau zu Cloud-Native (z.B. Microservices).
- **Repurchasing:** Wechsel zu SaaS.
- **Retire:** Abschaltung ungenutzter Ressourcen.
- **Retain:** Beibehalten der aktuellen Umgebung.

**Docker Speicher & Backup:**

- **Volumes:** Von Docker verwaltet, unabhängig vom Host. Bevorzugt für persistente Daten. Backup/Restore erfolgt meist über temporäre Container und `tar`-Archive.
- **Bind Mounts:** Direkt vom Host-System in den Container gemountete Verzeichnisse. Einfaches Backup über klassische Ordner-Archivierung.

### 02 Aufgabe/Quest

**Teil 1: VM-Vorbereitung**

- Neue Ubuntu 20.04 LTS VM in VirtualBox erstellen.
- Netzwerk: 4 Adapter (3x Host-Only, 1x NAT).
- Installation von Docker Engine und Docker Compose.

**Teil 2: Migrationskonzept (Lift & Shift)**
Die Umgebung (Websites, Loadbalancer, Nextcloud) wird 1:1 verschoben. Die Ausführung wird zur Fehlervermeidung automatisiert.

- **Backup-Prozess:** Ausgeführt auf der _alten_ VM.
- **Skript:** [backup_migration.sh](./backup_migration.sh)
  _(Sichert den Bind-Mount-Ordner für den Loadbalancer direkt und die Nextcloud-Volumes über temporäre Container)._

**Teil 3: Besprechung**
Diskussion der Lift & Shift-Strategie. Kernthema: Warum Bind Mounts (Loadbalancer) einfach als Ordner archiviert werden können, Docker Volumes (Nextcloud) aber zwingend über temporäre Container gesichert werden müssen.

**Teil 4: Migration & Wiederherstellung**
Nach dem Übertragen des Backup-Ordners auf die neue VM (via `scp`), wird die Umgebung wiederhergestellt.

- **Restore-Prozess:** Ausgeführt auf der _neuen_ VM.
- **Skript:** [restore_migration.sh](./restore_migration.sh)
  _(Entpackt die Bind Mounts, erstellt leere Docker Volumes, spielt die Backups ein und startet alles)._

**Abschluss:** Sobald Loadbalancer und Nextcloud auf der neuen VM erreichbar sind, wird die alte VM heruntergefahren und gelöscht.

## 346-6B SideQuest:

Ein **Testkonzept** definiert die gesamte Teststrategie und dient als Bauplan für alle Tests. Das **Testprotokoll** ist das formelle Dokument zur tabellarischen Erfassung von Testfällen, erwarteten Resultaten und dem tatsächlichen Status (Bestanden/Nicht bestanden) während der Durchführung. Eine **Checkliste** dient der simplen Vorab-Prüfung von Bedingungen. Das **Abnahmeprotokoll (Testbericht)** fasst abschliessend alle Resultate für die Stakeholder zusammen und bildet die Entscheidungsgrundlage für den produktiven Betrieb (Go-Live).

### Teil 1: Testkonzept (Testszenarien)

#### Funktionale Testszenarien

| ID       | Testfall           | Vorbedingung                           | Testablauf                                                                               | Erwartetes Ergebnis                                                               |
| -------- | ------------------ | -------------------------------------- | ---------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| **FT01** | Web-Erreichbarkeit | Cloud-VM und Container laufen.         | Die IP 192.168.56.126 wird im Browser aufgerufen.                                        | Die Startseite von Website 1 oder 2 wird korrekt und fehlerfrei geladen.          |
| **FT02** | Loadbalancing      | Test FT01 erfolgreich bestanden.       | Die Webseite wird im Browser mehrmals neu geladen.                                       | Die angezeigte Seite wechselt abwechselnd zwischen Website 1 und Website 2.       |
| **FT03** | Nextcloud Upload   | Container für Nextcloud und DB laufen. | IP mit Port 8080 aufrufen, mit Admin-Daten einloggen und eine Testdatei hochladen.       | Der Login ist erfolgreich und die hochgeladene Datei wird im Dashboard angezeigt. |
| **FT04** | Datenpersistenz    | Test FT03 erfolgreich bestanden.       | Die Container werden per Terminal komplett neu gestartet, danach wird Nextcloud geprüft. | Die zuvor hochgeladene Testdatei ist nach dem Neustart weiterhin vorhanden.       |

#### Nicht-funktionale Testszenarien

| ID        | Testfall            | Vorbedingung                     | Testablauf                                                                                 | Erwartetes Ergebnis                                                                             |
| --------- | ------------------- | -------------------------------- | ------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------- |
| **NFT01** | Ausfallsicherheit   | Alle Container laufen normal.    | Der Container web1 wird manuell gestoppt und die Webseite neu geladen.                     | Der Loadbalancer leitet den Traffic nahtlos an web2 weiter, ohne eine Fehlerseite anzuzeigen.   |
| **NFT02** | Netzwerksicherheit  | Alle Container laufen normal.    | Von aussen wird ein Verbindungsaufbau auf den MariaDB-Port 3306 versucht.                  | Die Verbindung wird abgelehnt, da die Datenbank nur im internen Docker-Netzwerk erreichbar ist. |
| **NFT03** | Performance         | Nextcloud ist erreichbar.        | Die Ladezeit der Nextcloud-Startseite wird über die Entwicklertools des Browsers gemessen. | Die initiale Ladezeit der Webseite liegt unter 2 Sekunden.                                      |
| **NFT04** | Ressourcenverbrauch | Umgebung läuft unter Normallast. | Die Auslastung wird per Terminal mit dem Befehl docker stats geprüft.                      | Die CPU-Auslastung liegt im Leerlauf unter 5% und der RAM-Verbrauch bleibt stabil.              |

### Teil 2: Testprotokoll (gemäss HERMES)

**Projektdaten:** EduGame Cloud Migration, Testobjekt: Container-Plattform, Tester: Matteo Bosshard, Umgebung: Ubuntu VM (192.168.56.126).

| Test-ID   | Kurzbeschreibung   | Erwartetes Ergebnis           | Tatsächliches Ergebnis                             | Status    | Bemerkung                            |
| --------- | ------------------ | ----------------------------- | -------------------------------------------------- | --------- | ------------------------------------ |
| **FT01**  | Web Erreichbarkeit | Website lädt                  | Website wird fehlerfrei über Port 80 geladen.      | Bestanden | Keine                                |
| **FT02**  | Loadbalancer       | Wechsel zwischen Web1 & Web2  | Nginx leitet Traffic korrekt abwechselnd weiter.   | Bestanden | Keine                                |
| **FT03**  | Nextcloud Upload   | Login und Upload klappen      | Datei erfolgreich hochgeladen und gesichert.       | Bestanden | Initiale Ladezeit minimal verzögert. |
| **FT04**  | Persistenz Volumes | Daten bleiben nach Neustart   | Testdatei ist nach Container-Neustart noch da.     | Bestanden | Volumes funktionieren korrekt.       |
| **NFT01** | Ausfallsicherheit  | Loadbalancer ignoriert Fehler | Traffic wird nach Stopp von web1 an web2 geleitet. | Bestanden | Keine                                |
| **NFT02** | DB Sicherheit      | Port 3306 blockiert           | Zugriff von aussen endet im Timeout.               | Bestanden | Ports korrekt isoliert.              |

### Teil 3: Testbericht (Abnahmeprotokoll)

**Zusammenfassung der Testergebnisse:** Die Migration der EduGame-Infrastruktur auf die neue Cloud-VM wurde erfolgreich abgeschlossen. Die Systemtests belegen, dass die Lift-and-Shift Migration funktional zu 100% erfolgreich war. Die Websites werden vom Loadbalancer korrekt verteilt und die Nextcloud speichert Daten persistent. Qualitativ ist das System ausfallsicher aufgebaut und die internen Datenbank-Ports sind sicher vor externen Zugriffen isoliert.

**Verbleibende Massnahmen und Korrekturen:** Es gibt keine kritischen Fehler, die den Betrieb verhindern. Als offene Massnahme für die Zukunft muss im Nginx-Loadbalancer ein Reverse-Proxy mit SSL-Zertifikaten (HTTPS) konfiguriert werden, bevor das System in das öffentliche Internet freigegeben wird.

**Entscheid über die Freigabe und Kommerzielles:** Aufgrund der fehlerfreien Testprotokolle wird die Freigabe für den produktiven Betrieb auf der Cloud-VM erteilt. Die alte On-Premise VM kann nach einer Sicherheitsfrist von 7 Tagen gelöscht werden. Mit dieser technischen Abnahme werden die vertraglich vereinbarten Zahlungen für die Migrationsleistungen freigegeben und die Garantielaufzeit beginnt.

**Ausführende Instanzen:** Erstellt und durchgeführt von Matteo Bosshard (Applikationsentwickler). Freigabeentscheid durch die Geschäftsleitung EduGame.

Der Unterschied zwischen funktionalen und nicht-funktionalen Tests lässt sich auf eine sehr simple Faustregel herunterbrechen: **Funktionale Tests prüfen das „Was“, nicht-funktionale Tests prüfen das „Wie“.**

Hier ist die genaue Gegenüberstellung:

### 1. Funktionale Tests (Das „Was“)

Hierbei wird geprüft, ob die Software oder das System **das tut, was es gemäss den Anforderungen tun soll**. Im Zentrum stehen die Features, Geschäftsprozesse und Use Cases.

- **Fokus:** Verhalten der Applikation, Eingabe- und Ausgabedaten, Benutzeroberfläche, API-Antworten.
- **Beispielfragen:**
- Funktioniert der Login mit korrektem Passwort?
- Wird eine Fehlermeldung angezeigt, wenn ich ein falsches Passwort eingebe?
- Legt der "Kaufen"-Button den Artikel in den Warenkorb?
- Berechnet das System die Mehrwertsteuer korrekt?

- **Testarten:** Unit-Tests, Integrationstests, Systemtests, Akzeptanztests.

### 2. Nicht-funktionale Tests (Das „Wie“)

Hierbei wird geprüft, **wie gut, sicher oder schnell** das System seine Funktionen ausführt. Im Zentrum stehen die Qualitätsmerkmale und die Infrastruktur.

- **Fokus:** Performance, Sicherheit, Benutzbarkeit (Usability), Zuverlässigkeit, Skalierbarkeit.
- **Beispielfragen:**
- Lädt die Login-Seite in unter 2 Sekunden (Performance-Test)?
- Hält der Webserver stand, wenn 1.000 User gleichzeitig auf "Kaufen" klicken (Last-Test / Stress-Test)?
- Sind die Passwörter in der Datenbank sicher verschlüsselt (Security-Test)?
- Ist die Benutzeroberfläche auf einem Smartphone gut lesbar (Usability-Test)?
- Startet der Container nach einem Absturz automatisch neu (Resilienz-Test)?

### Auf einen Blick

| Merkmal             | Funktionale Tests                                                                | Nicht-funktionale Tests                                 |
| ------------------- | -------------------------------------------------------------------------------- | ------------------------------------------------------- |
| **Kernfrage**       | Was macht das System?                                                            | Wie gut macht es das?                                   |
| **Grundlage**       | User Stories, Use Cases, Business-Anforderungen                                  | Architekturvorgaben, SLA (Service Level Agreements)     |
| **Zeitpunkt**       | Meist zuerst (bevor etwas schnell gemacht wird, muss es überhaupt funktionieren) | Meist danach (Optimierung und Absicherung der Funktion) |
| **Analogie (Auto)** | Lenkt das Auto nach links, wenn ich das Lenkrad drehe?                           | Wie sicher ist das Auto bei einem Unfall mit 80 km/h?   |

## 346-7A SideQuest:

### 01 Einführung & Relevanz

Die fachgerechte Dokumentation einer Cloud-Gesamtarchitektur ist das Fundament für einen stabilen, nachvollziehbaren und sicheren IT-Betrieb. Sie schliesst die Lücke zwischen der theoretischen Konzeption und der praktischen Umsetzung (Infrastructure as Code) in dynamischen Cloud-Umgebungen.

#### Wieso ist eine Dokumentation zwingend notwendig?

- **Wissenstransfer & Nachvollziehbarkeit:** Cloud-Infrastrukturen (wie die Nextcloud- und Nginx-Umgebungen der EduGame) verändern sich schnell. Ohne Dokumentation geht implizites Wissen bei Teamwechseln verloren.
- **Fehlerbehebung (Debugging):** Bei Ausfällen (z.B. OCI-Runtime-Fehlern) verkürzt ein präziser Strukturplan die Zeit bis zur Behebung (MTTR - Mean Time to Resolution) massiv.
- **Sicherheit & Compliance:** Sicherheitsrelevante Aspekte wie isolierte Docker-Netzwerke, geschlossene DB-Ports (3306) oder Datenstandorte müssen für Audits und zur Angriffsflächen-Minimierung nachweisbar sein.

#### Mögliche Folgen einer fehlenden oder mangelhaften Dokumentation

- **Verlängerte Ausfallzeiten (Downtime):** Im Notfall müssen Konfigurationen mühsam per Reverse Engineering aus den laufenden Containern ausgelesen werden.
- **Sicherheitslücken:** Fehlende Übersicht führt dazu, dass Ports versehentlich nach aussen geöffnet werden oder Richtlinien zur Datensouveränität (z.B. Schweizer Regionen wie _Switzerland North_) verletzt werden.
- **Unkontrollierte Kosten ("Cloud Waste"):** Nicht dokumentierte Ressourcen, verwaiste Docker Volumes oder ungenutzte Test-VMs verursachen fortlaufende Kosten im Pay-per-Use-Modell.
- **Erhöhtes Risiko bei Migrationen:** Ein erneuter Plattformwechsel (z.B. ein weiteres Lift & Shift) schlägt fehl, wenn Abhängigkeiten und Netzwerkanbindungen unklar sind.

### 02 Struktur & Inhalte einer IT-Dokumentation

Eine vollständige Systemdokumentation sollte hierarchisch aufgebaut sein und sowohl die logische Architektur als auch die konkrete Konfiguration abbilden.

#### Vorhandene Struktur und Inhalte der EduGame-Infrastruktur

1.  **Ausgangslage & Zielsetzung:** Kontext des Projekts (Bereitstellung der EduGame Webserver-Umgebung mit Skalierungspotenzial).
2.  **Architektur & Infrastruktur (Das "Was"):**
    - Übersichtsdiagramme des Datenflusses (`Nutzer -> Loadbalancer -> Webserver`).
    - Eingesetzte Cloud-Dienste, Instanzgrössen und Netzwerk-Topologien (Host-Only Adapter, NAT, interne Docker-Bridges).
3.  **Konfigurationen & Code (Das "Wie"):**
    - Infrastructure as Code (IaC) Dateien wie `docker-compose.yml` (Definition des Netzwerks `edugame_net` und der Container `edugame_lb`, `edugame_web1` und `edugame_web2`).
    - Anwendungsspezifische Konfigurationen wie `nginx.conf` zur Lastverteilung über die `upstream`-Gruppe (`edugame_backend`) mittels Round-Robin-Verfahren.
    - Verwendete Basis-Images und Versionen (`Ubuntu 20.04 LTS`, `nginx:latest`, `httpd:2.4`).
4.  **Datenkompetenz & Persistenz:**
    - Definition und Pfade von Bind Mounts (für Webserver-Inhalte und Nginx-Konfiguration) und Docker Volumes (Nextcloud & MariaDB).
    - Automatisierte Sicherungs- und Wiederherstellungskonzepte mittels Bash-Skripten (`backup_migration.sh` / `restore_migration.sh`).
5.  **Sicherheitsrelevante Inhalte:**
    - Netzwerkisolierung (Port 80 ist nach aussen geöffnet, Backend-Webserver agieren isoliert im `edugame_net`-Bridge-Netzwerk).
    - Bereitstellungsskripte für die Host-Absicherung wie `docker_init.sh` (saubere Paketquellen-Einrichtung via GPG-Schlüssel).

### 03 Bedeutung für den Lebenszyklus (Betrieb, Veränderung, Notfall)

Eine Dokumentation ist kein statisches Papier, sondern ein dynamisches Werkzeug, das in verschiedenen Phasen des System-Lebenszyklus unterschiedliche Zwecke erfüllt:

| Phase                               | Bedeutung & Nutzen der Dokumentation                                                                                                                                                                                                                                  |
| :---------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Der Betrieb (Run)**               | Dient als tägliches Referenzwerk für das Monitoring. Sie definiert den Soll-Zustand (Baseline) des Systems, sodass Abweichungen im Ressourcenverbrauch oder unautorisierte offene Ports sofort erkannt werden.                                                        |
| **Die Veränderung (Change)**        | Ermöglicht eine fundierte Impact-Analyse vor Erweiterungen. Wenn die Umgebung (z.B. durch zusätzliche Microservices oder Auto-Scaling) wachsen soll, zeigt die Dokumentation sofort, welche IP-Bereiche frei sind und wo Loadbalancer-Regeln angepasst werden müssen. |
| **Der Notfall (Disaster Recovery)** | Der kritischste Use Case. Im Falle eines Totalausfalls oder Cyber-Angriffs dient die Dokumentation (zusammen mit den Backups) als exakte Schritt-für-Schritt-Anleitung, um das System auf einer komplett neuen VM fehlerfrei und zeitnah wiederaufzubauen.            |

### 04 Software & Tools zur Dokumentationsunterstützung

Je nach Anwendungsfall und Teamgrösse eignen sich verschiedene Tools, um eine Dokumentation effizient zu erstellen, zu strukturieren und aktuell zu halten:

#### Strukturierte Wissensdatenbanken & Wikis

- **DokuWiki:** Eine schlanke, Open-Source Wiki-Software, die Daten rein in Textdateien (keine Datenbank erforderlich) speichert. Ideal für einfache Administration und schnelle Versionskontrolle.
- **MS OneNote:** Flexibles, seitenbasiertes Tool zur schnellen, unstrukturierten Erfassung von Notizen, Befehlen und Screenshots während der Entwicklungsphase.

#### Configuration Management Databases (CMDB)

- **i-doit CMDB:** Eine professionelle Open-Source-Lösung für das IT-Asset-Management. Sie erlaubt es, physische Hardware (VirtualBox-Hosts, Notebooks) und logische Software-Komponenten (Container, Netzwerke) relational miteinander zu verknüpfen und Abhängigkeiten sichtbar zu machen.

#### Dokumentation als Code (Best Practice)

- **Markdown (z.B. in Git/GitHub):** Dokumentation direkt im Projektverzeichnis (`index.md`). Sie wächst synchron mit dem Code, lässt sich über Versionskontrolle (Git) tracken und sorgt dafür, dass Code-Änderungen und Dokumentations-Updates im selben Pull-Request stattfinden.

## 346-7B SideQuest:

### 01 Einführung & Kontext

Diese Gesamtdokumentation konsolidiert die Konzeption, Implementierung, Migration und Verifikation der Cloud- und Container-Infrastruktur für das Projekt **EduGame**. Die Dokumentation wurde nach den Best Practices von „Documentation as Code“ in strukturiertem Markdown verfasst, um eine lückenlose Nachvollziehbarkeit und Synchronisation mit den Konfigurationsdateien im Git-Repository zu gewährleisten.

### 02 Systemarchitektur & Infrastruktur (Das „Was“)

Die Gesamtarchitektur der EduGame-Infrastruktur wurde für maximale Skalierbarkeit, Ausfallsicherheit und eine schnelle Time-to-Market (TTM) entworfen. Sie basiert auf einem Cloud-Native-Ansatz mit containerisierten Microservices (Docker).

#### 1. Netzwerk-Topologie und Host-Vorbereitung

Die zugrundeliegende Infrastruktur läuft auf einer optimierten Linux-VM (Ubuntu 20.04 LTS) innerhalb einer VirtualBox-Umgebung (Spezifikation: mind. 2 GB RAM, 2 CPUs, 10 GB Speicherplatz).

Zur sicheren und stabilen Anbindung verfügt der Host über **4 Netzwerkadapter**:

- **1x NAT:** Für den kontrollierten ausgehenden Internetverkehr (z. B. für Updates und Image-Downloads).
- **3x Host-Only Adapter:** Zur strikten Isolation des internen Datenverkehrs und für gezielte administrative Zugriffe (SSH/SCP über die Host-IP, z. B. `192.168.56.126`).

Die Ersteinrichtung des Docker-Dämons auf dem Host wird über das automatisierte Bereitstellungsskript `docker_init.sh` realisiert. Dieses Skript stellt die Paket-Integrität durch das Einpflegen der offiziellen GPG-Schlüssel sicher, richtet das Docker-Repository ein und installiert die Docker Engine (`docker-ce`, `docker-ce-cli`, `containerd.io`) fehlerfrei.

#### 2. Logisches Architekturdiagramm (Web-Infrastruktur)

Der Datenfluss für die externen HTTP-Anfragen der EduGame-Plattform ist wie folgt isoliert und aufgeteilt:

```text
Eingehende Anfragen (HTTP Port 80)
               │
               v
       ┌─────────────────────────┐
       │      Loadbalancer       │
       │    (Nginx Container)    │
       │      "edugame_lb"       │
       └────────────┬────────────┘
                    │
          ┌─────────┴─────────┐
          │   Round-Robin     │ (Lastverteilung)
          └─────────┬─────────┘
                    │
          __________┴__________
          v                   v
 ┌─────────────────┐ ┌─────────────────┐
 │   Webserver 1   │ │   Webserver 2   │
 │ (Apache/httpd)  │ │ (Apache/httpd)  │
 │ "edugame_web1"  │ │ "edugame_web2"  │
 └─────────────────┘ └─────────────────┘
          │                   │
          └───┬───────────────┘
              v
      [ Docker Network ]
        "edugame_net"
```

### 03 Konfiguration & Infrastructure as Code (Das „Wie“)

Die Bereitstellung der Services erfolgt deklarativ über Docker Compose. Alle Umgebungsvariablen und Netzwerkgrenzen sind im Code definiert.

#### 1. Multi-Container-Orchestrierung (`docker-compose.yml`)

Diese Datei definiert das isolierte Bridge-Netzwerk `edugame_net` sowie die drei Kernkomponenten der Web-Infrastruktur. Die Backend-Webserver stellen keine Ports nach aussen bereit und sind ausschliesslich für den Loadbalancer erreichbar.

```yaml
services:
  # Loadbalancer - Nginx
  loadbalancer:
    image: nginx:latest
    container_name: edugame_lb
    ports:
      - "80:80"
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf:ro
    depends_on:
      - web1
      - web2
    networks:
      - edugame_net

  # Website 1 - Apache
  web1:
    image: httpd:2.4
    container_name: edugame_web1
    volumes:
      - ./web1/index.html:/usr/local/apache2/htdocs/index.html:ro
    networks:
      - edugame_net

  # Website 2 - Apache
  web2:
    image: httpd:2.4
    container_name: edugame_web2
    volumes:
      - ./web2/index.html:/usr/local/apache2/htdocs/index.html:ro
    networks:
      - edugame_net

networks:
  edugame_net:
    driver: bridge
```

#### 2. Loadbalancer-Konfiguration (`nginx.conf`)

Nginx agiert als Reverse Proxy auf Layer 7 und implementiert ein zustandsloses, statisches **Round-Robin-Verfahren**. Anfragen werden exakt abwechselnd an die Container `web1` und `web2` weitergeleitet.

```text
events {
    worker_connections 1024;
}

http {
    # Definition der Backend-Server (unsere Apache Container)
    upstream edugame_backend {
        server web1:80;
        server web2:80;
    }

    server {
        listen 80;

        location / {
            # Leitet die Anfragen an die definierte Upstream-Gruppe weiter
            proxy_pass http://edugame_backend;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
        }
    }
}
```

### 04 Datenkompetenz, Persistenz & Migrationskonzept

Ein zentrales Qualitätsmerkmal der Cloud-Architektur ist die Unterscheidung zwischen zustandslosen (Stateless) und zustandsbehafteten (Stateful) Daten, was sich direkt im Backup- und Migrationskonzept widerspiegelt.

#### 1. Datentypen in der EduGame-Infrastruktur

- **Bind Mounts:** Werden für Konfigurationsdateien (`nginx.conf`) und statische Web-Inhalte (`index.html`) genutzt. Diese liegen direkt auf dem Host-Dateisystem und können bei einer Migration unkompliziert als Datei-Archiv gesichert werden.
- **Named Docker Volumes:** Werden für die persistente Datenhaltung der Nextcloud-Plattform (`edugame-cloud_nextcloud_data`) und der MariaDB-Datenbank (`edugame-cloud_nextcloud_db`) verwendet. Da diese vom Docker-Dämon verwaltet werden, ist ein direkter Dateizugriff während des Betriebs riskant.

#### 2. Automatisierte Cloud-Migration (Lift & Shift / Rehosting)

Um die gesamte EduGame-Plattform ausfallsicher von einer alten VM auf eine neue Cloud-VM zu migrieren, wurden zwei aufeinander abgestimmte Bash-Skripte entwickelt.

- **Sicherung (`backup_migration.sh`):** Stoppt die Container kontrolliert (`docker compose down`), verpackt die lokalen Bind-Mount-Ordner in ein Tarball und sichert die Docker Volumes über dedizierte, temporäre Ubuntu-Hilfscontainer, um die Konsistenz der Datenbank- und Anwendungsdaten zu garantieren.
- **Wiederherstellung (`restore_migration.sh`):** Entpackt die Bind Mounts auf dem Zielsystem, erstellt die benötigten Named Volumes vorab über die Docker-CLI und spielt die gesicherten Daten via Hilfscontainer wieder ein, bevor die Infrastruktur gestartet wird.

### 05 Qualitätssicherung & Verifikation (Testing)

Die Validierung der migrierten Infrastruktur erfolgte über eine strukturierte Testmatrix, aufgeteilt in funktionale Anforderungen („Was“ tut das System) und nicht-funktionale Anforderungen („Wie“ verhält sich das System).

#### 1. Auszug aus dem HERMES-Testprotokoll

Alle durchgeführten Testfälle wurden erfolgreich abgeschlossen (Tester: Matteo Bosshard, Testobjekt: Cluster-Plattform):

- **FT01 (Web-Erreichbarkeit):** Aufruf der Host-IP liefert die HTTP-Startseite fehlerfrei aus.
- **FT02 (Loadbalancing):** Mehrmaliges Neuladen zeigt den zyklischen Wechsel zwischen Inhalt von _Webserver 1_ und _Webserver 2_ (Verifikation des Round-Robin-Algorithmus).
- **FT04 (Datenpersistenz):** Nach einem vollständigen Container-Neustart via Terminal bleiben hochgeladene Dateien in der Nextcloud vollständig erhalten.
- **NFT01 (Ausfallsicherheit/Resilienz):** Nach dem manuellen Stoppen von `edugame_web1` leitet Nginx den Traffic ohne spürbare Verzögerung oder Fehlerseite (502) zu 100% an `edugame_web2` weiter.
- **NFT02 (Netzwerksicherheit):** Ein Verbindungsversuch von ausserhalb des Hosts auf den MariaDB-Port `3306` läuft in ein Timeout. Die Datenbankschicht ist somit erfolgreich isoliert.

### 06 Bedeutung für den Betrieb und Lebenszyklus

| Betriebsphase                            | Nutzen dieser Dokumentation                                                                                                                                                                                                                                                     |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Regulärer Betrieb (Run)**              | Dient als Referenz (Baseline) für System-Monitoring und Sicherheits-Audits. Neue Teammitglieder können die Umgebung via `docker_init.sh` und `docker compose up -d` innerhalb von Minuten lokal replizieren.                                                                    |
| **System-Veränderungen (Change)**        | Bildet die Entscheidungsgrundlage für zukünftige Skalierungen. Soll die Applikation wachsen (z. B. für Events wie Black Friday), können im `upstream`-Block der `nginx.conf` und in der `docker-compose.yml` weitere Webserver-Instanzen ressourcenschonend hinzugefügt werden. |
| **Katastrophenfall (Disaster Recovery)** | Im Falle eines Server-Crashes oder Datenverlusts liefert das Zusammenspiel aus dieser Architekturbeschreibung und den Skripten `backup_migration.sh` / `restore_migration.sh` den exakten, zeitkritischen Leitfaden zur vollständigen Wiederherstellung des Betriebs.           |

## 346-7C SideQuest:

### 01 Konzept-Grundlagen: Backup vs. Disaster Recovery (DR)

Um ein effektives Sicherheitskonzept für die EduGame Cloud-Infrastruktur aufzubauen, müssen die Begriffe gemäss den HANOK-Vorgaben klar voneinander abgegrenzt werden:

- **Backup & Restore:** Beschreibt das regelmässige Sichern von Datenbeständen (z. B. der Nextcloud-Webdaten und der MariaDB-Datenbank), um diese bei versehentlichem Löschen, logischen Fehlern oder Ransomware-Angriffen bitgenau wiederherstellen zu können. Ein Backup adressiert die **Datensicherheit**.
- **Disaster Recovery (DR):** Beschreibt den strategischen Gesamtplan und die Prozesse, um nach einem katastrophalen Systemausfall (z. B. dem vollständigen Brand eines Rechenzentrums) die gesamte IT-Infrastruktur und die Geschäftsprozesse an einem alternativen Standort komplett neu aufzubauen und zu starten. DR adressiert die **Verfügbarkeit und IT-Resilienz**.

#### Die zwei entscheidenden Metriken im Katastrophenfall:

1.  **RPO (Recovery Point Objective):** Der maximal tolerable Datenverlust. Ein RPO von 24 Stunden bedeutet, dass das System im Ernstfall auf den Stand des Vortrags zurückgesetzt wird – alle Daten, die in den letzten 24 Stunden generiert wurden, sind verloren.
2.  **RTO (Recovery Time Objective):** Die maximale Down-Time. Diese Metrik definiert das Zeitfenster, das die IT-Abteilung hat, um die Services (z. B. via `restore_migration.sh`) wieder vollständig produktiv zu schalten, bevor geschäftsschädigende Konsequenzen eintreten.

### 02 Besonderheiten bei Cloud-Services (Die „Backup-Lüge“)

Es ist ein weit verbreiteter Irrglaube, dass Daten in der Cloud (sei es IaaS, PaaS oder SaaS) automatisch vor Verlust geschützt sind, nur weil der Provider Redundanz anbietet:

- **Redundanz ist kein Backup:** Hyperscaler spiegeln Daten über mehrere Festplatten oder Brandabschnitte (Availability Zones) hinweg. Fällt eine Festplatte aus, merkt der Nutzer nichts. **Aber:** Löscht ein Benutzer oder ein fehlerhaftes Skript eine Datei, wird diese Löschung _sofort_ auf alle gespiegelten Systeme repliziert. Die Datei ist weg.
- **Shared Responsibility Model (Modell der geteilten Verantwortung):** Der Cloud-Anbieter garantiert nur die Verfügbarkeit der physischen Infrastruktur und der Plattform (z. B. dass die VM läuft). Für den Schutz, die Klassifizierung und das Backup der _Daten innerhalb der Container_ ist immer der Kunde (EduGame) selbst verantwortlich.

### 03 Das EduGame Cloud-Backup-Konzept

Dieses Konzept erweitert die bisherige Systemdokumentation und definiert die konkrete Umsetzung für die Nextcloud- und Webserver-Plattform.

#### 1. Backup-Strategie nach der 3-2-1-1-Regel

- **3 Kopien:** 1x Produktivdaten auf der Cloud-VM, 2x Backups.
- **2 verschiedene Medien:** Speicherung auf lokalen Docker Volumes (SSD-Storage) und Übertragung auf ein separates System.
- **1 externes Medium (Offsite):** Automatisierter Transfer des erstellten `migration_backup`-Ordners via verschlüsseltem `scp` oder S3-API in eine andere Cloud-Region (z. B. von _Switzerland North_ zu _Europe West_).
- **1 unveränderbare Kopie (Immutable/WORM):** Schutz vor Ransomware. Die Backup-Archive werden in der Cloud mit einer Sperre versehen, sodass sie für einen definierten Zeitraum (z. B. 14 Tage) von niemandem – auch nicht vom Administrator – gelöscht oder überschrieben werden können.

#### 2. Technische Umsetzung (Skriptbasiert)

Das bestehende Skript `backup_migration.sh` bildet das Herzstück des Backups. Es sichert:

1.  **Die Konfigurationen (Stateless):** Der gesamte Ordner `edugame-setup` (Nginx-Config und Apache-Struktur) wird als komprimiertes `tar.gz` archiviert.
2.  **Die Anwendungsdaten (Stateful):** Die Nextcloud-Webdaten (`edugame-cloud_nextcloud_data`) und die MariaDB-Datenbank (`edugame-cloud_nextcloud_db`) werden über temporäre Ubuntu-Container direkt aus den Docker-Volumes ausgelesen und konsistent als `.tar`-Archive in den Backup-Ordner geschrieben.

**Sicherheitsmassnahme für Backupdaten:** Alle erstellten Backup-Archive müssen vor dem Verlassen des lokalen Hosts mittels AES-256 (z. B. via `gpg --symmetric`) verschlüsselt werden, damit unbefugte Dritte bei einem Abfangen der Daten keinen Zugriff auf sensible EduGame-Daten erhalten.

### 04 Das EduGame Disaster-Recovery-Konzept

Sollte die primäre Cloud-VM vollständig kompromittiert werden oder ausfallen, tritt der Disaster-Recovery-Plan in Kraft, um die RTO-Vorgaben einzuhalten.

#### Ablauf des Recovery-Prozesses (Schritt-für-Schritt):

1.  **Host-Provisionierung:** Ein neuer Linux-Host (Ubuntu Server) wird in einer unbetroffenen Cloud-Region oder lokal in VirtualBox gestartet.
2.  **Infrastruktur-Bereitstellung:** Ausführung des Skripts `docker_init.sh` auf dem neuen Host. Dies installiert die Docker Engine automatisiert und fehlerfrei innerhalb von weniger als 3 Minuten.
3.  **Daten-Zufuhr:** Der verschlüsselte Ordner `migration_backup` wird vom externen Offsite-Speicher auf den neuen Host geladen und entschlüsselt.
4.  **System-Wiederherstellung (Restore):** Ausführung des Skripts `restore_migration.sh`. Das Skript automatisiert die restlichen Schritte komplett:
    - Es entpackt die Nginx- und Apache-Strukturen.
    - Es erstellt die Named Docker Volumes für Nextcloud vorab auf der CLI.
    - Es injiziert die gesicherten Datenbitströme über temporäre Container zurück in die Volumes.
    - Es startet alle Services mittels `docker compose up -d`.

#### Validierung & DR-Test (Wichtig für den Betrieb):

Ein DR-Plan ist nur so viel wert wie sein letzter erfolgreicher Test. Alle 6 Monate wird das DR-Szenario in einer isolierten Testumgebung (Host-Only-Netzwerk) komplett durchgespielt. Dabei wird geprüft, ob die Ladezeiten der Nextcloud nach dem Restore unter den geforderten 2 Sekunden liegen (**NFT03**) und ob die Ports strikt isoliert bleiben (**NFT02**).

## 346-8A SideQuest:

### Definition & Bedeutung

Datensicherheit und Datenresilienz beschreiben den Schutz vor Datenverlust, unbefugtem Zugriff und die Fähigkeit eines Systems, sich nach schweren Störungen schnell wieder in einen funktionsfähigen Zustand zu versetzen. Während Hochverfügbarkeit darauf abzielt, Ausfälle durch redundante Komponenten im Live-Betrieb komplett zu verhindern, regelt das Disaster Recovery den strukturierten Wiederherstellungsprozess nach einem Totalausfall (z.B. Rechenzentrumsausfall). Backups bilden hierbei die fundamentale Datengrundlage, um historische Systemzustände fehlerfrei rekonstruieren zu können.

### Begriffe im Überblick

- **Verfügbarkeit:** Der Prozentsatz der Zeit, in dem ein System betriebsbereit und für Endnutzer erreichbar ist (z.B. 99.9% Verfügbarkeit).
- **Datensicherheit:** Der Schutz von Daten vor Manipulation, Zerstörung, Diebstahl oder unbefugter Offenlegung über den gesamten Lebenszyklus hinweg.
- **Datenresilienz:** Die Widerstandsfähigkeit von Datenstrukturen und Infrastrukturen gegenüber Fehlern, Cyberangriffen oder physischen Defekten, um den Geschäftsbetrieb aufrechtzuerhalten.
- **Hochverfügbarkeit (HA):** Systemarchitekturen, die durch Eliminierung von Single Points of Failure (SPOF) und automatisches Failover eine nahezu unterbrechungsfreie Bereitstellung garantieren.
- **Disaster Recovery (DR):** Die Strategie, Richtlinien und technischen Abläufe zur Wiederherstellung der IT-Infrastruktur nach einem kritischen Katastrophenfall.
- **Backup:** Die regelmässige, meist versionierte Spiegelung und externe Archivierung von Datenbeständen zur Absicherung gegen logischen oder physischen Datenverlust.

### Gegenüberstellung der Schutzmassnahmen

| Kriterium                 | Hochverfügbarkeit (HA)                                          | Disaster Recovery (DR)                                                  | Backup                                                                    |
| :------------------------ | :-------------------------------------------------------------- | :---------------------------------------------------------------------- | :------------------------------------------------------------------------ |
| **Primäres Ziel**         | Vermeidung von Systemausfällen im laufenden Betrieb             | Komplette Systemwiederherstellung nach Katastrophen                     | Sicherung des rohen Datenbestands gegen Verlust                           |
| **Zeitlicher Fokus**      | Echtzeit (Sekunden bis Minuten)                                 | Stunden bis Tage (RTO-orientiert)                                       | Historische Absicherung (Tage, Wochen, Monate)                            |
| **Typisches Szenario**    | Ausfall einer einzelnen Festplatte oder einer Server-Instanz    | Totalausfall eines Rechenzentrums oder Verschlüsselung durch Ransomware | Versehentliches Löschen von Tabellen oder fehlerhafte Code-Deployments    |
| **Infrastruktur-Aufwand** | Sehr hoch (synchrone Replikation, Load Balancer, Cluster-Nodes) | Mittel bis hoch (Standby-Infrastruktur, automatisierte Restore-Skripte) | Gering bis mittel (Automatisierte Backup-Pipelines, Cloud-Objektspeicher) |

### Backup-Strategie & Automatisierung (Cronjobs)

Um ein Backup gemäss Konzept nachhaltig einzurichten, wird der Prozess über systemeigene Zeitsteuerungsdienste automatisiert. Unter Linux wird dies standardmässig über `cron` realisiert. Die Definition erfolgt in der System-Crontab (`crontab -e`) und führt das vordefinierte Backup-Skript in festgelegten Intervallen autonom aus.

Beispiel für eine automatisierte Backup-Einplanung:

```bash
# Täglich um 02:00 Uhr morgens das Migrations-Backup ausführen und Log schreiben
0 2 * * * /bin/bash /home/docker/backup_migration.sh >> /var/log/backup_edugame.log 2>&1
```

### Validierung & Recovery-Test (DR-Simulation)

Ein Backup- und Desaster-Recovery-Konzept ist nur so zuverlässig wie sein letzter erfolgreicher Wiederherstellungstest. Zur Validierung des Setups wird der Ernstfall in einer isolierten Umgebung (Host-Only-Netzwerk) simuliert:

1. **System-Stopp simulieren:** Die aktiven Docker-Container werden mittels `docker compose down -v` gestoppt und alle zugehörigen Volumes vollständig gelöscht, um den Totalverlust der Live-Datenumgebung nachzustellen.
2. **Restore-Skript ausführen:** Das automatisierte Skript `restore_migration.sh` wird aufgerufen. Es erstellt die Named Volumes auf der CLI neu, injiziert die tar-gesicherten Bitströme über temporäre Hilfscontainer zurück in die Volume-Pfade und startet die Services neu.
3. **Integritätsprüfung:** Mittels Datenabgleich (z.B. MD5-Prüfsummen von hochgeladenen Dateien in Nextcloud oder Zeilenabgleich in der MariaDB) wird verifiziert, ob die wiederhergestellten Datenbits bitidentisch mit dem Quellzustand sind.

## 346-8B SideQuest:

### Definition & Bedeutung

In modernen IT- und Cloud-Architekturen wird grundlegend zwischen strukturierten, teilstrukturierten (semi-strukturierten) und unstrukturierten Daten unterschieden. Die Wahl der Datenstruktur bestimmt massgeblich, wie Daten in Cloud-Umgebungen (wie relationalen Datenbanken, NoSQL-Clustern oder Object-Storage-Systemen) gespeichert, indiziert und abgefragt werden. Für ein funktionierendes Datenmanagement ist es essenziell, die richtige Speicherform zu wählen, da diese direkten Einfluss auf die Skalierbarkeit, die Abfragegeschwindigkeit und die Komplexität der Systemlandschaft hat.

### Begriffe im Überblick

- **Strukturierte Daten:** Daten, die in einem fest vorgegebenen, starren Schema (z. B. Zeilen und Spalten) organisiert sind. Sie folgen einem Datenmodell, bei dem jeder Datensatz dieselbe Struktur aufweist.
- **Teilstrukturierte (semi-strukturierte) Daten:** Daten, die keinem strikten relationalen Tabellenschema folgen, aber durch Markierungen, Tags oder Key-Value-Paare eine innere Hierarchie besitzen, die eine maschinelle Interpretation ohne festes Schema erlaubt.
- **Unstrukturierte Daten:** Daten, die in keiner vordefinierten Datenstruktur vorliegen. Sie sind formlos, liegen meist als Binärdaten (Blobs) oder Textströme vor und können nicht ohne Weiteres rein relational abgefragt werden.

### Gegenüberstellung der Datenstrukturtypen

| Kriterium                   | Strukturierte Daten                                  | Teilstrukturierte Daten                      | Unstrukturierte Daten                                        |
| :-------------------------- | :--------------------------------------------------- | :------------------------------------------- | :----------------------------------------------------------- |
| **Formatbeispiele**         | SQL-Tabellen, CSV-Dateien, Excel-Listen              | JSON, XML, YAML, Quellcode-Dateien           | PDFs, Bilder (PNG/JPG), Videos, Audiodaten, Office-Dokumente |
| **Typische Cloud-Services** | PostgreSQL (AWS RDS / Azure SQL), Supabase           | MongoDB, Redis, DynamoDB, Firebase           | Google Drive, OneDrive, AWS S3, Azure Blob Storage           |
| **Abfrage-Methode**         | SQL (Structured Query Language)                      | REST-APIs, GraphQL, NoSQL-Querys             | Volltextsuche, Metadaten-Indizierung, KI/Vektorsuche         |
| **Flexibilität**            | Sehr gering (Schemaänderungen erfordern Migrationen) | Hoch (Schema-Abstraktion, dynamische Felder) | Extrem hoch (beliebige Binärdaten speicherbar)               |

### Speicherorte, Datentypen und technische Analyse

Basierend auf der produktiven Tool-Infrastruktur (Google Drive, OneDrive, GitHub, sowie lokalen Docker-Umgebungen) ergibt sich folgende Zuordnung und architektonische Analyse:

| Cloud-Service / Speicherort     | Gespeicherte Daten                                           | Primärer Datentyp   | Technische Analyse & Begründung                                                                                                                                                                                                            |
| :------------------------------ | :----------------------------------------------------------- | :------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Google Drive / OneDrive**     | PDF-Dokumente, Mediendateien (Bilder/Videos), Präsentationen | Unstrukturiert      | Die Dateien besitzen kein einheitliches Datenmodell. Der Cloud-Speicher fungiert als Object Storage (BLOB), welcher die Dateien als rohe Bitströme speichert und lediglich über Metadaten (Dateiname, Erstelldatum) indiziert.             |
| **GitHub Repositories**         | Quellcode (`.ts`, `.rs`, `.json`, `.yml`, `.md`)             | Teilstrukturiert    | Quellcode und Konfigurationsdateien folgen syntaktischen Regeln und Mustern (z. B. AST - Abstract Syntax Tree). JSON/YAML-Dateien enthalten explizite Key-Value-Strukturen, die ohne relationales Schema maschinell geparst werden können. |
| **Lokale Docker-Infrastruktur** | Datenbank-Volumes (PostgreSQL / MariaDB)                     | Strukturierte Daten | Anwendungsdaten (z. B. Benutzerkonten, Noten, Transaktionen) werden in relationalen Tabellen mit strikten Datentypen (VARCHAR, INT), Foreign-Key-Constraints und vordefinierten Schemata verwaltet.                                        |

### Exkurs: Wie Git Daten intern speichert

Obwohl GitHub textbasierten Quellcode anzeigt, speichert das darunterliegende Versionsverwaltungssystem Git Daten fundamental anders als klassische Dateisysteme. Git arbeitet **nicht** mit Deltas (Differenzen zwischen Zeilen), sondern speichert Snapshots des gesamten Projekts in einer proprietären, inhaltsadressierbaren Schlüssel-Wert-Datenbank im `.git/objects/`-Verzeichnis.

Git nutzt drei primäre Objekttypen (gespeichert als zlib-komprimierte Dateien, benannt nach dem SHA-1- oder SHA-256-Hash ihres Inhalts):

1. **Blobs (Binary Large Objects):** Speichern den reinen Dateiinhalt einer bestimmten Dateiversion. Ein Blob enthält keinerlei Metadaten – weder den Dateinamen, noch den Verzeichnispfad oder die Berechtigungen. Ändert sich ein einziges Zeichen in einer Datei, erzeugt Git einen komplett neuen Blob.
2. **Trees (Verzeichnisse):** Ein Tree-Objekt repräsentiert ein Verzeichnis. Es verweist auf SHA-Hashes von Blobs (Dateien) oder Unter-Trees (Unterverzeichnisse) und ordnet diesen die eigentlichen Dateinamen und Zugriffsrechte zu.
3. **Commits (Historie):** Ein Commit-Objekt verweist auf genau einen Root-Tree (den Zustand des gesamten Projekts zu diesem Zeitpunkt), enthält Metadaten (Autor, Zeitstempel, Commit-Nachricht) und verweist auf den oder die SHA-Hashes der direkten Vorgänger-Commits (Parents).

### Einfluss auf Zugriff und Backupkonzepte

#### 1. Einfluss auf den Datenzugriff

- **Strukturierte Daten** erlauben hochperformante, gezielte Abfragen mittels Indizes (B-Trees). Der Zugriff erfolgt punktuell (einzelne Zeilen).
- **Unstrukturierte Daten** erfordern beim Zugriff meist das Laden der gesamten Datei. Suchvorgänge innerhalb der Inhalte erfordern rechenintensive Volltextindizes oder Vektordatenbanken.

#### 2. Einfluss auf das Backupkonzept & notwendige Anpassungen

Die Datenstruktur diktiert das Sicherungsverfahren. Ein pauschales Filesystem-Backup reicht für moderne Cloud-Infrastrukturen nicht aus.

- **Anpassung für strukturierte Daten (Datenbanken):** Ein einfaches Kopieren der physischen Datenbankdateien im laufenden Betrieb führt zu korrupten Backups (Inkonsistenz), da Schreibvorgänge parallel stattfinden.
  _Massnahme:_ Es müssen transaktionssichere logische Dumps (`pg_dump`, `mariadb-dump`) erstellt oder Point-in-Time-Recovery (PITR) über Write-Ahead-Logs (WAL) implementiert werden.
- **Anpassung für teilstrukturierte Daten (Git/Code):**
  Quellcode auf GitHub ist durch verteilte lokale Klone der Entwickler bereits redundant. Dennoch müssen CI/CD-Pipelines, Issue-Tracker und Pull-Requests separat über die GitHub-API gesichert werden, da diese nicht im `.git`-Verzeichnis liegen.
- **Anpassung für unstrukturierte Daten (Drive/Cloud-Speicher):**
  Aufgrund des immensen Datenvolumens (Bilder, Videos) sind tägliche Vollbackups ineffizient und blockieren Bandbreite.
  _Massnahme:_ Einsatz von blockbasierten, inkrementellen Backup-Verfahren mit Deduplizierung (z. B. mit Tools wie Restic oder BorgBackup), um identische Datenblöcke plattformübergreifend nur einmal zu sichern.

## 346-8C SideQuest:

### Definition & Bedeutung

Im Zeitalter von Big Data und Künstlicher Intelligenz stossen klassische, relationale Datenstrukturen an ihre Skalierungsgrenzen. Um riesige Mengen an strukturierten, teilstrukturierten und unstrukturierten Daten kosteneffizient zu verarbeiten, haben sich moderne Cloud-Speicherarchitekturen etabliert. Während ein **Data Warehouse** für hochstrukturierte, geschäftsrelevante Daten optimiert ist, dient ein **Data Lake** als zentrales Sammelbecken für Rohdaten in ihrer Ursprungsform. Diese Datenmengen bilden die fundamentale Trainingsgrundlage für KI-Modelle, bringen jedoch erhebliche Herausforderungen bezüglich des Datenschutzes mit sich – insbesondere im Kontext des revidierten Schweizer Datenschutzgesetzes (DSG).

### Begriffe im Überblick

- **Big Data:** Grosse, komplexe und sich schnell verändernde Datenmengen, die mit traditionellen Methoden der Datenverarbeitung nicht adäquat ausgewertet werden können (charakterisiert durch die 3 Vs: _Volume_, _Velocity_, _Variety_).
- **Data Warehouse (DWH):** Ein zentrales Datenbanksystem, das speziell für Analysen und Business Intelligence optimiert ist. Daten werden vor der Speicherung bereinigt, transformiert und in ein starres, relationales Schema gepresst (_Schema-on-Write_).
- **Data Lake:** Ein hochskalierbarer Speicherort, der massive Mengen an Rohdaten in ihrem nativen Format (strukturiert, teilstrukturiert und unstrukturiert) aufnimmt. Die Strukturierung erfolgt erst bei der Abfrage (_Schema-on-Read_).
- **Revidiertes Schweizer Datenschutzgesetz (DSG):** Das per 1. September 2023 in Kraft getretene Schweizer Gesetz, welches den Schutz der Persönlichkeit und der Grundrechte von Personen, über die Daten bearbeitet werden, stärkt und an die EU-DSGVO angleicht.

### Gegenüberstellung: Data Warehouse vs. Data Lake

| Kriterium                   | Data Warehouse (DWH)                           | Data Lake                                                    |
| :-------------------------- | :--------------------------------------------- | :----------------------------------------------------------- |
| **Datentyp**                | Ausschliesslich strukturiert (verarbeitet)     | Strukturiert, teilstrukturiert und unstrukturiert (Rohdaten) |
| **Schema-Architektur**      | Schema-on-Write (Struktur vor Speicherung)     | Schema-on-Read (Struktur bei Abfrage)                        |
| **Speicherkosten**          | Relativ hoch (da performante Datenbanksysteme) | Sehr günstig (kosteneffizienter Cloud-Objektspeicher)        |
| **Typische Cloud-Services** | AWS Redshift, Google BigQuery, Snowflake       | AWS S3, Azure Data Lake Storage, Google Cloud Storage        |
| **Haupt-Anwender**          | Business-Analysten, Data Analysts (BI)         | Data Scientists, Data Engineers                              |
| **Eignung für KI/ML**       | Gering (da Daten bereits stark gefiltert)      | Perfekt (grosse Mengen an Mustern in Rohdaten)               |

### Messenger-Vergleich: Datensammlungen & Datenschutz

Im Kontext von Big Data sammeln Messenger-Dienste gigantische Mengen an Benutzerinformationen. Der Grad der Datensparsamkeit und der rechtliche Rahmen unterscheiden sich je nach Anbieter fundamental:

| Kriterium               | WhatsApp (Meta Platforms)                                            | Telegram (Telegram FZ-LLC)                                             | Threema (Threema GmbH)                                                   |
| :---------------------- | :------------------------------------------------------------------- | :--------------------------------------------------------------------- | :----------------------------------------------------------------------- |
| **Rechtlicher Sitz**    | USA / Irland (für EU/CH)                                             | Dubai, Vereinigte Arabische Emirate                                    | Schweiz (Pfäffikon SZ)                                                   |
| **Anwendbares Recht**   | EU-DSGVO / Schweizer DSG                                             | VAE-Recht (oft unklarer Gerichtsstand)                                 | Schweizer DSG / EU-DSGVO                                                 |
| **Verschlüsselung**     | Ende-zu-Ende (Signal-Protokoll) für alle Chats standardmässig aktiv. | Nur in optionalen "Geheimen Chats". Standard-Chats liegen auf Servern. | Vollständige Ende-zu-Ende-Verschlüsselung für alle Daten standardmässig. |
| **Metadaten-Erfassung** | Sehr hoch (Telefonnummer, IP-Adresse, Kontakte, Online-Status).      | Hoch (Telefonnummer, IP-Adresse, Kontaktliste auf Servern).            | Minimal (Keine Handynummer/E-Mail nötig, anonyme Threema-ID).            |

#### 1. Welche Daten werden gespeichert?

- **WhatsApp:** Telefonnummer, Profilbild, Statusmeldungen, IP-Adresse, Geräte-IDs, Mobilfunknetzwerk, Standortdaten (falls freigegeben), vollständiges Adressbuch (Kontaktsynchronisation) und umfassende Nutzungs- und Interaktionsdaten (wer kommuniziert wann und wie lange mit wem). Die Nachrichteninhalte selbst sind Ende-zu-Ende verschlüsselt und werden nach der Zustellung von den Servern gelöscht.
- **Telegram:** Telefonnummer, Profilname, Kontaktliste (wird permanent auf den Servern synchronisiert). Da Standard-Chats cloudbasiert sind, werden alle Textnachrichten, Bilder und Dokumente unverschlüsselt (bzw. nur serverseitig verschlüsselt) auf den Servern von Telegram gespeichert, um Synchronisation zu ermöglichen. Nur optionale "Geheime Chats" sind Ende-zu-Ende verschlüsselt.
- **Threema:** Generiert eine zufällige, 8-stellige Threema-ID. Die Verknüpfung mit einer Telefonnummer oder E-Mail ist rein optional. Es werden keine Adressbücher permanent gespeichert (Hashes der Kontakte werden nur flüchtig im RAM abgeglichen). Nachrichten werden nach der Zustellung sofort vom Server gelöscht. Es fallen konstruktionsbedingt fast keine Metadaten an.

#### 2. Wozu sollen diese Daten verwendet werden?

- **WhatsApp:** Die Daten fliessen direkt in den Big-Data-Pool des Mutterkonzerns Meta (Facebook/Instagram). Sie dienen der Erstellung detaillierter Nutzerprofile für zielgerichtete Verhaltenswerbung, der Optimierung von Business-Funktionen (WhatsApp Business) und der plattformübergreifenden Verknüpfung von Identitäten.
- **Telegram:** Offiziell zur Bereitstellung der Cloud-Synchronisation, damit Nutzer von mehreren Geräten gleichzeitig auf ihre Historie zugreifen können. Kommerziell werden aggregierte Daten zunehmend für das eigene Werbenetzwerk in grossen, öffentlichen Kanälen sowie für die Monetarisierung von Premium-Funktionen genutzt.
- **Threema:** Die Daten dienen ausschliesslich der technischen Übermittlung der Nachrichten. Da das Geschäftsmodell auf dem direkten Verkauf der App (bzw. Threema Work Lizenzen) basiert, besteht kein finanzielles Interesse an Datenmonetarisierung, Profiling oder Big-Data-Analysen.

#### 3. Welche Daten unterliegen dabei einem Datenschutz und was bedeutet dies?

- **Geltungsbereich des Datenschutzes:** Alle oben genannten Daten (IP-Adressen, Telefonnummern, Standortdaten, Profilbilder) gelten gemäss dem Schweizer DSG und der EU-DSGVO als **personenbezogene Daten**, da sie eine Person direkt oder indirekt identifizierbar machen. Sie unterliegen dem strikten Schutzbereich des Gesetzes.
- **Auswirkungen auf das Erheben der Daten (Schweizer DSG):**
  - **Datensparsamkeit & Zweckbindung:** Daten dürfen nur für den Zweck erhoben werden, der bei der Beschaffung angegeben wurde (Art. 6 DSG). Ein pauschales "Sammeln auf Vorrat" für unklare Big-Data-Analysen ist illegal.
  - **Transparenz & Informationspflicht:** Der Anbieter muss den Nutzer klar darüber informieren, _welche_ Daten zu _welchem_ Zweck beschafft werden (Art. 19 DSG).
  - **Privacy by Design / Default:** Systeme müssen von Grund auf so datenschutzfreundlich wie möglich gestaltet sein (Art. 7 DSG). Threema setzt dies nativ um, während WhatsApp durch die standardmässige Adressbuch-Absaugung dagegen verstösst.
  - **Recht auf Auskunft & Löschung:** Schweizer Nutzer können von jedem Anbieter verlangen, offenzulegen, welche Daten über sie gespeichert sind, und deren Löschung fordern. Während dies bei Threema (da kaum Daten vorhanden) und WhatsApp (via standardisierte Export-Funktion) geregelt ist, erweist sich die rechtliche Durchsetzung gegenüber Telegram (Sitz in Dubai) in der Praxis als fast unmöglich.

> WICHTIG: IN PRÜFUNG FLUSSDIAGRAMM VON ARCHITEKTUR ZEICHNEN KÖNNEN MÜSSEN

## Die 12 Faktoren einer Cloud-Native Applikation

### 1. Codebase (Eine Codebasis, in Git verwaltet, viele Deployments)

- **Das Kernprinzip:** Es gibt eine strikte 1:1-Beziehung zwischen einer Applikation (oder einem Microservice) und ihrem Git-Repository. Wenn es mehrere Repositories gibt, handelt es sich nicht um eine App, sondern um ein verteiltes System aus mehreren Apps (die jeweils wieder eigene Codebasen haben).
- **Der tiefe Einblick:** Der Code selbst bleibt über alle Umgebungen hinweg absolut identisch. Der Unterschied zwischen der Entwickler-Maschine (Dev), dem Testserver (Staging) und dem Live-System (Production) liegt _niemals_ im Code, sondern ausschliesslich darin, welche externen Ressourcen angebunden sind und welche Konfigurationen geladen werden.
- **Für die Prüfung:** Ein Codebase-Verstoss wäre es, wenn du für die Live-Umgebung einen eigenen Git-Branch (`production-branch`) hast, in dem spezifischer Code für die Live-Datenbank steht.

### 2. Dependencies (Abhängigkeiten explizit deklarieren und isolieren)

- **Das Kernprinzip:** Eine Twelve-Factor-App verlässt sich niemals darauf, dass bestimmte Werkzeuge, Bibliotheken oder System-Utilities auf dem Host-Betriebssystem bereits global vorinstalliert sind.
- **Der tiefe Einblick:** Alle Abhängigkeiten müssen explizit und mit exakter Versionsnummer in einer Manifest-Datei deklariert werden (z. B. in einer `package.json` für Node.js, `pom.xml` für Maven/Java, `Cargo.toml` für Rust oder `requirements.txt` für Python). Zudem wird ein Isolations-Werkzeug (wie Docker) genutzt, um sicherzustellen, dass keine globalen Systembibliotheken in den Container "hineinsickern".
- **Für die Prüfung:** Die App darf nicht voraussetzen, dass auf dem Server das Kommando `curl` oder eine bestimmte Version von `ImageMagick` global installiert ist. Wenn die App ein Tool braucht, muss dieses explizit im Dockerfile mitgebaut werden.

### 3. Config (Konfiguration in der Umgebung/Environment speichern)

- **Das Kernprinzip:** Alles, was sich zwischen verschiedenen Deployments (Dev, Staging, Prod) unterscheidet, ist eine Konfiguration. Dazu gehören Datenbank-Zugangsdaten, API-Schlüssel von Drittanbietern oder geheime Tokens. Diese gehören **niemals** in den Quellcode.
- **Der tiefe Einblick:** Der ultimative Test für diesen Faktor lautet: _Könnte der Quellcode deiner Anwendung in diesem Moment als Open-Source-Projekt auf GitHub öffentlich gemacht werden, ohne dass ein einziges Sicherheitsrisiko entsteht?_ Wenn die Antwort "Nein" lautet (weil irgendwo Passwörter im Code stehen), ist der Faktor verletzt. Die Konfiguration wird stattdessen über Umgebungsvariablen (`ENV`) zur Laufzeit in den Container injiziert.
- **Für die Prüfung:** In Docker Compose wird das über den Block `environment:` oder mittels einer `.env`-Datei gelöst, die auf dem Server liegt, aber über `.gitignore` vom Git-Repository ausgeschlossen ist.

### 4. Backing Services (Unterstützende Dienste als angebundene Ressourcen behandeln)

- **Das Kernprinzip:** Ein Backing Service ist jeder Dienst, den die App über das Netzwerk konsumiert (z. B. MySQL/MariaDB, PostgreSQL, Redis-Caches, SMTP-Server für Mailversand, RabbitMQ). Eine Twelve-Factor-App macht keinen Unterschied zwischen lokalen Diensten und Diensten von Drittanbietern.
- **Der tiefe Einblick:** Für die Anwendung ist die lokale MariaDB, die im selben Docker-Netzwerk läuft, exakt dasselbe wie eine gemanagte Cloud-Datenbank (z. B. AWS RDS). Beide werden lediglich über eine Verbindungs-URL (Verbindungszeichenfolge / Connection String) angebunden. Dadurch lassen sie sich ohne Code-Änderung austauschen. Wenn die lokale Datenbank abstürzt oder migriert werden muss, ändert man nur die URL in den Umgebungsvariablen.
- **Für die Prüfung:** Ressourcen sind lose gekoppelt. Die App greift abstrakt über das Netzwerk darauf zu, ohne hart an die physische Infrastruktur gebunden zu sein.

### 5. Build, Release, Run (Build-, Release- und Run-Phasen streng trennen)

- **Das Kernprinzip:** Die Transformation des Codes in ein laufendes System erfolgt in drei strikt getrennten, unumkehrbaren Schritten.
- **Der tiefe Einblick:**

1. **Build-Phase:** Der Quellcode wird aus Git geholt, Abhängigkeiten werden heruntergeladen und alles wird in ein unveränderliches (immutables) Artefakt kompiliert (z. B. ein Docker-Image).
2. **Release-Phase:** Das fertige Build-Artefakt wird mit der spezifischen Konfiguration (Umgebungsvariablen) der Zielumgebung zusammengeführt. Das Ergebnis ist ein _Release_. Jedes Release erhält eine eindeutige ID (z. B. ein Timestamp oder eine fortlaufende Versionsnummer v12) und wird in einem Release-Verzeichnis archiviert. _Wichtig: Ein Release kann nachträglich nicht mehr verändert werden._
3. **Run-Phase:** Die Anwendung wird in der Zielumgebung ausgeführt (z. B. durch Starten des Docker-Containers).

- **Für die Prüfung:** Man darf niemals im laufenden Betrieb ("Hot-Fixing" direkt auf dem Server) Codezeilen ändern. Jede Änderung erfordert einen komplett neuen Build- und Release-Prozess.

### 6. Processes (Die Anwendung als einen oder mehrere zustandslose Prozesse ausführen)

- **Das Kernprinzip:** Twelve-Factor-Prozesse sind absolut **zustandslos (stateless)** und teilen sich nichts (Shared-Nothing-Architektur).
- **Der tiefe Einblick:** Jeder Prozess kann jederzeit vernichtet, neu gestartet oder dupliziert (skaliert) werden, ohne dass Daten verloren gehen. Wenn die App Daten speichern muss (z. B. hochgeladene Benutzerbilder oder Session-Zustände von Logins), darf sie diese _niemals_ im lokalen Dateisystem des Containers oder im Arbeitsspeicher (RAM) des Prozesses halten. Der Container-Speicher ist flüchtig (ephemeral). Sobald der Container neu startet, ist alles weg.
- **Für die Prüfung:** Zustandsdaten gehören zwingend in einen persistenten Datenspeicher (Datenbank, Redis für Sessions oder S3-Objektspeicher für Dateien).

### 7. Port Binding (Dienste durch Port-Bindung exportieren)

- **Das Kernprinzip:** Die Cloud-Native-App ist komplett eigenständig und bringt ihren eigenen Webserver (oder Protokoll-Listener) direkt im Code mit. Sie verlässt sich nicht auf einen externen Webserver-Infrastruktur-Container (wie einen global installierten Apache oder Tomcat), um lauffähig zu sein.
- **Der tiefe Einblick:** Eine Node.js-App startet ihren eigenen HTTP-Server auf Port 3000, eine Spring-Boot-App bringt ihren eingebetteten Tomcat auf Port 8080 mit. Die App bindet sich selbst an diesen Port. Wenn ein externer Nutzer darauf zugreifen will, schaltet man einen Load Balancer oder Reverse Proxy (wie Traefik oder Nginx) davor, der das Routing von Port 80/443 auf den internen Port der App übernimmt.
- **Für die Prüfung:** Die Applikation deklariert im Container autark ihren Port. Das Mapping nach aussen erfolgt deklarativ (z. B. `ports: - "8080:8080"` in Docker Compose).

### 8. Concurrency (Über das Prozess-Modell horizontal skalieren)

- **Das Kernprinzip:** Wenn die Last auf die Anwendung steigt, skaliert man nicht vertikal (indem man dem bestehenden Server mehr CPU/RAM gibt), sondern horizontal (indem man mehr Instanzen desselben Prozesses startet).
- **Der tiefe Einblick:** Da Faktor 6 (Statelessness) garantiert, dass Prozesse keine lokalen Zustände speichern, ist es vollkommen egal, ob ein oder einhundert Prozesse parallel laufen. Der Entwickler teilt die App in verschiedene Prozesstypen auf (z. B. HTTP-Prozesse für Web-Anfragen, Worker-Prozesse für langwierige Hintergrundaufgaben). Braucht das System mehr Leistung für Web-Anfragen, werden einfach fünf weitere HTTP-Container gestartet.
- **Für die Prüfung:** In Docker Compose lässt sich das mit dem Befehl `docker compose up --scale web=5` direkt umsetzen.

### 9. Disposability (Robustheit durch schnelle Starts und sicheres Beenden maximieren)

- **Das Kernprinzip:** Prozesse müssen elastisch sein. Das bedeutet, sie müssen sich extrem schnell starten lassen und sich absolut sauber herunterfahren lassen, wenn sie gestoppt werden.
- **Der tiefe Einblick:** \* _Schneller Start:_ Minimiert die Zeit, die das System braucht, um auf plötzliche Lastspitzen durch automatisches Hochskalieren zu reagieren.
- _Sicheres Beenden (Graceful Shutdown):_ Wenn der Cloud-Provider oder Docker Compose den Befehl zum Stoppen gibt, sendet das System ein `SIGTERM`-Signal. Der Prozess muss dieses Signal abfangen, die Annahme neuer Anfragen blockieren, die aktuell noch laufenden Anfragen sauber zu Ende verarbeiten, Datenbankverbindungen schliessen und sich erst dann beenden.

- **Für die Prüfung:** Stürzt ein Container unerwartet ab (z. B. Hardwarefehler des Host-Servers), dürfen keine Daten korrumpiert werden (Crash-Resistenz), weil Transaktionen sauber über Backing Services abgesichert sind.

### 10. Dev/Prod Parity (Entwicklungs-, Staging- und Produktionsumgebungen so identisch wie möglich halten)

- **Das Kernprinzip:** Das klassische Entwickler-Problem _"Aber auf meinem Laptop hat es funktioniert!"_ wird eliminiert, indem die Kluft zwischen Entwicklung (Dev) und Live-Betrieb (Prod) in drei Dimensionen minimiert wird:

1. _Zeitliche Kluft:_ Entwickler pushen Code, der innerhalb von Minuten (statt Wochen) über CI/CD live geht.
2. _Personelle Kluft:_ Die Entwickler, die den Code schreiben, überwachen auch das Deployment (DevOps-Ansatz).
3. _Technische Kluft:_ Auf dem Laptop des Entwicklers laufen exakt dieselben Software-Stapel und Versionen wie auf dem Produktivserver.

- **Der tiefe Einblick:** Früher nutzten Entwickler lokal oft eine leichtgewichtige SQLite-Datenbank und im Live-System ein mächtiges PostgreSQL. Das verletzt diesen Faktor. Cloud-Native-Entwickler nutzen auch lokal via Docker exakt dieselbe PostgreSQL-Version, um unvorhergesehene Verhaltensunterschiede im Keim zu ersticken.

### 11. Logs (Logs als kontinuierliche Ereignisströme behandeln)

- **Das Kernprinzip:** Eine Applikation kümmert sich niemals selbst darum, wo ihre Logdateien gespeichert, rotiert oder analysiert werden. Sie schreibt keine Logfiles auf die Festplatte.
- **Der tiefe Einblick:** Die Anwendung schreibt all ihre Ausgaben (Fehlermeldungen, Statusberichte) ungepuffert direkt in den Standard-Ausgabekanal (**`stdout`** und **`stderr`**). Die Laufzeitumgebung (z. B. der Docker-Daemon) fängt diesen Datenstrom ab. Im Live-Betrieb werden diese Ströme von zentralen Log-Aggregatoren (wie Splunk, dem ELK-Stack oder Grafana Loki) eingesammelt, indexiert und durchsuchbar gemacht.
- **Für die Prüfung:** In deiner Docker-Umgebung liest du diesen Stream auf dem Terminal mit dem Befehl `docker logs [container_id]` aus. Die App selbst weiss nicht, wohin die Logs fliessen.

### 12. Admin Processes (Administrative Aufgaben als Einmal-Prozesse ausführen)

- **Das Kernprinzip:** Administrative Aufgaben oder Einmal-Skripte (z. B. Datenmigrationen, Einspielen eines neuen Datenbankschemas, Backups anstossen) müssen in derselben Umgebung und unter exakt denselben Bedingungen ausgeführt werden wie die eigentliche App.
- **Der tiefe Einblick:** Solche Admin-Skripte müssen mit derselben Codebasis und derselben Konfiguration (Umgebungsvariablen) laufen wie die langlebigen App-Prozesse zu diesem Zeitpunkt. Man loggt sich dafür nicht manuell auf der Produktions-Datenbank ein, um SQL-Befehle einzutippen. Stattdessen startet man einen separaten, kurzlebigen Einmal-Container (Ephemeral Process) im selben Docker-Netzwerk, der das Migrationsskript automatisiert ausführt und sich danach wieder beendet.
- **Für die Prüfung:** Ein typisches Beispiel ist das Ausführen von Datenbankmigrationen (z. B. mit Liquibase, Flyway oder nativen Framework-Tools) als vorgeschalteter Schritt beim Deployment, bevor der eigentliche Web-Server-Prozess gestartet wird.
