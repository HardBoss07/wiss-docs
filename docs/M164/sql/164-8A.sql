CREATE DATABASE IF NOT EXISTS edugame_event;

USE edugame_event;

-- Tabellen erstellen
CREATE TABLE
    Fachgruppe (
        fachgruppe_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL UNIQUE
    );

CREATE TABLE
    Workshop (
        workshop_id INT AUTO_INCREMENT PRIMARY KEY,
        thema VARCHAR(200) NOT NULL,
        fachgruppe_id INT NOT NULL,
        FOREIGN KEY (fachgruppe_id) REFERENCES Fachgruppe (fachgruppe_id)
    );

CREATE TABLE
    Essgewohnheit (
        essgewohnheit_id INT AUTO_INCREMENT PRIMARY KEY,
        typ ENUM ('Vegan', 'Vegi', 'Fleisch', 'ohne Schwein') NOT NULL UNIQUE
    );

CREATE TABLE
    Mitarbeiter (
        mitarbeiter_id INT AUTO_INCREMENT PRIMARY KEY,
        vorname VARCHAR(50) NOT NULL,
        nachname VARCHAR(50) NOT NULL,
        email VARCHAR(100) NOT NULL UNIQUE,
        fachgruppe_id INT NOT NULL,
        essgewohnheit_id INT,
        FOREIGN KEY (fachgruppe_id) REFERENCES Fachgruppe (fachgruppe_id),
        FOREIGN KEY (essgewohnheit_id) REFERENCES Essgewohnheit (essgewohnheit_id)
    );

CREATE TABLE
    Feedback (
        feedback_id INT AUTO_INCREMENT PRIMARY KEY,
        frage_1 TEXT NOT NULL,
        frage_2 TEXT NOT NULL,
        frage_3 TEXT NOT NULL,
        mitarbeiter_id INT NOT NULL,
        workshop_id INT NOT NULL,
        FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter (mitarbeiter_id),
        FOREIGN KEY (workshop_id) REFERENCES Workshop (workshop_id)
    );

CREATE TABLE
    Ausflugsziel (
        ziel_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL UNIQUE
    );

CREATE TABLE
    Ausflug_Wahl (
        mitarbeiter_id INT NOT NULL,
        ziel_id INT NOT NULL,
        prioritaet ENUM ('1', '2') NOT NULL,
        PRIMARY KEY (mitarbeiter_id, prioritaet),
        FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter (mitarbeiter_id),
        FOREIGN KEY (ziel_id) REFERENCES Ausflugsziel (ziel_id)
    );

CREATE TABLE
    Musikrichtung (
        musik_id INT AUTO_INCREMENT PRIMARY KEY,
        bezeichnung VARCHAR(50) NOT NULL UNIQUE
    );

CREATE TABLE
    Voting (
        mitarbeiter_id INT PRIMARY KEY,
        musik_id INT NOT NULL,
        FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter (mitarbeiter_id),
        FOREIGN KEY (musik_id) REFERENCES Musikrichtung (musik_id)
    );

-- Testdaten einfügen
INSERT INTO
    Fachgruppe (name)
VALUES
    ('Entwicklung'),
    ('Marketing');

INSERT INTO
    Workshop (thema, fachgruppe_id)
VALUES
    ('KI in der Spieleentwicklung', 1),
    ('Globales Branding', 2);

INSERT INTO
    Essgewohnheit (typ)
VALUES
    ('Vegan'),
    ('Vegi'),
    ('Fleisch'),
    ('ohne Schwein');

INSERT INTO
    Ausflugsziel (name)
VALUES
    ('Lalbagh Garden'),
    ('Bannerghatta Park'),
    ('Mysore Palace');

INSERT INTO
    Musikrichtung (bezeichnung)
VALUES
    ('Rock'),
    ('Pop'),
    ('Techno'),
    ('Bollywood');