# Modul 164

## 3 Normalformen

**1. Normalform (1NF)**
-> keine mehrfachen Werte oder Wiederholungsgruppen.
Jede Zelle hat **nur einen Wert**.

**2. Normalform (2NF)**
-> erfüllt 1NF **&** alle Nicht-Schlüsselattribute hängen **voll** vom Primärschlüssel ab.
Keine Abhängigkeit von nur einem Teil eines zusammengesetzten Schlüssels.

**3. Normalform (3NF)**
-> erfüllt 2NF **&** keine **transitiven Abhängigkeiten** (Nicht-Schlüssel hängt nicht von anderem Nicht-Schlüssel ab).

## 164-1A SideQuest:

**1. Kunde <-> Kontakt**

- Kardinalität falsch -> 1:m statt 1:1
- Kunde hat meist _einen_ Kontakt
- Fix: auf 1:1 ändern

**2. Kunde & Kontakt**

- doppelte Attribute (Name, Adresse)
- verletzt 3. NF
- Fix: Name/Adresse nur in _einer_ Entität lassen

**3. Bestellung <-> Software**

- `SoftwareID` direkt in Bestellung -> nur 1 Software pro Bestellung
- Fix: neue Entität _Bestellposition_ (`BestellungID`, `SoftwareID`, Menge, Preis)

**4. Software <-> Plattform**

- aktuell 1:m -> falsch
- Software kann mehrere Plattformen haben
- Fix: Zwischentabelle _Software_Plattform_

**5. Bewertung**

- keine Kardinalität
- unklar ob Kunde mehrfach bewerten darf
- Fix: 1 Kunde = 1 Bewertung pro Software
  -> Unique (KundeID, SoftwareID)

## 164-1B SideQuest:

### **1. Gängige Speicherarten**

- **Festplatten (HDD/SSD)** -> Computer, Server
- **USB-Sticks & SD-Karten** -> mobile Datenträger
- **Cloud-Speicher** -> z.B. Google Drive, iCloud, Dropbox
- **Optische Datenträger** -> CD, DVD, Blu-ray
- **Magnetbänder** -> Backups in Rechenzentren
- **Papierform** -> Dokumente, Verträge

### **2. Probleme / Nachteile**

- **HDD/SSD:** mechanische Defekte, Datenverlust, begrenzte Schreibzyklen
- **USB/SD:** leicht verlierbar, empfindlich gegenüber Strom/Hitze
- **Cloud:** Datenschutz, Abhängigkeit vom Anbieter, Internet nötig
- **CD/DVD:** Kratzer, Alterung, begrenzte Speicherkapazität
- **Magnetband:** langsamer Zugriff, spezielle Geräte nötig
- **Papier:** Platzbedarf, empfindlich gegen Feuer/Wasser

### **3. Lebensdauer (ungefähr)**

- **HDD:** 5-10 Jahre
- **SSD:** 5-10 Jahre
- **USB/SD:** 5-10 Jahre
- **CD/DVD:** 5-30 Jahre (je nach Qualität)
- **Magnetband:** 10-30 Jahre
- **Papier:** Jahrzehnte bis Jahrhunderte (bei richtiger Lagerung)

## 164-1C SideQuest:

### 1. Speicherarten nach Zeitdauer

Kurzfristig (0-5 Jahre):

- SSDs, HDDs, USB-Sticks
- Schnell, günstig, leicht zugänglich
- Risiko: Ausfall, Datenkorruption, technische Veraltung

Mittelfristig (5-20 Jahre):

- Externe Festplatten, optische Medien (Blu-ray M-Disc)
- Relativ stabil bei richtiger Lagerung
- Risiko: Lesegeräte verschwinden (z.B. kein DVD-Laufwerk mehr)

Langfristig (20-50+ Jahre):

- Magnetbänder (LTO), Archiv-Optical-Discs, Cloud-Archive
- Sehr langlebig, speziell für Backups gedacht
- Risiko: Format-/Softwareveraltung, Lesegeräte müssen erhalten bleiben

### 2. Empfohlene Kombination für EDUGAME AG

- Primärspeicher: Cloud + lokale Festplatten (aktiver Zugriff)
- Archivspeicher: Magnetbänder oder M-Discs (Langzeitarchiv)
- Zusatz: Regelmässige Datenmigration auf neue Systeme

### 3. Begründung

- Cloud: einfache Verteilung, Zugriff weltweit, Redundanz
- Lokale Backups: Schutz vor Cloud-Ausfällen
- Langzeitmedien: sichern Daten auch bei Technologiewechseln

## 164-1D SideQuest:

DBMS = Software zur Speicherung, Verwaltung & Abfrage von Daten in strukturierter Form (z.B. Tabellen).
Ziel: Daten sicher, effizient & konsistent verwalten.

### Vergleich der Systeme

| DBMS              | Typ / Einsatz                      | Speicherung                           | Vorteile                                          | Nachteile                                   |
| ----------------- | ---------------------------------- | ------------------------------------- | ------------------------------------------------- | ------------------------------------------- |
| MSSQL (Microsoft) | kommerziell, oft in Unternehmen    | Daten auf Server, proprietäres Format | sehr stabil, gute Integration in Microsoft-Umfeld | Lizenzkosten, läuft meist nur unter Windows |
| MySQL (Oracle)    | Open Source, weit verbreitet (Web) | Dateien im MyISAM oder InnoDB-Format  | schnell, einfach, gut dokumentiert                | eingeschränkte Features in Gratisversion    |
| SQLite            | leichtgewichtig, lokal             | alles in einer Datei gespeichert      | kein Server nötig, ideal für kleine Projekte      | kein Multiuser-Zugriff, weniger sicher      |
| MariaDB           | Fork von MySQL, Open Source        | wie MySQL (kompatibel)                | schneller, offen, aktiv weiterentwickelt          | teils kleinere Unterschiede zu MySQL        |

### 3. Speicherung allgemein

- Serverbasierte DBMS (MSSQL, MySQL, MariaDB): speichern Daten in speziellen Systemverzeichnissen als Datenfiles (.ibd, .frm etc.).
- Dateibasierte DBMS (SQLite): speichert alles in einer einzigen Datenbankdatei (.sqlite, .db).

## 164-3B SideQuest:

[Link zur SQL Datei](/docs/M164/sql/164-3B.sql)

## 164-3C SideQuest:

[Link zur SQL Datei](/docs/M164/sql/164-3C.sql)

## 164-4A SideQuest:

[Link zur SQL Datei](/docs/M164/sql/164-4A.sql)

## 164-6B SideQuest

### 1. Cross Join

Zweck:

- Liefert das kartesische Produkt von zwei Tabellen (jede Kombination aus Zeilen).
- Wird selten produktiv genutzt, eher für Tests oder Analysen aller möglichen Kombinationen.

Syntax:

```sql
SELECT *
FROM tabelle1
CROSS JOIN tabelle2;
```

Beispiele:

- Auslesen: Alle Kombinationen von Mitarbeitern und Projekten

```sql
SELECT e.firstname, e.name AS lastname, p.name AS project_name
FROM employee e
CROSS JOIN project p;
```

- DELETE: Cross Join wird normalerweise nicht zum Löschen genutzt.

### 2. Theta Join

Zweck:

- Verknüpft Tabellen über beliebige Vergleichsoperatoren (=, <, >, <=, >=, <>).
- Flexibler als Inner Join.

Syntax:

```sql
SELECT *
FROM tabelle1 t1, tabelle2 t2
WHERE t1.spalte OPERATOR t2.spalte;
```

Beispiele:

- Auslesen: Alle Projekte, deren `project_id` kleiner ist als `employee_id` eines Mitarbeiters

```sql
SELECT e.firstname, e.name AS lastname, p.name AS project_name
FROM employee e, project p
WHERE p.project_id < e.employee_id;
```

- DELETE:

```sql
DELETE a
FROM assignment a, project p
WHERE a.project_id = p.project_id AND p.project_head = 2;
```

### 3. Inner Join

Zweck:

- Liefert nur Zeilen, die in beiden Tabellen übereinstimmende Werte haben.

Syntax:

```sql
SELECT t1.spalte, t2.spalte
FROM tabelle1 t1
INNER JOIN tabelle2 t2
ON t1.gemeinsame_spalte = t2.gemeinsame_spalte;
```

Beispiele:

- SELECT: Alle Mitarbeiter mit ihren Abteilungen

```sql
SELECT e.firstname, e.name AS lastname, d.name AS department
FROM employee e
INNER JOIN department d
ON e.department = d.department_id;
```

- DELETE: Lösche Assignments eines Projektleiters

```sql
DELETE a
FROM assignment a
INNER JOIN project p
ON a.project_id = p.project_id
WHERE p.project_head = 1;
```

- UPDATE: Setze employment auf 100% für Development-Mitarbeiter

```sql
UPDATE employee e
INNER JOIN department d
ON e.department = d.department_id
SET e.employment = 100
WHERE d.name = 'Development';
```

### 4. Natural Join

Zweck:

- Join über alle Spalten mit gleichem Namen automatisch.
- Keine explizite ON-Bedingung nötig.

Syntax:

```sql
SELECT *
FROM tabelle1
NATURAL JOIN tabelle2;
```

Beispiele:

- SELECT: Alle Employee-Salary-Daten

```sql
SELECT e.firstname, e.name AS lastname, s.amount
FROM employee e
NATURAL JOIN employee_salary es
NATURAL JOIN salary s;
```

### 5. Outer Join (Left, Right, Full)

Zweck:

- Liefert alle Zeilen einer Tabelle auch wenn keine passenden Zeilen in der anderen Tabelle existieren.
- Left Join: alle Zeilen der linken Tabelle + passende rechte Zeilen
- Right Join: alle Zeilen der rechten Tabelle + passende linke Zeilen
- Full Join: alle Zeilen beider Tabellen

Syntax (Left Join Beispiel):

```sql
SELECT e.firstname, e.name AS lastname, d.name AS department
FROM employee e
LEFT JOIN department d
ON e.department = d.department_id;
```

Beispiele:

- SELECT: Alle Mitarbeiter + Abteilung (inkl. unzugeordnete Mitarbeiter)

```sql
SELECT e.firstname, e.name AS lastname, d.name AS department
FROM employee e
LEFT JOIN department d
ON e.department = d.department_id;
```

- DELETE: selten, kann aber z.B. alle Mitarbeiter ohne Abteilung markieren.

### 6. Self Join

Zweck:

- Tabelle wird mit sich selbst verknüpft.
- Praktisch z.B. für Hierarchien oder Vergleich von Datensätzen innerhalb derselben Tabelle.

Syntax:

```sql
SELECT a.firstname AS emp1, b.firstname AS emp2
FROM employee a
INNER JOIN employee b
ON a.manager_id = b.employee_id;
```

Beispiele:

- SELECT: Mitarbeiter und ihr Vorgesetzter

```sql
SELECT e1.firstname AS employee, e2.firstname AS manager
FROM employee e1
LEFT JOIN employee e2
ON e1.department = e2.department AND e1.employee_id <> e2.employee_id;
```

### 7. Union

Zweck:

- Kombiniert Ergebnisse mehrerer SELECTs zu einem Ergebnis.
- Alle SELECTs müssen die gleiche Anzahl Spalten und kompatible Datentypen haben.

Syntax:

```sql
SELECT spalte1, spalte2 FROM tabelle1
UNION
SELECT spalte1, spalte2 FROM tabelle2;
```

Beispiele:

- SELECT: Alle Usernames aus `user` und `customeraccount`

```sql
SELECT username FROM user
UNION
SELECT username FROM customeraccount;
```

- DELETE: Union kann nicht direkt für DELETE genutzt werden.

## 164-7A SideQuest:

- Spiel

  - spiel_id (INT, PK, AI, NN)
  - name (VARCHAR(100), UN, NN)
  - beschreibung_de (TEXT, NN)
  - beschreibung_en (TEXT, NN)
  - infrastruktur_bedarf (ENUM('basic', 'normal', 'full'), NN)
  - altersgruppe (ENUM('5-7', '8-12', '14-18'), NN)
  - teambildung_moeglich (BOOLEAN, NN)
  - kosten (DECIMAL(10,2), NN)
  - einfuehrungsdatum (DATE, NN)
  - thema_id (INT, FK1, NN): Verweis auf `Thema(thema_id)`

- Thema

  - thema_id (INT, PK, AI, NN)
  - bezeichnung (VARCHAR(50), UN, NN)

- Teilnehmer

  - teilnehmer_id (INT, PK, AI, NN)
  - username (VARCHAR(50), UN, NN)
  - vorname (VARCHAR(50), NN)
  - nachname (VARCHAR(50), NN)
  - spieler_alter (INT, NN)
  - email (VARCHAR(100), UN, NN)
  - telefon (VARCHAR(20), NN)

- Team

  - team_id (INT, PK, AI, NN)
  - teamname (VARCHAR(50), UN, NN)

- Adresse

  - adresse_id (INT, PK, AI, NN)
  - strasse (VARCHAR(100), NN)
  - hausnummer (VARCHAR(10))
  - plz (VARCHAR(10), NN)
  - ort (VARCHAR(100), NN)
  - land (VARCHAR(50), NN)

- Location

  - location_id (INT, PK, AI, NN)
  - name (VARCHAR(100), NN)
  - infrastruktur_vorhanden (ENUM('basic', 'normal', 'full'), NN)
  - adresse_id (INT, FK1, NN): Verweis auf `Adresse(adresse_id)`

- Durchfuehrung

  - durchfuehrung_id (INT, PK, AI, NN)
  - datum (DATETIME, NN)
  - spiel_id (INT, FK1, NN)
  - location_id (INT, FK2, NN)

- Ergebnis

  - ergebnis_id (INT, PK, AI, NN)
  - punktestand (INT, NN)
  - durchfuehrung_id (INT, FK1, NN)
  - teilnehmer_id (INT, FK2, C): (null, wenn Team spielt)
  - team_id (INT, FK3, C): (null, wenn Einzelspieler spielt)

- TeamMitglieder
  - team_id (INT, FK1, NN)
  - teilnehmer_id (INT, FK2, NN)
  - PRIMARY KEY (team_id, teilnehmer_id)

### SQL Skript

[Link zur SQL Datei](/docs/M164/sql/164-7A.sql)

### Beschreibung der Verbindungen

In dieser Notation steht die linke Seite für die Kardinalität der erstgenannten Tabelle und die rechte Seite für die zweitgenannte Tabelle.

- `adresse : location` An einer Adresse kann sich eine Location befinden, eine Location hat genau eine Adresse.
  (1 : MC)
- `thema : spiel` Ein Thema ist in vielen Spielen vorhanden, ein Spiel hat genau ein Thema.
  (1 : MC)
- `spiel : durchfuehrung` Ein Spiel kann oft durchgeführt werden, eine Durchführung betrifft genau ein Spiel.
  (1 : MC)
- `location : durchfuehrung` An einem Standort gibt es viele Durchführungen, eine Durchführung findet an genau einem Standort statt.
  (1 : MC)
- `durchfuehrung : spiel_ergebnis` Eine Durchführung generiert mehrere Ergebnisse (Duelle), ein Ergebnis gehört zu genau einer Durchführung.
  (1 : M)
- `teilnehmer : spiel_ergebnis` Ein Teilnehmer kann viele Ergebnisse erzielen, ein Ergebnis kann optional einem Einzelteilnehmer zugeordnet sein.
  (1 : MC)
- `team : spiel_ergebnis` Ein Team kann viele Ergebnisse erzielen, ein Ergebnis kann optional einem Team zugeordnet sein.
  (1 : MC)
- `team : team_mitglieder` Ein Team hat mehrere Einträge in der Mitgliederliste, ein Listeneintrag gehört zu genau einem Team.
  (1 : M)
- `teilnehmer : team_mitglieder` Ein Teilnehmer kann in mehreren Teams gelistet sein, ein Listeneintrag gehört zu genau einem Teilnehmer.
  (1 : MC)

### Fehlerprotokoll der Datenbereinigung

| Datei                 | Datensatz ID | Fehlerbeschreibung                          |
| --------------------- | ------------ | ------------------------------------------- |
| import_teilnehmer.csv | 14           | Duplikat E-Mail: 'julia.huber@edugames.ch'  |
| import_teilnehmer.csv | 15           | Duplikat E-Mail: 'tim.weber@edugames.ch'    |
| import_teilnehmer.csv | 17           | E-Mail ungültig: ''                         |
| import_teilnehmer.csv | 18           | Duplikat E-Mail: 'beat.schmid@edugames.ch'  |
| import_teilnehmer.csv | 23           | E-Mail ungültig: ''                         |
| import_teilnehmer.csv | 24           | Duplikat E-Mail: 'julia.huber@edugames.ch'  |
| import_teilnehmer.csv | 27           | Alter ist keine Zahl: 'unbekannt'           |
| import_teilnehmer.csv | 28           | Alter ist keine Zahl: 'unbekannt'           |
| import_teilnehmer.csv | 30           | Duplikat E-Mail: 'anna.müller@edugames.ch'  |
| import_teilnehmer.csv | 32           | Duplikat E-Mail: 'beat.schmid@edugames.ch'  |
| import_teilnehmer.csv | 33           | Duplikat E-Mail: 'julia.schmid@edugames.ch' |
| import_teilnehmer.csv | 35           | Duplikat E-Mail: 'anna.müller@edugames.ch'  |
| import_teilnehmer.csv | 36           | E-Mail ungültig: ''                         |
| import_teilnehmer.csv | 37           | Duplikat E-Mail: 'beat.schmid@edugames.ch'  |
| import_teilnehmer.csv | 40           | Duplikat E-Mail: 'elena.meier@edugames.ch'  |
| import_teilnehmer.csv | 41           | Duplikat E-Mail: 'max.suter@edugames.ch'    |
| import_teilnehmer.csv | 42           | Duplikat E-Mail: 'julia.schmid@edugames.ch' |
| import_teilnehmer.csv | 44           | Duplikat E-Mail: 'julia.schmid@edugames.ch' |
| import_teilnehmer.csv | 45           | Duplikat Username: 'user_00'                |
| import_teilnehmer.csv | 46           | Duplikat E-Mail: 'elena.weber@edugames.ch'  |
| import_teilnehmer.csv | 49           | Duplikat E-Mail: 'beat.meier@edugames.ch'   |
| import_teilnehmer.csv | 50           | Alter ist keine Zahl: 'unbekannt'           |
| import_teilnehmer.csv | 51           | Duplikat E-Mail: 'anna.müller@edugames.ch'  |
| import_teilnehmer.csv | 54           | E-Mail ungültig: ''                         |
| import_teilnehmer.csv | 56           | Duplikat E-Mail: 'anna.müller@edugames.ch'  |
| import_teilnehmer.csv | 58           | Duplikat E-Mail: 'sarah.huber@edugames.ch'  |
| import_teilnehmer.csv | 59           | Duplikat E-Mail: 'beat.weber@edugames.ch'   |
| import_teilnehmer.csv | 60           | Duplikat E-Mail: 'elena.suter@edugames.ch'  |
| import_teilnehmer.csv | 61           | Duplikat E-Mail: 'anna.müller@edugames.ch'  |
| import_teilnehmer.csv | 62           | Duplikat E-Mail: 'beat.weber@edugames.ch'   |
| import_teilnehmer.csv | 64           | Duplikat E-Mail: 'elena.keller@edugames.ch' |
| import_teilnehmer.csv | 66           | Duplikat E-Mail: 'max.schmid@edugames.ch'   |
| import_teilnehmer.csv | 67           | Alter ausserhalb Bereich: 250               |
| import_teilnehmer.csv | 68           | Duplikat E-Mail: 'sarah.schmid@edugames.ch' |
| import_teilnehmer.csv | 69           | Duplikat E-Mail: 'elena.schmid@edugames.ch' |
| import_teilnehmer.csv | 70           | Duplikat E-Mail: 'elena.keller@edugames.ch' |
| import_teilnehmer.csv | 71           | Alter ausserhalb Bereich: -10               |
| import_teilnehmer.csv | 72           | Duplikat E-Mail: 'lukas.meier@edugames.ch'  |
| import_teilnehmer.csv | 74           | Duplikat E-Mail: 'elena.meier@edugames.ch'  |
| import_teilnehmer.csv | 75           | Duplikat E-Mail: 'beat.keller@edugames.ch'  |
| import_teilnehmer.csv | 76           | Duplikat E-Mail: 'tim.weber@edugames.ch'    |
| import_teilnehmer.csv | 81           | Duplikat Username: 'user_00'                |
| import_teilnehmer.csv | 82           | E-Mail ungültig: ''                         |
| import_teilnehmer.csv | 83           | Duplikat E-Mail: 'elena.suter@edugames.ch'  |
| import_teilnehmer.csv | 84           | Alter ausserhalb Bereich: -10               |
| import_teilnehmer.csv | 85           | Duplikat E-Mail: 'max.weber@edugames.ch'    |
| import_teilnehmer.csv | 86           | Duplikat E-Mail: 'beat.keller@edugames.ch'  |
| import_teilnehmer.csv | 87           | Duplikat E-Mail: 'sarah.huber@edugames.ch'  |
| import_teilnehmer.csv | 88           | Duplikat E-Mail: 'beat.keller@edugames.ch'  |
| import_teilnehmer.csv | 90           | Duplikat E-Mail: 'beat.suter@edugames.ch'   |
| import_teilnehmer.csv | 91           | Duplikat E-Mail: 'tim.weber@edugames.ch'    |
| import_teilnehmer.csv | 92           | Duplikat E-Mail: 'anna.weber@edugames.ch'   |
| import_teilnehmer.csv | 93           | Alter ausserhalb Bereich: -10               |
| import_teilnehmer.csv | 94           | Duplikat E-Mail: 'beat.schmid@edugames.ch'  |
| import_teilnehmer.csv | 96           | Duplikat E-Mail: 'tim.keller@edugames.ch'   |
| import_teilnehmer.csv | 97           | Duplikat E-Mail: 'sarah.schmid@edugames.ch' |
| import_teilnehmer.csv | 98           | Duplikat E-Mail: 'lukas.müller@edugames.ch' |
| import_teilnehmer.csv | 99           | Duplikat E-Mail: 'max.schmid@edugames.ch'   |
| import_teilnehmer.csv | 100          | Duplikat E-Mail: 'max.weber@edugames.ch'    |
| import_spiel.csv      | 1            | Enum-Fehler: High-End-PC                    |
| import_spiel.csv      | 2            | Datumsfehler: 00.00.2024                    |
| import_spiel.csv      | 4            | Enum-Fehler: High-End-PC                    |
| import_spiel.csv      | 7            | Kostenfehler: gratis                        |
| import_spiel.csv      | 8            | Kostenfehler: -50.0                         |
| import_spiel.csv      | 14           | Kostenfehler: -50.0                         |
| import_spiel.csv      | 16           | Datumsfehler: 00.00.2024                    |
| import_spiel.csv      | 17           | Kostenfehler: -50.0                         |
| import_spiel.csv      | 20           | Enum-Fehler: High-End-PC                    |
| import_spiel.csv      | 24           | Kostenfehler: gratis                        |
| import_spiel.csv      | 27           | Kostenfehler: -50.0                         |
| import_spiel.csv      | 32           | Datumsfehler: 00.00.2024                    |
| import_spiel.csv      | 34           | Datumsfehler: 00.00.2024                    |
| import_spiel.csv      | 39           | Kostenfehler: gratis                        |
| import_spiel.csv      | 40           | Kostenfehler: gratis                        |

## 164-8A SideQuest:

### Tabellen

- Fachgruppe

  - fachgruppe_id (INT, PK, AI, NN)
  - name (VARCHAR(100), UN, NN)
  - Workshop
  - workshop_id (INT, PK, AI, NN)
  - thema (VARCHAR(200), NN)
  - fachgruppe_id (INT, FK1, NN): Verweis auf `Fachgruppe(fachgruppe_id)`
  - Essgewohnheit
  - essgewohnheit_id (INT, PK, AI, NN)
  - typ (ENUM('Vegan', 'Vegi', 'Fleisch', 'ohne Schwein'), UN, NN)

- Mitarbeiter

  - mitarbeiter_id (INT, PK, AI, NN)
  - vorname (VARCHAR(50), NN)
  - nachname (VARCHAR(50), NN)
  - email (VARCHAR(100), UN, NN)
  - fachgruppe_id (INT, FK1, NN): Verweis auf `Fachgruppe(fachgruppe_id)`
  - essgewohnheit_id (INT, FK2, C): Verweis auf `Essgewohnheit(essgewohnheit_id)`

- Feedback

  - feedback_id (INT, PK, AI, NN)
  - frage_1 (TEXT, NN)
  - frage_2 (TEXT, NN)
  - frage_3 (TEXT, NN)
  - mitarbeiter_id (INT, FK1, NN): Verweis auf `Mitarbeiter(mitarbeiter_id)`
  - workshop_id (INT, FK2, NN): Verweis auf `Workshop(workshop_id)`

- Ausflugsziel

  - ziel_id (INT, PK, AI, NN)
  - name (VARCHAR(100), UN, NN)

- Ausflug_Wahl

  - mitarbeiter_id (INT, FK1, NN)
  - ziel_id (INT, FK2, NN)
  - prioritaet (ENUM('1', '2'), NN)
  - PRIMARY KEY (mitarbeiter_id, prioritaet)

- Musikrichtung

  - musik_id (INT, PK, AI, NN)
  - bezeichnung (VARCHAR(50), UN, NN)

- Voting
  - mitarbeiter_id (INT, FK1, PK, NN)
  - musik_id (INT, FK2, NN)

### Beschreibung der Verbindungen

In dieser Notation steht die linke Seite für die Kardinalität der erstgenannten Tabelle und die rechte Seite für die zweitgenannte Tabelle.

- `fachgruppe : workshop` Eine Fachgruppe besucht genau einen Workshop, ein Workshop gehört zu genau einer Fachgruppe.
  (1 : 1)
- `fachgruppe : mitarbeiter` In einer Fachgruppe arbeiten viele Mitarbeiter, ein Mitarbeiter gehört zu genau einer Fachgruppe.
  (1 : MC)
- `essgewohnheit : mitarbeiter` Eine Essgewohnheit kann auf viele Mitarbeiter zutreffen, ein Mitarbeiter hat genau eine deklarierte Gewohnheit.
  (1 : MC)
- `mitarbeiter : feedback` Ein Mitarbeiter gibt genau ein Feedback ab, ein Feedback gehört zu genau einem Mitarbeiter.
  (1 : C)
- `workshop : feedback` Ein Workshop erhält viele Feedbacks, ein Feedback bezieht sich auf genau einen Workshop.
  (1 : MC)
- `mitarbeiter : ausflug_wahl` Ein Mitarbeiter trifft zwei Wahlen (Prio 1 & 2), eine Wahl gehört zu genau einem Mitarbeiter.
  (1 : M)
- `ausflugsziel : ausflug_wahl` Ein Ziel kann von vielen Mitarbeitern gewählt werden, eine Wahl betrifft genau ein Ziel.
  (1 : MC)
- `mitarbeiter : voting` Ein Mitarbeiter darf genau eine Stimme abgeben, eine Stimme gehört zu genau einem Mitarbeiter.
  (1 : C)
- `musikrichtung : voting` Eine Musikrichtung kann viele Stimmen erhalten, eine Stimme ist genau einer Richtung zugeordnet.
  (1 : MC)
