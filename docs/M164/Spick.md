## 1. Grundkonzepte & Glossar

| Begriff                  | Erklärung                                                                                                                         |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------- |
| **DBMS**                 | **D**aten**b**ank**m**anagement**s**ystem: Software zur Verwaltung von Datenbanken (z.B. MySQL, MariaDB).                         |
| **Relationale DB**       | Daten werden in Tabellen (Relationen) gespeichert, die miteinander in Beziehung stehen.                                           |
| **Relation / Tabelle**   | Eine Sammlung von zusammengehörigen Daten, organisiert in Zeilen und Spalten.                                                     |
| **Tupel / Datensatz**    | Eine einzelne Zeile in einer Tabelle, repräsentiert ein Objekt (z.B. ein Kunde).                                                  |
| **Attribut / Spalte**    | Eine einzelne Spalte in einer Tabelle, beschreibt eine Eigenschaft eines Objekts (z.B. `Vorname`).                                |
| **Primärschlüssel (PK)** | Ein oder mehrere Attribute, die einen Datensatz innerhalb einer Tabelle **eindeutig** identifizieren. Darf **nicht** `NULL` sein. |
| **Fremdschlüssel (FK)**  | Ein Attribut in einer Tabelle, das auf den Primärschlüssel einer anderen Tabelle verweist. Stellt Beziehungen her.                |
| **Redundanz**            | Mehrfache Speicherung derselben Information. Führt zu Anomalien und sollte vermieden werden.                                      |
| **Anomalie**             | Dateninkonsistenzen, die durch Redundanz bei `INSERT`-, `UPDATE`- oder `DELETE`-Operationen entstehen können.                     |
| **ACID-Prinzip**         | Garantiert die Zuverlässigkeit von Transaktionen: **A**tomicity, **C**onsistency, **I**solation, **D**urability.                  |
| **Index**                | Eine Datenstruktur, die das schnelle Nachschlagen von Datensätzen ermöglicht. PKs sind automatisch indiziert.                     |

## 2. Normalisierung

Ziel: Redundanzen reduzieren und Anomalien verhindern.

| Normalform              | Regel                                                                                                                             | Vorgehen / Ziel                                                                                                                                 |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| **1. Normalform (1NF)** | Alle Attributwerte müssen **atomar** sein.                                                                                        | Jede Zelle enthält nur einen Wert. Keine Listen oder wiederholenden Gruppen in einer Spalte. Erfordert eindeutigen PK.                          |
| **2. Normalform (2NF)** | 1NF muss erfüllt sein. Jedes Nicht-Schlüssel-Attribut muss vom **gesamten** Primärschlüssel voll funktional abhängig sein.        | Gilt nur bei zusammengesetzten PKs. Attribute, die nur von _einem Teil_ des PK abhängen, werden in eine separate Tabelle ausgelagert.           |
| **3. Normalform (3NF)** | 2NF muss erfüllt sein. Kein Nicht-Schlüssel-Attribut darf von einem anderen Nicht-Schlüssel-Attribut **transitiv** abhängig sein. | Attribute, die nicht direkt vom PK, sondern von einem anderen Attribut abhängen, werden in eine separate Tabelle ausgelagert (z.B. PLZ -> Ort). |

## 3. MySQL Datentypen (Auswahl)

| Kategorie            | Typen                             | Beschreibung & Verwendung                                                                             |
| -------------------- | --------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Ganze Zahlen**     | `TINYINT`, `INT`, `BIGINT`        | Für IDs, Zähler, Alter. `AUTO_INCREMENT` nur für Ganzzahlen.                                          |
| **Dezimalzahlen**    | `DECIMAL(p, s)`                   | Exakte Festkommazahl. **Für Geldwerte verwenden!** `p`: anzahl Ziffern, `s`: anzahl Nachkommastellen. |
| **Gleitkommazahlen** | `FLOAT`, `DOUBLE`                 | Ungenaue Näherungswerte. Für Messwerte, aber **nicht** für Finanzen.                                  |
| **Text (Zeichen)**   | `CHAR(n)`                         | Feste Länge von `n` Zeichen. Für feste Kürzel (z.B. `CH` für Schweiz).                                |
| **Text (Zeichen)**   | `VARCHAR(n)`                      | Variable Länge bis max. `n` Zeichen. Für Namen, Adressen, Titel.                                      |
| **Text (Zeichen)**   | `TEXT`                            | Für sehr lange Texte wie Beschreibungen oder Artikel.                                                 |
| **Datum & Zeit**     | `DATE`                            | Nur Datum (`YYYY-MM-DD`).                                                                             |
| **Datum & Zeit**     | `TIME`                            | Nur Uhrzeit (`HH:MM:SS`).                                                                             |
| **Datum & Zeit**     | `DATETIME` / `TIMESTAMP`          | Datum und Uhrzeit kombiniert. `TIMESTAMP` wird bei Änderungen oft automatisch aktualisiert.           |
| **Logische Werte**   | `BOOLEAN` (in MySQL `TINYINT(1)`) | Für Wahr/Falsch-Werte (`0` für `FALSE`, `1` für `TRUE`).                                              |
| **Spezial (MySQL)**  | `ENUM('val1', 'val2', ...)`       | Erlaubt nur Werte aus einer vordefinierten Liste. Effizienter als `VARCHAR`.                          |

## 4. SQL Sprachbefehle

### DDL - Data Definition Language (Struktur)

| Befehl            | Beispiel & Erklärung                                                                                          |
| ----------------- | ------------------------------------------------------------------------------------------------------------- |
| `CREATE DATABASE` | `CREATE DATABASE IF NOT EXISTS mein_projekt;` (Erstellt eine neue Datenbank)                                  |
| `USE`             | `USE mein_projekt;` (Wählt die Datenbank für die folgenden Befehle aus)                                       |
| `DROP DATABASE`   | `DROP DATABASE IF EXISTS mein_projekt;` (Löscht die Datenbank und alle Inhalte)                               |
| `CREATE TABLE`    | `CREATE TABLE benutzer (id INT PRIMARY KEY, name VARCHAR(100));` (Erstellt eine neue Tabelle)                 |
| `ALTER TABLE`     | `ALTER TABLE benutzer ADD COLUMN email VARCHAR(100) NOT NULL;` (Ändert eine Tabelle, hier: Spalte hinzufügen) |
| `ALTER TABLE`     | `ALTER TABLE benutzer DROP COLUMN email;` (Spalte entfernen)                                                  |
| `ALTER TABLE`     | `ALTER TABLE benutzer MODIFY name VARCHAR(150);` (Spaltentyp ändern)                                          |
| `DROP TABLE`      | `DROP TABLE IF EXISTS benutzer;` (Löscht eine Tabelle)                                                        |

### DML - Data Manipulation Language (Daten)

| Befehl        | Beispiel & Erklärung                                                                             |
| ------------- | ------------------------------------------------------------------------------------------------ |
| `INSERT INTO` | `INSERT INTO benutzer (id, name) VALUES (1, 'Max Mustermann');` (Fügt einen neuen Datensatz ein) |
| `UPDATE`      | `UPDATE benutzer SET name = 'Maximilian M.' WHERE id = 1;` (Ändert bestehende Datensätze)        |
| `DELETE FROM` | `DELETE FROM benutzer WHERE id = 1;` (Löscht Datensätze)                                         |

### DQL - Data Query Language (Abfragen)

Die `SELECT` Anweisung hat eine feste Reihenfolge der Klauseln:
`SELECT ... FROM ... JOIN ... ON ... WHERE ... GROUP BY ... HAVING ... ORDER BY ... LIMIT ...`

| Klausel    | Beispiel & Erklärung                                                                                 |
| ---------- | ---------------------------------------------------------------------------------------------------- |
| `SELECT`   | `SELECT name, email` (Definiert die Spalten, die zurückgegeben werden. `*` für alle Spalten)         |
| `FROM`     | `FROM benutzer` (Gibt die Tabelle an, aus der gelesen wird)                                          |
| `WHERE`    | `WHERE alter > 18 AND stadt = 'Bern'` (Filtert die Zeilen basierend auf Bedingungen)                 |
| `GROUP BY` | `GROUP BY stadt` (Fasst Zeilen mit demselben Wert in einer Spalte zu einer einzigen Zeile zusammen)  |
| `HAVING`   | `HAVING COUNT(*) > 10` (Filtert die Ergebnisse **nach** der Gruppierung, oft mit Aggregatfunktionen) |
| `ORDER BY` | `ORDER BY name ASC, alter DESC` (Sortiert die Ergebnisse. `ASC` = aufsteigend, `DESC` = absteigend)  |
| `LIMIT`    | `LIMIT 10 OFFSET 5` (Begrenzt die Anzahl der zurückgegebenen Zeilen. `OFFSET` für Paginierung)       |

## 5. Wichtige Operatoren, Joins & Constraints

### Operatoren in `WHERE`

| Operator                                  | Erklärung                                                                         |
| ----------------------------------------- | --------------------------------------------------------------------------------- |
| `=`, `!=` oder `<>`, `>`, `<`, `>=`, `<=` | Standard-Vergleichsoperatoren.                                                    |
| `BETWEEN x AND y`                         | Wert liegt im Bereich von x bis y (inklusiv).                                     |
| `IN ('a', 'b', 'c')`                      | Wert muss in der Liste enthalten sein.                                            |
| `LIKE 'M%r'`                              | Mustervergleich. `%` steht für beliebig viele Zeichen, `_` für genau ein Zeichen. |
| `IS NULL` / `IS NOT NULL`                 | Prüft, ob ein Feld leer ist.                                                      |
| `AND`, `OR`, `NOT`                        | Logische Verknüpfung von Bedingungen.                                             |

### JOIN-Typen

| Typ               | Erklärung                                                                                                                                                                        |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `INNER JOIN`      | Gibt nur Datensätze zurück, bei denen der Schlüssel in **beiden** Tabellen existiert.                                                                                            |
| `LEFT JOIN`       | Gibt **alle** Datensätze der **linken** Tabelle zurück, plus die passenden aus der rechten. Wenn kein passender Datensatz rechts gefunden wird, sind die rechten Spalten `NULL`. |
| `RIGHT JOIN`      | Gibt **alle** Datensätze der **rechten** Tabelle zurück, plus die passenden aus der linken. Wenn kein passender Datensatz links gefunden wird, sind die linken Spalten `NULL`.   |
| `FULL OUTER JOIN` | Gibt **alle** Datensätze **beider** Tabellen zurück. Wenn es auf einer Seite keine Entsprechung gibt, werden die Spalten der anderen Tabelle mit `NULL` aufgefüllt.              |
| `CROSS JOIN`      | Gibt **alle Kombinationen** jeder Zeile der linken Tabelle mit jeder Zeile der rechten Tabelle zurück (kartesisches Produkt).                                                    |
| `SELF JOIN`       | Verknüpft eine Tabelle mit **sich selbst**. Dies wird wie ein normaler Join behandelt, indem die Tabelle über Aliase (z. B. `T1` und `T2`) zweifach angesprochen wird.           |

### Constraints (Datenintegrität)

Constraints können direkt bei `CREATE TABLE` (inline) oder nachträglich mit `ALTER TABLE` hinzugefügt werden.

| Constraint              | Erklärung & Syntax-Beispiele                                                                                                                              |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `PRIMARY KEY`           | Eindeutiger Identifikator für einen Datensatz. `id INT PRIMARY KEY`                                                                                       |
| `FOREIGN KEY`           | Stellt eine Beziehung zu einer anderen Tabelle her.`CONSTRAINT fk_name FOREIGN KEY (spalte_a) REFERENCES andere_tabelle(spalte_b)`                        |
| `UNIQUE`                | Stellt sicher, dass alle Werte in einer Spalte eindeutig sind (z.B. E-Mail). `email VARCHAR(100) UNIQUE`                                                  |
| `NOT NULL`              | Erzwingt, dass eine Spalte immer einen Wert enthalten muss. `name VARCHAR(100) NOT NULL`                                                                  |
| `CHECK`                 | Überprüft, ob ein Wert eine bestimmte Bedingung erfüllt. `alter > 18 CHECK (alter >= 18)`                                                                 |
| `DEFAULT`               | Setzt einen Standardwert, wenn beim `INSERT` kein Wert angegeben wird. `aktiv BOOLEAN DEFAULT TRUE`                                                       |
| `ON UPDATE / ON DELETE` | Aktionen für Fremdschlüssel: `RESTRICT` (Standard, verhindert Aktion), `CASCADE` (gibt Aktion an Kind-Datensätze weiter), `SET NULL` (setzt FK auf NULL). |

## 6. Transaktionen & ACID-Prinzip

Eine Transaktion ist eine Folge von SQL-Befehlen, die als **eine einzige logische Einheit** behandelt wird. Sie folgt dem Alles-oder-nichts-Prinzip.

### Das ACID-Konzept

Jede zuverlässige Datenbank muss diese vier Eigenschaften garantieren:

- **A**tomicity (Atomarität): Entweder werden **alle** Befehle der Transaktion erfolgreich ausgeführt oder **keiner**.
- **C**onsistency (Konsistenz): Die Datenbank ist nach der Transaktion wieder in einem gültigen Zustand.
- **I**solation (Isolation): Gleichzeitige Transaktionen beeinflussen sich nicht gegenseitig.
- **D**urability (Dauerhaftigkeit): Einmal bestätigte Daten bleiben auch bei einem Systemabsturz erhalten.

### Transaktionssteuerung in SQL

| Befehl                 | Erklärung                                                                                                                             |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `START TRANSACTION`    | Markiert den Beginn einer Transaktion. Ab hier werden Änderungen "vorläufig" vorgenommen.                                             |
| `COMMIT`               | Schließt die Transaktion ab und speichert alle Änderungen **permanent** in der Datenbank.                                             |
| `ROLLBACK`             | Bricht die Transaktion ab und macht **alle** Änderungen seit dem Start rückgängig.                                                    |
| `SET autocommit = 0/1` | In MySQL ist `autocommit` meistens `1` (an). Jeder Befehl wird sofort gespeichert. Für Transaktionen muss man es oft manuell steuern. |

## 7. Umfassendes MySQL Beispiel-Skript

Dieses Skript zeigt einen kompletten Lebenszyklus: Datenbank erstellen, Tabellen mit Beziehungen definieren, Daten laden, eine Tabelle ändern und eine komplexe Abfrage ausführen.

```sql
-- ========= 1. SETUP: DATENBANK ERSTELLEN =========
-- Löscht die Datenbank, falls sie existiert, für einen sauberen Start
DROP DATABASE IF EXISTS firma_db;

-- Erstellt die neue Datenbank
CREATE DATABASE firma_db;

-- Wählt die Datenbank für die folgenden Befehle aus
USE firma_db;

-- ========= 2. DDL: TABELLEN ERSTELLEN =========
-- Tabelle für Mitarbeiter
CREATE TABLE mitarbeiter (
    mitarbeiter_id INT AUTO_INCREMENT PRIMARY KEY,
    vorname VARCHAR(50) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    position VARCHAR(50) DEFAULT 'Mitarbeiter',
    eintrittsdatum DATE
);

-- Tabelle für Projekte
CREATE TABLE projekte (
    projekt_id INT AUTO_INCREMENT PRIMARY KEY,
    projekt_name VARCHAR(100) NOT NULL UNIQUE,
    budget DECIMAL(12, 2) CHECK (budget > 0)
);

-- Verknüpfungstabelle: Welcher Mitarbeiter arbeitet an welchem Projekt? (n:m Beziehung)
CREATE TABLE projekt_zuweisung (
    zuweisung_id INT AUTO_INCREMENT PRIMARY KEY,
    mitarbeiter_id INT NOT NULL,
    projekt_id INT NOT NULL,
    rolle VARCHAR(50),

    -- Fremdschlüssel-Constraint zur 'mitarbeiter'-Tabelle
    CONSTRAINT fk_zuweisung_mitarbeiter
        FOREIGN KEY (mitarbeiter_id) REFERENCES mitarbeiter(mitarbeiter_id)
        ON DELETE CASCADE, -- Wenn ein Mitarbeiter gelöscht wird, wird auch seine Zuweisung gelöscht

    -- Fremdschlüssel-Constraint zur 'projekte'-Tabelle
    CONSTRAINT fk_zuweisung_projekt
        FOREIGN KEY (projekt_id) REFERENCES projekte(projekt_id)
        ON DELETE RESTRICT -- Verhindert das Löschen eines Projekts, solange Mitarbeiter zugewiesen sind
);

-- ========= 3. DML: DATEN EINFÜGEN =========
INSERT INTO mitarbeiter (vorname, nachname, position, eintrittsdatum) VALUES
('Anna', 'Schmid', 'Projektleiterin', '2020-08-15'),
('Ben', 'Meier', 'Entwickler', '2021-03-01'),
('Carla', 'Keller', 'Designerin', '2022-11-20'),
('David', 'Weber', 'Entwickler', '2022-01-10');

INSERT INTO projekte (projekt_name, budget) VALUES
('Redesign Webseite', 50000.00),
('Mobile App', 120000.00),
('Internes Tool', 30000.00);

INSERT INTO projekt_zuweisung (mitarbeiter_id, projekt_id, rolle) VALUES
(1, 1, 'Leitung'),       -- Anna leitet Redesign Webseite
(2, 1, 'Backend'),       -- Ben arbeitet an Redesign Webseite
(3, 1, 'UI/UX'),         -- Carla arbeitet an Redesign Webseite
(1, 2, 'Leitung'),       -- Anna leitet auch Mobile App
(2, 2, 'Backend'),       -- Ben arbeitet an Mobile App
(4, 2, 'Frontend');      -- David arbeitet an Mobile App

-- ========= 4. DDL: TABELLE NACHTRÄGLICH ÄNDERN =========
-- Fügt eine neue Spalte 'status' zur Projekte-Tabelle hinzu
ALTER TABLE projekte
ADD COLUMN status ENUM('geplant', 'in arbeit', 'abgeschlossen') DEFAULT 'geplant';

-- ========= 5. DML: MASSENIMPORT (LOAD DATA) =========
-- Annahme: Wir haben eine CSV-Datei 'neue_mitarbeiter.csv' mit den Spalten: vorname,nachname,position
-- WICHTIG: Der Pfad muss für dein System korrekt sein und MySQL muss die Berechtigung haben, die Datei zu lesen.
SET GLOBAL local_infile = 1; -- Muss evtl. aktiviert werden
LOAD DATA LOCAL INFILE '/path/to/your/neue_mitarbeiter.csv'
INTO TABLE mitarbeiter
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(vorname, nachname, position)

-- ========= 6. DQL: KOMPLEXE ABFRAGE =========
-- Frage: Zeige alle Projekte, die mehr als einen Mitarbeiter haben.
-- Liste den Projektnamen, das Budget und die Anzahl der zugewiesenen Mitarbeiter auf.
-- Sortiere nach der Anzahl der Mitarbeiter absteigend.
SELECT
    p.projekt_name,
    p.budget,
    COUNT(pz.mitarbeiter_id) AS anzahl_mitarbeiter
FROM projekte p
JOIN projekt_zuweisung pz ON p.projekt_id = pz.projekt_id
GROUP BY p.projekt_id -- Gruppiere nach der Projekt-ID, um pro Projekt zu zählen
HAVING anzahl_mitarbeiter > 1 -- Filtere die Gruppen, um nur die mit >1 Mitarbeiter zu zeigen
ORDER BY anzahl_mitarbeiter DESC;
```
