-- ==========================================
-- 1. DATENBANK ERSTELLEN & AUSWÄHLEN
-- ==========================================
DROP DATABASE IF EXISTS AlanosGmbH;
CREATE DATABASE AlanosGmbH CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE AlanosGmbH;

-- ==========================================
-- 2. TABELLEN ERSTELLEN (DDL)
-- ==========================================

-- Tabelle: Abteilungen
CREATE TABLE abteilung (
    abt_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Tabelle: Mitarbeiter
CREATE TABLE mitarbeiter (
    m_id INT AUTO_INCREMENT PRIMARY KEY,
    vorname VARCHAR(50) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    fk_abt_id INT,
    lohn DECIMAL(10,2) NOT NULL,
    einstellungsdatum DATE,
    FOREIGN KEY (fk_abt_id) REFERENCES abteilung(abt_id)
);

-- Tabelle: Produkte (Getränkedosen)
CREATE TABLE produkt_dose (
    produkt_id INT AUTO_INCREMENT PRIMARY KEY,
    bezeichnung VARCHAR(100) NOT NULL,
    geschmacksrichtung VARCHAR(50),
    volumen_ml INT DEFAULT 330,
    verkaufspreis DECIMAL(5,2) NOT NULL
);

-- Tabelle: Produktionschargen
CREATE TABLE produktionscharge (
    charge_id INT AUTO_INCREMENT PRIMARY KEY,
    fk_produkt_id INT,
    produktionsdatum DATE NOT NULL,
    produzierte_menge INT NOT NULL,
    qualitaetscheck_bestanden BOOLEAN DEFAULT 1,
    FOREIGN KEY (fk_produkt_id) REFERENCES produkt_dose(produkt_id)
);

-- Tabelle: Verkauf / Bestellungen
CREATE TABLE verkauf (
    verkauf_id INT AUTO_INCREMENT PRIMARY KEY,
    fk_produkt_id INT,
    verkaufsdatum DATE NOT NULL,
    menge INT NOT NULL,
    umsatz DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (fk_produkt_id) REFERENCES produkt_dose(produkt_id)
);

-- ==========================================
-- 3. DATEN EINFÜGEN (10 Einträge pro Tabelle, DML)
-- ==========================================

-- Abteilungen (Vorgegeben sind 5, für die 10-Einträge-Regel fügen wir Unterabteilungen hinzu)
INSERT INTO abteilung (name) VALUES 
('Geschäftsleitung'), ('Finanzen'), ('Marketing'), ('Produktion'), ('Service und Verkauf'),
('Forschung & Entwicklung'), ('Logistik'), ('Qualitätssicherung'), ('IT-Support'), ('Personalwesen');

-- Mitarbeiter
INSERT INTO mitarbeiter (vorname, nachname, fk_abt_id, lohn, einstellungsdatum) VALUES
('Anna', 'Müller', 1, 9500.00, '2020-01-15'),
('Beat', 'Meier', 2, 7800.00, '2021-03-01'),
('Carla', 'Keller', 3, 6500.00, '2022-05-10'),
('David', 'Brunner', 4, 6200.00, '2021-11-20'),
('Eva', 'Schmid', 5, 6800.00, '2023-02-01'),
('Fabian', 'Egger', 4, 5900.00, '2023-06-15'),
('Gina', 'Frei', 5, 6100.00, '2022-09-01'),
('Hans', 'Ziegler', 2, 7100.00, '2020-08-15'),
('Ida', 'Vogel', 3, 6300.00, '2021-04-12'),
('Jan', 'Widmer', 4, 6000.00, '2023-11-01');

-- Produkte (Getränkedosen)
INSERT INTO produkt_dose (bezeichnung, geschmacksrichtung, volumen_ml, verkaufspreis) VALUES
('Alanos Classic Cola', 'Cola', 330, 1.50),
('Alanos Zero Cola', 'Cola (Zuckerfrei)', 330, 1.50),
('Alanos Energy', 'Energy/Taurin', 250, 2.00),
('Alanos Energy Apple', 'Energy/Apfel', 250, 2.00),
('Alanos Lemon Splash', 'Zitrone', 330, 1.20),
('Alanos Orange Burst', 'Orange', 330, 1.20),
('Alanos Ice Tea Peach', 'Pfirsich', 500, 1.80),
('Alanos Ice Tea Lemon', 'Zitrone', 500, 1.80),
('Alanos Water Sparkling', 'Wasser mit Kohlensäure', 500, 1.00),
('Alanos Mate', 'Mate-Tee', 330, 1.90);

-- Produktionschargen
INSERT INTO produktionscharge (fk_produkt_id, produktionsdatum, produzierte_menge, qualitaetscheck_bestanden) VALUES
(1, '2023-10-01', 10000, 1),
(2, '2023-10-02', 8000, 1),
(3, '2023-10-05', 15000, 1),
(4, '2023-10-06', 5000, 1),
(5, '2023-10-10', 12000, 1),
(6, '2023-10-11', 12000, 0), -- Qualitätscheck nicht bestanden
(7, '2023-10-15', 20000, 1),
(8, '2023-10-16', 18000, 1),
(9, '2023-10-20', 25000, 1),
(10, '2023-10-22', 6000, 1);

-- Verkauf
INSERT INTO verkauf (fk_produkt_id, verkaufsdatum, menge, umsatz) VALUES
(1, '2023-10-05', 500, 750.00),
(3, '2023-10-08', 1000, 2000.00),
(7, '2023-10-20', 800, 1440.00),
(2, '2023-10-21', 400, 600.00),
(5, '2023-10-22', 600, 720.00),
(9, '2023-10-25', 1500, 1500.00),
(4, '2023-10-26', 200, 400.00),
(10, '2023-10-28', 300, 570.00),
(1, '2023-10-29', 1200, 1800.00),
(8, '2023-10-30', 900, 1620.00);

-- ==========================================
-- 4. BERECHTIGUNGEN (GRANT / REVOKE)
-- ==========================================

-- Benutzer erstellen
CREATE USER 'gl_user'@'localhost' IDENTIFIED BY 'ChefPass123!';
CREATE USER 'finanz_user'@'localhost' IDENTIFIED BY 'GeldPass123!';
CREATE USER 'prod_user'@'localhost' IDENTIFIED BY 'DosenPass123!';

-- Rechte für Geschäftsleitung (Darf alles)
GRANT ALL PRIVILEGES ON AlanosGmbH.* TO 'gl_user'@'localhost';

-- Rechte für Finanzen (Fokus auf Löhne und Umsätze)
GRANT SELECT ON AlanosGmbH.* TO 'finanz_user'@'localhost';
GRANT UPDATE (lohn) ON AlanosGmbH.mitarbeiter TO 'finanz_user'@'localhost';
REVOKE DELETE ON AlanosGmbH.* FROM 'finanz_user'@'localhost';

-- Rechte für Produktion (Fokus auf Dosen und Chargen)
GRANT SELECT ON AlanosGmbH.produkt_dose TO 'prod_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON AlanosGmbH.produktionscharge TO 'prod_user'@'localhost';
GRANT SELECT (vorname, nachname) ON AlanosGmbH.mitarbeiter TO 'prod_user'@'localhost'; -- Darf keine Löhne sehen

FLUSH PRIVILEGES;

-- ==========================================
-- 5. INNER JOIN ABFRAGEN FÜRS PLENUM
-- ==========================================

-- Abfrage 1: Welche Mitarbeiter arbeiten in welcher Abteilung?
CREATE VIEW view_mitarbeiter_abteilung AS
SELECT m.vorname, m.nachname, a.name AS abteilungsname, m.lohn
FROM mitarbeiter m
INNER JOIN abteilung a ON m.fk_abt_id = a.abt_id;

-- Abfrage 2: Welche Getränkedosen wurden wann produziert und haben den Qualitätscheck bestanden?
CREATE VIEW view_dosen_produktion AS
SELECT pd.bezeichnung, pd.volumen_ml, pc.produzierte_menge, pc.produktionsdatum
FROM produktionscharge pc
INNER JOIN produkt_dose pd ON pc.fk_produkt_id = pd.produkt_id
WHERE pc.qualitaetscheck_bestanden = 1;