# Modul 162 - Daten analysieren & modellieren

## Daten:

> Definition: Grundbausteine von Informationen

Typen von Daten:

- Textdateien: .txt, .pdf, .docx
- Bilddateien: .jpeg, .png, .gif, .svg
- Audiodateien: .mp3, .wav, .flac
- Videodateien: .mp4, .mov, .avi
- Numerische Daten: .csv, .xlsx, .json

Ursprung von Daten:

- Primärquellen:
  - Umfragen & Befragungen
  - Sensoren & Messungen
  - Beobachtungen & Experimente
- Sekundärquellen:
  - Bundesamt für Statistik
  - Zeitungsartikel
  - Forschungsberichte
  - Social edia Analysen

Strukturmerkamle:

- Strukturierte Quellen:
  - Datenbanken
- Halbstrukturierte Quellen:
  - Websites
- Unstrukturierte Quellen:
  - Videos, Bilder ohne Metadaten
  - Fliesstexte

Für Auswertung ist Zeichensatz & Datenformate wichtig (UTF-8, ASCII, TT-MM-YYY, YYYY-MM-TT)

## 162-1A SideQuest:

**Verschiede Arten von Daten:**

- Textdateien: .txt, .pdf, .docx
- Bilddateien: .jpeg, .png, .gif, .svg
- Audiodateien: .mp3, .wav, .flac
- Videodateien: .mp4, .mov, .avi
- Numerische Daten: .csv, .xlsx, .json

**Ansichten:**

- Textdateien

  - Reiner Text: Inhalt kann direkt gelesen oder bearbeitet werden (z.B. in einem Texteditor).
  - Formatierte Ansicht: Bei .pdf oder .docx mit Layout, Schriftarten, Bildern usw.

- Bilddateien (.jpeg, .png, .gif, .svg)

  - Visuelle Ansicht: Anzeige als Bild in einem Bildbetrachter.
  - Metadaten-Ansicht: Anzeige von Informationen wie Auflösung, Dateigröße, Erstellungsdatum.
  - Code-/Strukturansicht: Bei .svg möglich, da sie aus Text (XML) besteht.

- Audiodateien

  - Audioansicht: Abspielen & Hören.
  - Wellenformansicht: Darstellung des Tons als Schallwelle (z.B. in Audacity).
  - Metadatenansicht: Titel, Künstler, Album, Länge usw.

- Videodateien

  - Videoansicht: Wiedergabe von Bild & Ton.
  - Zeitachsenansicht: Frame-by-Frame-Darstellung (z.B. in Videobearbeitungssoftware).
  - Metadatenansicht: Auflösung, Framerate, Codec, Dauer.

- Numerische Daten
  - Tabellenansicht: Daten in Zeilen & Spalten (z.B. Datenbanken, Excel, Google Sheets).
  - Textansicht: Reine Zahlenwerte & Trennzeichen (z.B. in .csv oder .json).
  - Diagrammansicht: Grafische Darstellung von Werten (z.B. Balken-, Linien-, Kreisdiagramme).

## 162-2A SideQuest

### 1. Wichtige Grundprinzipien (nDSG)

- Rechtmässigkeit (Einwilligung oder gesetzliche Grundlage)
- Verhältnismässigkeit & Zweckbindung
- Transparenz & Datensicherheit

### 2. Analyse der Umfragedaten

Die Datentabelle enthält folgende Einträge:

| Kategorie          | Beispiel         | Art der Daten                          |
| ------------------ | ---------------- | -------------------------------------- |
| Name               | Sydney Zamora    | Personendaten                          |
| Herkunftsland      | Ungarn           | Besonders schützenswerte Personendaten |
| Geburtsdatum       | 10.10.1958       | Personendaten                          |
| Zivilstand         | keine Angabe     | Personendaten                          |
| Arbeitsverhältnis  | Arbeitslos       | Personendaten                          |
| IP-Adresse         | 106.228.157.99   | Personendaten                          |
| Verdienst          | <50'000          | Besonders schützenswerte Personendaten |
| Lieblingsfarbe     | Rot              | Nicht schützenswerte Daten             |
| Lieblingsgenre     | Roleplaying Game | Nicht schützenswerte Daten             |
| Lieblingsfilm      | Time to Hunt     | Nicht schützenswerte Daten             |
| Name des Haustiers | Bailey           | Personendaten                          |

Die Daten enthalten somit sowohl normale als auch besonders schützenswerte Personendaten. Da der Name & weitere eindeutige Merkmale vorhanden sind, können Personen direkt identifiziert werden, weshalb die gesamte Datenerhebung unter das nDSG fällt.

### 3. Zulässigkeit der Daten

| Datenart           | Zulässig      | Begründung                                                       |
| ------------------ | ------------- | ---------------------------------------------------------------- |
| Name               | Nein          | Identifiziert die Person eindeutig, nur mit Einwilligung erlaubt |
| Herkunftsland      | Eingeschränkt | Besonders schützenswert, nur mit ausdrücklicher Zustimmung       |
| Geburtsdatum       | Eingeschränkt | Rückschlüsse auf Alter möglich, Zustimmung erforderlich          |
| Zivilstand         | Eingeschränkt | Persönlich, nur mit Zustimmung oder anonymisiert zulässig        |
| Arbeitsverhältnis  | Eingeschränkt | Wirtschaftliche Situation, Zustimmung erforderlich               |
| IP-Adresse         | Eingeschränkt | Technisch notwendig, aber personenbezogen                        |
| Verdienst          | Nein          | Besonders schützenswert, Einwilligung zwingend                   |
| Lieblingsfarbe     | Ja            | Keine schützenswerten oder identifizierenden Informationen       |
| Lieblingsgenre     | Ja            | Unproblematisch, keine personenbezogenen Merkmale                |
| Lieblingsfilm      | Ja            | Unproblematisch, keine personenbezogenen Merkmale                |
| Name des Haustiers | Eingeschränkt | Kann zur Identifikation beitragen, besser anonymisieren          |

### 4. Begründung der Bewertung

Nach dem nDSG dürfen Personendaten nur bearbeitet werden, wenn:

1. die betroffene Person ausdrücklich eingewilligt hat,
2. eine gesetzliche Grundlage besteht, oder
3. die Daten für den vorgesehenen Zweck zwingend notwendig sind.

Da in der Tabelle Name, Herkunftsland, Geburtsdatum, IP-Adresse & Verdienst enthalten sind, ist eine Bearbeitung nur mit ausdrücklicher Einwilligung erlaubt. Ohne Einwilligung müssen die Daten anonymisiert oder pseudonymisiert werden, damit keine Rückschlüsse auf Einzelpersonen möglich sind.

### 5. Empfehlung

Für statistische oder analytische Zwecke sollten die Daten anonymisiert werden.  
Eine mögliche anonymisierte Fassung könnte wie folgt aussehen:

| Altersgruppe | Herkunft (Region) | Arbeitsverhältnis | Einkommensklasse | Lieblingsgenre   |
| ------------ | ----------------- | ----------------- | ---------------- | ---------------- |
| 60-69        | Europa            | Arbeitslos        | <50'000          | Roleplaying Game |

So bleibt eine sinnvolle Auswertung möglich, ohne dass einzelne Personen identifizierbar sind.

### 6. Zusammenfassung

- Das nDSG fordert Rechtmässigkeit, Zweckbindung, Verhältnismässigkeit & Datensicherheit.
- Die vorliegenden Umfragedaten enthalten identifizierbare & teilweise besonders schützenswerte Personendaten.
- Eine Nutzung ist nur mit ausdrücklicher Zustimmung der betroffenen Personen erlaubt.
- Für eine datenschutzkonforme Verarbeitung sollten alle identifizierenden Merkmale entfernt oder anonymisiert werden.

## 162-3A SideQuest:

# Entitäten & Attribute

**Player**

- /player_id/
- email
- username
- password

**Game**

- /game_id/
- title
- price

**Purchase**

- /purchase_id/
- player_id (FK)
- game_id (FK)
- purchase_date

**Review**

- /review_id/
- player_id (FK)
- game_id (FK)
- rating (1-5)

**LeaderboardEntry**

- /entry_id/
- game_id (FK)
- player_id (FK)
- rank

# Beziehungen (Martin / Krähenfuss, einfach)

1. `Player (1) -- (m) Purchase`
2. `Game (1) -- (m) Purchase`
3. `Player (1) -- (m) Review`
4. `Game (1) -- (m) Review`
5. `Game (1) -- (m) LeaderboardEntry`
6. `Player (1) -- (m) LeaderboardEntry`

[Diagramm](./diagramme/gamehub-erd.drawio)

## 162-4C SideQuest:

- Genre
  - Label
- Medientyp
  - Label
- Medium
  - Titel
  - Beschreibung
  - Author
  - Genre
  - Medientyp
- Mitarbeiter
  - Vorname
  - Name
  - Geburtsdatum
- Ausleihe
  - Welches Medium
  - Ausleihende Person
  - Startdatum
  - Enddatum

Beziehungen:
Mitarbeiter 1 ----- mc Ausleihe
Ausleihe 1 ----- m Medium
Medientyp m ----- 1 Medium
Genre m ----- 1 Medium

## 162-5A SideQuest:

### A

Ohne Zwischentabelle möglich

**Buch:**
| BuchID | Titel | Seitenzahl | Cover |
| ------ | --------------- | ---------- | ------ |
| 15 | Faust | 120 | f.png |
| 16 | Der Prozess | 280 | kp.png |
| 17 | Die Verwandlung | 96 | vw.png |

**Ausleihe:**
| AusleiheID | DatumVon | DatumBis | BuchIDFS |
| ---------- | -------- | -------- | -------- |
| 240 | 11.12.25 | 18.12.25 | 15 |
| 241 | 02.01.26 | 10.01.26 | 16 |
| 242 | 05.01.26 | 12.01.26 | 17 |

**Ja, das Einfügen geht**, solange:

- **Der Buch-Datensatz zuerst existiert**, bevor man eine Ausleihe dazu einfügt.
- **BuchIDFS in Ausleihe auf einen vorhandenen BuchID-Wert zeigt**.

Also:

1. `INSERT INTO Buch ...`
2. Danach `INSERT INTO Ausleihe ...` mit passender BuchIDFS.

### B

Mit Zwischentabelle möglich

**Buch:**
| BuchID | Titel | Seitenzahl | Cover |
| ------ | --------------- | ---------- | ------ |
| 10 | Faust | 120 | f.png |
| 11 | Die Verwandlung | 96 | vw.png |

**Ausleihe:**
| AusleiheID | DatumVon | DatumBis |
| ---------- | -------- | -------- |
| 300 | 01.12.25 | 05.12.25 |

**Ausleihe_Buch:**
| AusleiheID_FK | BuchID_FK |
| ------------- | --------- |
| 300 | 10 |
| 300 | 11 |

**Ja, das Einfügen geht**, solange:

- **Buch & Ausleihe zuerst existieren**, bevor man Einträge in `Ausleihe_Buch` anlegt.
- **Jede Kombination aus AusleiheID_FK & BuchID_FK** auf gültige Datensätze zeigt.

Also:

1. `INSERT INTO Buch ...`
2. `INSERT INTO Ausleihe ...`
3. `INSERT INTO Ausleihe_Buch ...` für die Zuordnung.

## 162-5B SideQuest:

In OneNote gelöst

## 162-5C SideQuest:

In OneNote gelöst

## 162-5D SideQuest:

[Diagramm](/docs/M162/diagramme/162-5D-MatteoBosshard.drawio)

## 162-6C SideQuest:

Benotet im Teams

## 162-7A SideQuest:

### **Aufgabe 1**

#### **A. Problem**

- Mehrere Telefonnummern pro Person -> Tabelle ist **nicht atomar** (Verstoss gegen 1. Normalform).
- Variante 1: gemischtes Format, mehrere Werte in einer Zelle.
- Variante 2: feste Anzahl Spalten (Tel1-Tel3) -> nicht flexibel.

#### **B. ERD (logisch-relational, textform)**

**PERSON**

- PersonID (PK)
- Name
- Vorname
- Email

**TELEFON**

- TelefonID (PK)
- Nummer
- PersonID (FK)
  Beziehung: **1 Person - n Telefonnummern**

### **Aufgabe 2**

#### **A. Ungünstig**

- Entwicklername & EntwicklerID wiederholen sich -> **Redundanz**.
- Sprache & SprachID wiederholen sich -> **Redundanz**.
- Eine Tabelle enthält drei unterschiedliche Entitäten (Games, Entwickler, Sprachen).

#### **B. ERD (textform)**

**GAME**

- GameID (PK)
- Name
- Genre
- EntwicklerID (FK)
- SprachID (FK)

**ENTWICKLER**

- EntwicklerID (PK)
- EntwicklerName

**SPRACHE**

- SprachID (PK)
- Sprache
  Beziehungen:
- **1 Entwickler - n Games**
- **1 Sprache - n Games**

### **Aufgabe 3**

#### **A. Änderung**

- RatingCode & Rating hängen zusammen -> sollte **eigene Tabelle** sein.
- Sonst wieder redundante Daten (z. B. PEGI18 -> immer "Ab 18 Jahren").

#### **B. ERD (textform)**

**GAME**

- GameID (PK)
- Name
- RatingCode (FK)

**RATING**

- RatingCode (PK)
- RatingText
  Beziehung: **1 Rating - n Games**

## Rekursive Assoziationen

Definiton: eine Entität steht in Beziehung mit sich selbst

## Beziehungszeichen

| Beschreibung | Zehner | Krähenfuss |
| ------------ | ------ | ---------- |
| genau 1      | 1      | +          |
| 0 oder 1     | c      | -O         |
| viele        | m      | >          |
| 0 bis viele  | mc     | O>         |
| 1 bis viele  | m      | +>         |

## 162-7C SideQuest:

### Ausgangslage

**Tabellen:**

- Genre:
  - Titel
  - Beschreibung
- Game
  - Titel
  - Beschreibung
  - Preis
  - Release-Datum
- Language
  - Name
  - Translator
- Country
  - Name
  - Company
  - Kontakt
- Region
  - Name
  - ManagedBy

**Beziehungen:**

| Tabellen         | Beziehung |
| ---------------- | --------- |
| Genre:Game       | m:mc      |
| Game:Language    | m:m       |
| Language:Country | m:m       |
| Region:Country   | c:m       |

### Lösung

**Tabellen:**

- ContactPerson
  - PersonID (PK)
  - Name
  - Email
  - TelefonNr
- Genre
  - GenreID (PK)
  - Titel
  - Beschreibung
- Game
  - GameID (PK)
  - Titel
  - Beschreibung
  - Preis
  - Release-Datum
  - FK_GenreID
- Language
  - LanguageID (PK)
  - Name
  - FK_TranslatorID
- Country
  - CountryID (PK)
  - Name
  - Company
  - FK_ContactPersonID
  - FK_RegionName
- Region
  - RegionID (PK)
  - Name
  - FK_ManagerID
- GameLanguage
  - FK_GameID (PK)
  - FK_LanguageID (PK)
- LanguageDistribution
  - FK_LanguageID (PK)
  - FK_CountryID (PK)
- GenreGame
  - FK_GenreID (PK)
  - GameID (PK)

**Beziehungen / Diagramm:**
[Diagramm](/docs/M162/diagramme/162-7C-MatteoBosshard.drawio)
