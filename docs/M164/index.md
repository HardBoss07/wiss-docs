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