# Modul 162 - Daten analysieren und modellieren

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
  - Umfragen und Befragungen
  - Sensoren und Messungen
  - Beobachtungen und Experimente
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

Für Auswertung ist Zeichensatz und Datenformate wichtig (UTF-8, ASCII, TT-MM-YYY, YYYY-MM-TT)

## 162-1A SideQuest:

**Verschiede Arten von Daten:**

- Textdateien: .txt, .pdf, .docx
- Bilddateien: .jpeg, .png, .gif, .svg
- Audiodateien: .mp3, .wav, .flac
- Videodateien: .mp4, .mov, .avi
- Numerische Daten: .csv, .xlsx, .json

**Ansichten:**

* Textdateien
  * Reiner Text: Inhalt kann direkt gelesen oder bearbeitet werden (z.B. in einem Texteditor).
  * Formatierte Ansicht: Bei .pdf oder .docx mit Layout, Schriftarten, Bildern usw.

* Bilddateien (.jpeg, .png, .gif, .svg)
  * Visuelle Ansicht: Anzeige als Bild in einem Bildbetrachter.
  * Metadaten-Ansicht: Anzeige von Informationen wie Auflösung, Dateigröße, Erstellungsdatum.
  * Code-/Strukturansicht: Bei .svg möglich, da sie aus Text (XML) besteht.

* Audiodateien
  * Audioansicht: Abspielen und Hören.
  * Wellenformansicht: Darstellung des Tons als Schallwelle (z.B. in Audacity).
  * Metadatenansicht: Titel, Künstler, Album, Länge usw.

* Videodateien
  * Videoansicht: Wiedergabe von Bild und Ton.
  * Zeitachsenansicht: Frame-by-Frame-Darstellung (z.B. in Videobearbeitungssoftware).
  * Metadatenansicht: Auflösung, Framerate, Codec, Dauer.

* Numerische Daten
  * Tabellenansicht: Daten in Zeilen und Spalten (z.B. Datenbanken, Excel, Google Sheets).
  * Textansicht: Reine Zahlenwerte und Trennzeichen (z.B. in .csv oder .json).
  * Diagrammansicht: Grafische Darstellung von Werten (z.B. Balken-, Linien-, Kreisdiagramme).

## 162-2A SideQuest

### 1. Wichtige Grundprinzipien (nDSG)

- Rechtmässigkeit (Einwilligung oder gesetzliche Grundlage)  
- Verhältnismässigkeit & Zweckbindung  
- Transparenz & Datensicherheit

### 2. Analyse der Umfragedaten

Die Datentabelle enthält folgende Einträge:

| Kategorie         | Beispiel             | Art der Daten                          |
| ----------------- | -------------------- | -------------------------------------- |
| Name              | Sydney Zamora        | Personendaten                          |
| Herkunftsland     | Ungarn               | Besonders schützenswerte Personendaten |
| Geburtsdatum      | 10.10.1958           | Personendaten                          |
| Zivilstand        | keine Angabe         | Personendaten                          |
| Arbeitsverhältnis | Arbeitslos           | Personendaten                          |
| IP-Adresse        | 106.228.157.99       | Personendaten                          |
| Verdienst         | <50'000              | Besonders schützenswerte Personendaten |
| Lieblingsfarbe    | Rot                  | Nicht schützenswerte Daten             |
| Lieblingsgenre    | Roleplaying Game     | Nicht schützenswerte Daten             |
| Lieblingsfilm     | Time to Hunt         | Nicht schützenswerte Daten             |
| Name des Haustiers| Bailey               | Personendaten                          |

Die Daten enthalten somit sowohl normale als auch besonders schützenswerte Personendaten. Da der Name und weitere eindeutige Merkmale vorhanden sind, können Personen direkt identifiziert werden, weshalb die gesamte Datenerhebung unter das nDSG fällt.

### 3. Zulässigkeit der Daten

| Datenart          | Zulässig      | Begründung                                                        |
| ----------------- | ------------- | ----------------------------------------------------------------- |
| Name              | Nein          | Identifiziert die Person eindeutig, nur mit Einwilligung erlaubt  |
| Herkunftsland     | Eingeschränkt | Besonders schützenswert, nur mit ausdrücklicher Zustimmung        |
| Geburtsdatum      | Eingeschränkt | Rückschlüsse auf Alter möglich, Zustimmung erforderlich           |
| Zivilstand        | Eingeschränkt | Persönlich, nur mit Zustimmung oder anonymisiert zulässig         |
| Arbeitsverhältnis | Eingeschränkt | Wirtschaftliche Situation, Zustimmung erforderlich                |
| IP-Adresse        | Eingeschränkt | Technisch notwendig, aber personenbezogen                         |
| Verdienst         | Nein          | Besonders schützenswert, Einwilligung zwingend                    |
| Lieblingsfarbe    | Ja            | Keine schützenswerten oder identifizierenden Informationen        |
| Lieblingsgenre    | Ja            | Unproblematisch, keine personenbezogenen Merkmale                 |
| Lieblingsfilm     | Ja            | Unproblematisch, keine personenbezogenen Merkmale                 |
| Name des Haustiers| Eingeschränkt | Kann zur Identifikation beitragen, besser anonymisieren           |

### 4. Begründung der Bewertung

Nach dem nDSG dürfen Personendaten nur bearbeitet werden, wenn:

1. die betroffene Person ausdrücklich eingewilligt hat,
2. eine gesetzliche Grundlage besteht, oder
3. die Daten für den vorgesehenen Zweck zwingend notwendig sind.

Da in der Tabelle Name, Herkunftsland, Geburtsdatum, IP-Adresse und Verdienst enthalten sind, ist eine Bearbeitung nur mit ausdrücklicher Einwilligung erlaubt. Ohne Einwilligung müssen die Daten anonymisiert oder pseudonymisiert werden, damit keine Rückschlüsse auf Einzelpersonen möglich sind.

### 5. Empfehlung

Für statistische oder analytische Zwecke sollten die Daten anonymisiert werden.  
Eine mögliche anonymisierte Fassung könnte wie folgt aussehen:

| Altersgruppe  | Herkunft (Region) | Arbeitsverhältnis | Einkommensklasse | Lieblingsgenre   |
| ------------- | ----------------- | ----------------- | ---------------- | ---------------- |
| 60–69         | Europa            | Arbeitslos        | <50'000          | Roleplaying Game |

So bleibt eine sinnvolle Auswertung möglich, ohne dass einzelne Personen identifizierbar sind.

### 6. Zusammenfassung

- Das nDSG fordert Rechtmässigkeit, Zweckbindung, Verhältnismässigkeit und Datensicherheit.
- Die vorliegenden Umfragedaten enthalten identifizierbare und teilweise besonders schützenswerte Personendaten.
- Eine Nutzung ist nur mit ausdrücklicher Zustimmung der betroffenen Personen erlaubt.
- Für eine datenschutzkonforme Verarbeitung sollten alle identifizierenden Merkmale entfernt oder anonymisiert werden.

## 162-3A SideQuest:
# Entitäten & Attribute

**Player**

* /player_id/
* email
* username
* password

**Game**

* /game_id/
* title
* price

**Purchase**

* /purchase_id/
* player_id (FK)
* game_id (FK)
* purchase_date

**Review**

* /review_id/
* player_id (FK)
* game_id (FK)
* rating (1–5)

**LeaderboardEntry**

* /entry_id/
* game_id (FK)
* player_id (FK)
* rank

# Beziehungen (Martin / Krähenfuss, einfach)

1. `Player (1) -- (m) Purchase`
2. `Game (1) -- (m) Purchase`
3. `Player (1) -- (m) Review`
4. `Game (1) -- (m) Review`
5. `Game (1) -- (m) LeaderboardEntry`
6. `Player (1) -- (m) LeaderboardEntry`

[Diagramm](./diagramme/gamehub-erd.drawio)

## 162-4C SideQuest:

* Genre
  * Label
* Medientyp
  * Label
* Medium
  * Titel
  * Beschreibung
  * Author
  * Genre
  * Medientyp
* Mitarbeiter
  * Vorname
  * Name
  * Geburtsdatum
* Ausleihe
  * Welches Medium
  * Ausleihende Person
  * Startdatum
  * Enddatum

Beziehungen:
Mitarbeiter 1 ----- mc Ausleihe
Ausleihe    1 ----- m  Medium
Medientyp   m ----- 1  Medium
Genre       m ----- 1  Medium