# UX Writing & Ergonomie-Review: Stundenplan-App

## 1. Kernerkenntnisse

1. **Touch-gerechtes & aktionsorientiertes Vokabular:** Befehle und Hinweistexte müssen sich an Touchscreen-Gesten anpassen (`Tippen` statt `Klick`) und klare Verben auf Buttons nutzen (`senden`, `aktualisieren`).
2. **Konsistenz bei Darstellungsmodi:** Vorschaubilder und UI-Karten müssen sich dynamisch dem aktiven Design (z.B. Dark Mode) anpassen, um Irritationen zu vermeiden.
3. **Klare Handlungsoptionen statt Textwüsten:** Lange Erklärungen in Einstellungen reduzieren und Radio-Buttons so formulieren, dass sie auch ohne langen Kontexttext verständlich sind.

## 2. Review nach Unterseiten

### Unterseite: `Prüfungen`

- **Gut:** Relative Zeitangaben (_"morgen"_, _"in 7 Tagen"_) machen Termine sofort greifbar.
- **Optimierung:** Text `[gestrichelt] = geschätzt, Klick zum Korrigieren` verwendet PC-Jargon (_"Klick"_).
- **Vorschlag:** **"Gestrichelte Termine sind geschätzt. Tippen zum Bearbeiten."**

### Unterseite: `Noten` (Notenrechner)

- **Gut:** Übersichtliche KPI-Kacheln für Schnitt, abgeschlossene Module und ungenügende Noten.
- **Optimierung:** Schreibfehler (`Praesentation`) sowie grammatikalisch holprige Formulierung (_"Für eine 5 brauchst du in ZP + Projekt + Praesentation..."_). Label `Nötig für` ist unvollständig.
- **Vorschlag:**
  - Text: **"Für die Zielnote 5.0 benötigst du in den verbleibenden Prüfungen einen Schnitt von mindestens 4.8."**
  - Label: **"Erforderlicher Schnitt für Zielnote:"**

### Unterseite: `Absenzen`

- **Gut:** Anschauliche Heatmap für den Anwesenheitsverlauf.
- **Optimierung:** Unklare Zahlenaufschlüsselung (_"48: 45 entsch. · 1 unentsch."_). Doppelt-negative Formulierung (_"Zu entschuldigen: nichts offen"_).
- **Vorschlag:**
  - Kacheltext: **"48 Lektionen abwesend (45 entschuldigt, 1 unentschuldigt, 2 offen)"**
  - Status: **"Keine offenen Absenzen"**

### Unterseite: `Räume`

- **Gut:** Übersichtliche Belegungsleiste mit Echtzeit-Status (_"12 von 19 frei"_).
- **Optimierung:** Der Button _"Neu laden"_ ist vage. Der Raum-Tag _"Du"_ im Grundriss wirkt sehr knapp.
- **Vorschlag:** Button in **"Ansicht aktualisieren"** umbenennen; Raum-Tag auf **"Dein Unterricht"** anpassen.

### Unterseite: `Einstellungen -> Konto`

- **Optimierung:** Der Button _"Lehrpersonen aktualisieren"_ beschreibt nicht genau, was passiert.
- **Vorschlag:** **"Lehrpersonen-Liste abgleichen"** mit Subtext _"Synchronisiert die Dozierenden-Daten."_

### Unterseite: `Einstellungen -> Darstellung`

- **Optimierung (Dark Mode Inkonsistenz):** Bei aktivem System-Darkmode zeigt die Vorschau-Karte (_Standard_) einen hellen, weissen Hintergrund auf dunklem App-Design. Das wirkt auf Nutzende wie ein Darstellungsfehler.
- **Vorschlag:** Vorschaukarten dynamisch an den Dark Mode anpassen oder Hinweistext ergänzen: **"Vorschaubilder zeigen das helle Design"**.

### Unterseite: `Einstellungen -> Stundenplan`

- **Optimierung:** Die Erläuterung zu _"ZP-Schätzung"_ ist ein langer Textblock. Die Radio-Buttons (_"Einmal"_, _"Keine"_) sind ohne den Text unverständlich.
- **Vorschlag:** Radio-Buttons selbsterklärend beschriften, z.B. **"Nur am 3. Modultag schätzen"** statt _"Einmal"_.

### Unterseite: `Einstellungen -> Benachrichtigungen`

- **Optimierung:** Button _"Test-Benachrichtigung"_ fehlt das Verb. Das Wort _"Wunschnote"_ ist im schulischen Kontext ungenau.
- **Vorschlag:** Button in **"Test-Benachrichtigung senden"** ändern; Label in **"Zielnote"** umbenennen.

### Unterseite: `Einstellungen -> Synchronisation & Daten`

- **Optimierung:** Die Aktion _"Lokale Daten: Alles löschen"_ löscht Daten sofort ohne sichtbaren Schutz.
- **Vorschlag:** Bestätigungs-Modal einbauen: **"Alle lokalen Daten löschen?"** mit den Buttons **[Abbrechen]** und **[Unwiderruflich löschen]**.

## 3. UX Writing Review-Matrix

| Unterseite         | Ist-Zustand                                        | UX Writing Vorschlag                                            | Nutzen                                      |
| :----------------- | :------------------------------------------------- | :-------------------------------------------------------------- | :------------------------------------------ |
| Prüfungen          | `[gestrichelt] = geschätzt, Klick zum Korrigieren` | `"Gestrichelte Termine sind geschätzt. Tippen zum Bearbeiten."` | Touch-gerecht und verständlich.             |
| Noten              | `...in ZP + Projekt + Praesentation...`            | `"...in den verbleibenden Prüfungen..."`                        | Behebt Tippfehler und verbessert Lesefluss. |
| Noten              | `Nötig für:`                                       | `"Benötigter Schnitt für Zielnote:"`                            | Macht den Zweck der Noten-Buttons klar.     |
| Absenzen           | `Zu entschuldigen: nichts offen`                   | `"Keine offenen Absenzen"`                                      | Positiv und schneller erfassbar.            |
| Räume              | `Neu laden`                                        | `"Ansicht aktualisieren"`                                       | Eindeutige Funktionsbeschreibung.           |
| Darstellung        | Helle Vorschau-Karten im Dark Mode                 | `"Vorschaubilder zeigen das helle Design"`                      | Verhindert Verwirrung beim Design-Wechsel.  |
| Stundenplan        | ZP-Schätzung: `Einmal`                             | `"Nur am 3. Modultag schätzen"`                                 | Eigenständig verständliche Option.          |
| Benachrichtigungen | `Test-Benachrichtigung`                            | `"Test-Benachrichtigung senden"`                                | Aktionsorientierte Button-Beschriftung.     |
| Daten              | `Alles löschen`                                    | `"Alle lokalen Daten löschen"`(mit Modal)                       | Schützt vor versehentlichem Datenverlust.   |

## 4. Whiteboard-Aufbau für eure Präsentation

- Spalte 1 (Positiv): Relative Zeitangaben bei Prüfungen, klare KPI-Kacheln bei den Noten, übersichtliche Raum-Legenden.
- Spalte 2 (UX Writing Fixes): Korrektur von Tippfehlern (`Praesentation`), Ersetzen von PC-Begriffen (`Klick` -> `Tippen`), Ausformulierung unklarer Buttons.
- Spalte 3 (UI/UX Konsistenz): Dark-Mode-Inkonsistenz der Style-Vorschauen adressieren, Bestätigungsdialoge für Löschaktionen hinzufügen.
