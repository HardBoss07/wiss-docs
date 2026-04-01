# Modul 106

Domain: mylights.ch

## Checkliste

### 1. Lead Developer (Programmierung & Projektleitung)

- Hauptverantwortung für die Web-Programmierung der Suche und die Anbindung an die Datenbank.
- Erstellung der Logik für die Benutzerverwaltung und den geschützten Medienzugang.
- Code-Review für die Datenbankabfragen des Database Engineers, um Fehler zu vermeiden.
- Koordination des technischen Gesamtsystems zwischen MySQL, Webserver und Domain.
- Überwachung der 10-seitigen Dokumentation und der Präsentation zur Qualitätssicherung.

### 2. Database Assistant (Unterstützung Backend)

- Erstellung und Pflege der Tabellenstruktur in MySQL Workbench nach Vorgabe des Leads.
- Eingabe und Kategorisierung der Testdaten (Fotos, Videos, Sounds).
- Zuweisung der aussagekräftigen Signaturen (z.B. Heilkunde oder Gesellschaft) zu den Datensätzen.
- Dokumentation des ER-Modells für den technischen Bericht.

### 3. Web & UI Assistant (Unterstützung Frontend)

- Erstellung des HTML/CSS-Grundgerüsts für die Webseite auf Green.ch.
- Grafische Aufbereitung der Mediensammlung (Vorschauansichten für Foto, Video, Sound).
- Unterstützung des Leads beim Einbau der Suchfunktion in das Webdesign.
- Pflege der Inhalte auf der Webseite während der Entwicklungsphase.

### 4. System & Quality Specialist (Operations)

- Durchführung des Datentransfers via FTP und Einrichtung der Backups.
- Durchführung der Performancetests und Erstellung der Testprotokolle.
- Sicherstellung, dass die technische Vorführung reibungslos vorbereitet ist.
- Unterstützung des Leads bei der Konfiguration der MySQL-Schnittstellen.

### 5. Documentation & Media Producer

- Federführung beim Verfassen des 10-seitigen Berichts basierend auf den Zuarbeiten des Teams.
- Erstellung der 10-seitigen Präsentation für das Modul 106.
- Produktion und Schnitt des Präsentationsvideos (50% der Note).
- Einholen von Screenshots und Beweisdokumenten für die technische Umsetzung.

## Alanos GmbH:

### 1. Einleitung und Zielsetzung

Ziel dieses Projekts war die Erstellung einer relationalen Datenbank für die Alanos GmbH. Die Firma ist in fünf Kernabteilungen gegliedert:

- Geschäftsleitung
- Mitarbeiter
- Finanzen
- Marketing
- Produktion
- Service und Verkauf

Die Datenbank wurde so konzipiert, dass sie alle Bedürfnisse der Mitarbeiter abdeckt und Redundanzen durch ein sauberes Tabellendesign vermeidet.

### 2. Datenbankdesign und Normalisierung

Um die Anforderungen zu erfüllen, wurde ein relationales Modell entworfen. Als Produktfokus wurden **Getränkedosen** gewählt, was eine logische Verknüpfung zwischen der Produktion (Herstellung) und dem Verkauf (Absatz) ermöglicht.

#### Tabellenstruktur

- **Abteilung & Rollen:** Trennung der organisatorischen Einheiten zur Vermeidung von Redundanz.
- **Personalstamm:** Speicherung der Mitarbeiterdaten mit Verknüpfung zur jeweiligen Abteilung.
- **Produktkatalog:** Verwaltung der verschiedenen Dosengetränke (Sorten, Preise, Volumen).
- **Produktion & Chargen:** Protokollierung der Herstellungsprozesse, um die Anforderungen der Produktionsabteilung abzubilden.
- **Absatz/Verkauf:** Erfassung der Transaktionen für die Abteilung Service und Verkauf.

### 3. Rechtematrix (Security-Konzept)

Ein wesentlicher Teil der Aufgabe war die Erarbeitung einer Rechtematrix für die Bearbeitung der Datenbank. Diese stellt sicher, dass Abteilungen nur auf Daten zugreifen, die für ihre Rolle relevant sind.

| Abteilung            | Leserechte (SELECT) | Schreibrechte (INSERT/UPDATE) | Besonderheiten                          |
| -------------------- | ------------------- | ----------------------------- | --------------------------------------- |
| **Geschäftsleitung** | Global              | Global                        | Volle administrative Kontrolle.         |
| **Finanzen**         | Global              | Finanzen & Löhne              | Einsicht in Umsätze und Personalkosten. |
| **Produktion**       | Produkte & Chargen  | Chargenprotokolle             | Fokus auf Herstellungsdaten.            |
| **Verkauf**          | Produkte & Verkäufe | Verkaufstransaktionen         | Zugriff auf Kunden- und Bestelldaten.   |

Die technische Umsetzung erfolgte mittels der Befehle `GRANT` und `REVOKE` in MySQL.

### 4. Datenerfassung und Qualitätssicherung

Die Tabellen wurden mit jeweils 10 vollständigen Einträgen befüllt. Dies ermöglichte die Simulation eines realen Betriebszustands und das Testen komplexer Abfragen.

### 5. Backup- und Recovery-Konzept

Zur Sicherung der Datenkontinuität wurde ein Backup-Verfahren erarbeitet:

- **Sicherung:** Sowohl die Datenstruktur (DDL) als auch die Inhalte (DML) werden gesichert.
- **Speicherort:** Die Sicherungsdateien werden auf einem dedizierten Share abgelegt.
- **Methode:** Einsatz von `mysqldump` zur Erstellung konsistenter SQL-Snapshots.

### 6. Datenanalyse (Abfragen)

Mittels `INNER JOIN` wurden Abfragen realisiert, die Daten über mehrere Tabellen hinweg verknüpfen. Dies dient dazu, dem Plenum komplexe Zusammenhänge (z.B. welcher Mitarbeiter in welcher Abteilung welchen Umsatz generiert hat) anschaulich zu präsentieren.

### 7. Fazit und Reflexion

Das Projekt zeigt auf, wie eine saubere Normalisierung die Datenintegrität in einem mittelständischen Unternehmen wie der Alanos GmbH sichert. Die grösste Herausforderung lag in der granularen Rechtevergabe, um den Datenschutz (insbesondere bei Lohndaten) zu gewährleisten.

## Agregatsfunktionen

[Link zur Aufgabe](./sql/aggregatsfunktionen.sql)