DROP DATABASE IF EXISTS 7a_edubase;

CREATE DATABASE IF NOT EXISTS 7a_edubase;

USE 7a_edubase;

CREATE TABLE Thema (
    thema_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    bezeichnung VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Spiel (
    spiel_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    beschreibung_de TEXT NOT NULL,
    beschreibung_en TEXT NOT NULL,
    infrastruktur_bedarf ENUM ('basic', 'normal', 'full') NOT NULL,
    teambildung_moeglich BOOLEAN NOT NULL,
    kosten DECIMAL(10, 2) NOT NULL,
    einfuehrungsdatum DATE NOT NULL,
    thema_id INT NOT NULL,
    CONSTRAINT fk_spiel_thema FOREIGN KEY (thema_id) REFERENCES Thema (thema_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Teilnehmer (
    teilnehmer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    vorname VARCHAR(50) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    spieler_alter INT NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    telefon VARCHAR(20) NOT NULL
);

CREATE TABLE Team (
    team_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    teamname VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Adresse (
    adresse_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    strasse VARCHAR(100) NOT NULL,
    hausnummer VARCHAR(10),
    plz VARCHAR(10) NOT NULL,
    ort VARCHAR(100) NOT NULL,
    land VARCHAR(50) DEFAULT 'Schweiz'
);

CREATE TABLE Location (
    location_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    infrastruktur_vorhanden ENUM ('basic', 'normal', 'full') NOT NULL,
    adresse_id INT NOT NULL
);

CREATE TABLE Durchfuehrung (
    durchfuehrung_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    datum DATE NOT NULL,
    spiel_id INT NOT NULL,
    location_id INT NOT NULL,
    CONSTRAINT fk_durchfuehrung_spiel FOREIGN KEY (spiel_id) REFERENCES Spiel (spiel_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_durchfuehrung_location FOREIGN KEY (location_id) REFERENCES Location (location_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Ergebnis (
    ergebnis_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    punktestand INT NOT NULL,
    durchfuehrung_id INT NOT NULL,
    teilnehmer_id INT NULL,
    team_id INT NULL,
    CONSTRAINT fk_ergebnis_durchfuehrung FOREIGN KEY (durchfuehrung_id) REFERENCES Durchfuehrung (durchfuehrung_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_ergebnis_teilnehmer FOREIGN KEY (teilnehmer_id) REFERENCES Teilnehmer (teilnehmer_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_ergebnis_team FOREIGN KEY (team_id) REFERENCES Team (team_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE TeamMitglieder (
    team_id INT NOT NULL,
    teilnehmer_id INT NOT NULL,
    PRIMARY KEY (team_id, teilnehmer_id),
    CONSTRAINT fk_teammitglieder_team FOREIGN KEY (team_id) REFERENCES Team (team_id) ON DELETE RESTRICT ON UPDATE CASCADE, 
    CONSTRAINT fk_teammitglieder_teilnehmer FOREIGN KEY (teilnehmer_id) REFERENCES Teilnehmer (teilnehmer_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Datenimport
USE 7a_edubase;

-- Globale Einstellungen für den Massenimport
SET GLOBAL local_infile = 1;
SET FOREIGN_KEY_CHECKS = 0;

-- 1. THEMA
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_thema.csv'
INTO TABLE Thema
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 2. ADRESSE
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_adresse.csv'
INTO TABLE Adresse
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 3. TEILNEHMER
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_teilnehmer.csv'
INTO TABLE Teilnehmer
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 4. SPIEL
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_spiel.csv'
INTO TABLE Spiel
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 5. LOCATION
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_location.csv'
INTO TABLE Location
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 6. TEAM
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_team.csv'
INTO TABLE Team
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 7. TEAMMITGLIEDER
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_teammitglieder.csv'
INTO TABLE TeamMitglieder
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 8. DURCHFUEHRUNG
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_durchfuehrung.csv'
INTO TABLE Durchfuehrung
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
COMMIT;

-- 9. ERGEBNIS
START TRANSACTION;
LOAD DATA INFILE 'C:/Schule/wiss-docs/docs/M164/csv/cleaned_import_ergebnis.csv'
INTO TABLE Ergebnis
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(ergebnis_id, punktestand, durchfuehrung_id, @vteilnehmer_id, @vteam_id)
SET 
  teilnehmer_id = NULLIF(@vteilnehmer_id, ''),
  team_id = NULLIF(@vteam_id, '');
COMMIT;

-- Foreign Key Checks wieder aktivieren
SET FOREIGN_KEY_CHECKS = 1;

-- Liste alle Einzelteilnehmer auf, berechne ihre Gesamtpunkte über alle Spiele hinweg 
-- und sortiere sie vom höchsten zum niedrigsten Punktestand.
SELECT 
    t.username, 
    t.vorname, 
    t.nachname, 
    SUM(e.punktestand) AS Gesamtpunkte,
    COUNT(e.ergebnis_id) AS Anzahl_Spiele
FROM Teilnehmer t
JOIN Ergebnis e ON t.teilnehmer_id = e.teilnehmer_id
GROUP BY t.teilnehmer_id
ORDER BY Gesamtpunkte DESC;

-- Zeige alle Durchführungen an: Welches Spiel wurde an welcher Location zu welchem Datum gespielt,
-- inklusive des übergeordneten Themas und der Infrastruktur vor Ort.
SELECT 
    d.datum, 
    s.name AS Spielname, 
    th.bezeichnung AS Thema, 
    l.name AS Ort, 
    l.infrastruktur_vorhanden AS Vorhandene_Infrastruktur
FROM Durchfuehrung d
JOIN Spiel s ON d.spiel_id = s.spiel_id
JOIN Thema th ON s.thema_id = th.thema_id
JOIN Location l ON d.location_id = l.location_id
ORDER BY d.datum ASC;

-- Erstelle eine Liste aller Teams und zeige an, welche Teilnehmer (Vor- und Nachname) 
-- in welchem Team Mitglied sind, alphabetisch sortiert nach Teamname.
SELECT 
    tm.teamname, 
    t.vorname, 
    t.nachname, 
    t.username
FROM Team tm
JOIN TeamMitglieder t_m ON tm.team_id = t_m.team_id
JOIN Teilnehmer t ON t_m.teilnehmer_id = t.teilnehmer_id
ORDER BY tm.teamname, t.nachname;

-- Berechne pro Thema die Summe der Kosten aller durchgeführten Spiele. 
-- Dies zeigt, welche Themenbereiche am meisten "Umsatz" generiert haben.
SELECT 
    th.bezeichnung AS Thema, 
    COUNT(d.durchfuehrung_id) AS Anzahl_Events,
    SUM(s.kosten) AS Gesamtumsatz
FROM Thema th
JOIN Spiel s ON th.thema_id = s.thema_id
JOIN Durchfuehrung d ON s.spiel_id = d.spiel_id
GROUP BY th.thema_id
HAVING Anzahl_Events > 0
ORDER BY Gesamtumsatz DESC;