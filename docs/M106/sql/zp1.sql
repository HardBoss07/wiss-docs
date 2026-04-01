-- Aufgabe 1: Datenbank, Tabellen erstellen und Rollen/Rechte vergeben

-- 1.1 Datenbank erstellen und auswählen
DROP DATABASE IF EXISTS ChemieHauser;
CREATE DATABASE ChemieHauser;
USE ChemieHauser;

-- 1.2 Tabellen erstellen
CREATE TABLE Firma (
    FirmaID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Adresse VARCHAR(100),
    PLZ VARCHAR(4),
    Ort VARCHAR(50),
    Mail VARCHAR(100),
    Web VARCHAR(100)
);

CREATE TABLE Personal (
    PersonalID INT AUTO_INCREMENT PRIMARY KEY,
    Vorname VARCHAR(50),
    Nachname VARCHAR(50),
    Funktion VARCHAR(50),
    Status VARCHAR(20) DEFAULT 'Aktiv'
);

CREATE TABLE Bestellungen (
    BestellungID INT AUTO_INCREMENT PRIMARY KEY,
    Datum DATE,
    PersonalID INT,
    Kundenname VARCHAR(100),
    Betrag DECIMAL(10, 2),
    FOREIGN KEY (PersonalID) REFERENCES Personal(PersonalID)
);

-- 1.3 Grunddaten Personal einfügen
INSERT INTO Personal (Vorname, Nachname, Funktion) VALUES
('Peter', 'Hauser', 'CEO'),
('Susanne', 'Schläppi', 'Sekretariat'),
('Hanspeter', 'Meier', 'Administration'),
('Markus', 'Häfeli', 'Verkauf'),
('Dorothea', 'Meister', 'Verkauf'),
('Kurt', 'Langer', 'Verkauf'),
('Martin', 'Neuhauser', 'Verkauf');

-- 1.4 Cleanup für Testing
DROP USER IF EXISTS 'hanspeter.meier'@'localhost', 'kurt.langer'@'localhost', 'peter.ustanov'@'localhost';
DROP ROLE IF EXISTS RolleCEO, RolleSekretariat, RolleAdministration, RolleVerkauf;

-- 1.5 Rollen und User erstellen
CREATE ROLE RolleCEO, RolleSekretariat, RolleAdministration, RolleVerkauf;

GRANT SELECT ON Firma TO RolleAdministration;
GRANT SELECT, INSERT, UPDATE, DELETE ON Personal TO RolleAdministration;
GRANT SELECT, INSERT, UPDATE, DELETE ON Bestellungen TO RolleAdministration;

GRANT SELECT ON Firma TO RolleVerkauf;
GRANT SELECT ON Personal TO RolleVerkauf;
GRANT SELECT, INSERT, UPDATE ON Bestellungen TO RolleVerkauf;

CREATE USER 'hanspeter.meier'@'localhost' IDENTIFIED BY 'Passwort123';
CREATE USER 'kurt.langer'@'localhost' IDENTIFIED BY 'Passwort123';

GRANT RolleAdministration TO 'hanspeter.meier'@'localhost';
GRANT RolleVerkauf TO 'kurt.langer'@'localhost';

SET DEFAULT ROLE RolleAdministration FOR 'hanspeter.meier'@'localhost';
SET DEFAULT ROLE RolleVerkauf FOR 'kurt.langer'@'localhost';

-- Aufgabe 2: Angaben und Berechtigungen ändern

-- 2.1 Hanspeter Meier verlässt, Kurt Langer übernimmt Administration
START TRANSACTION;
    UPDATE Personal SET Status = 'Inaktiv' WHERE Vorname = 'Hanspeter' AND Nachname = 'Meier';
    UPDATE Personal SET Funktion = 'Administration' WHERE Vorname = 'Kurt' AND Nachname = 'Langer';

    REVOKE RolleAdministration FROM 'hanspeter.meier'@'localhost';
    REVOKE RolleVerkauf FROM 'kurt.langer'@'localhost';
    GRANT RolleAdministration TO 'kurt.langer'@'localhost';
    SET DEFAULT ROLE RolleAdministration FOR 'kurt.langer'@'localhost';
COMMIT;

-- 2.2 Peter Ustanov kommt neu, Kurt Langer zurück in Verkauf
START TRANSACTION;
    INSERT INTO Personal (Vorname, Nachname, Funktion) VALUES ('Peter', 'Ustanov', 'Administration');
    UPDATE Personal SET Funktion = 'Verkauf' WHERE Vorname = 'Kurt' AND Nachname = 'Langer';

    CREATE USER 'peter.ustanov'@'localhost' IDENTIFIED BY 'Passwort123';
    GRANT RolleAdministration TO 'peter.ustanov'@'localhost';
    SET DEFAULT ROLE RolleAdministration FOR 'peter.ustanov'@'localhost';

    REVOKE RolleAdministration FROM 'kurt.langer'@'localhost';
    GRANT RolleVerkauf TO 'kurt.langer'@'localhost';
    SET DEFAULT ROLE RolleVerkauf FOR 'kurt.langer'@'localhost';
COMMIT;

-- Aufgabe 3: Abfragen (Umsatz und Bestellungen)
INSERT INTO Bestellungen (Datum, PersonalID, Kundenname, Betrag) VALUES
('2026-02-15', 4, 'Müller AG', 1500.50),
('2026-05-20', 5, 'Schmid GmbH', 3200.00),
('2026-05-20', 6, 'Meier & Co', 850.00),
('2026-07-10', 4, 'Bäcker AG', 4500.00),
('2026-09-05', 7, 'Testkunde', 1200.00);

-- 3.1 Finde den Tag mit dem grössten Umsatz
SELECT Datum, SUM(Betrag) AS Tagesumsatz
FROM Bestellungen
GROUP BY Datum
ORDER BY Tagesumsatz DESC
LIMIT 1;

-- 3.2 Umsatz vom 01.01.2026 bis 01.08.2026
SELECT SUM(Betrag) AS Gesamtumsatz
FROM Bestellungen
WHERE Datum BETWEEN '2026-01-01' AND '2026-08-01';

-- 3.3 Bestellungen Total
SELECT COUNT(*) AS AnzahlBestellungen
FROM Bestellungen;
