# Modul 241

## SideQuest 1A bis 1C

### 1. Zusammenhang Innovation <-> Wettbewerbsfähigkeit

- Innovation = neue/verbesserte Produkte, Services oder Prozesse
- Führt zu: Differenzierung, Kostenvorteilen, höherer Qualität
- Ergebnis: Mehr Marktanteil, höhere Gewinne, langfristige Sicherung

### 2. Beispiele & Gründe (aktueller Markt)

Erfolgreich:

- Apple (iPhone-Ökosystem) -> starke Marke, Benutzerfreundlichkeit, eigenes System
- Tesla -> Technologievorsprung, klare Vision, Software-Fokus

Gescheitert:

- WeWork -> falsches Geschäftsmodell, hohe Kosten
- Nokia (Smartphone-Übergang verpasst) -> zu langsam, Marktveränderung unterschätzt

### 3. Umstände, die Innovation ermöglichen oder behindern

Fördernd:

- Offene Unternehmenskultur
- Fehlertoleranz
- Gute Kommunikation
- Investitionen in Forschung & Entwicklung

Hindernd:

- Starre Hierarchien
- Angst vor Fehlern
- Budgetmangel
- Widerstand gegen Veränderung

## SideQuest 5A

### 1. Sekundärmarktforschung (Desk Research)

#### Ziele der Forschung

- **Status Quo verstehen:** Warum ist die aktuelle Bedienung umständlich?
- **Marktvergleich:** Was machen moderne Portale für Eltern und Schüler intuitiver?
- **Sicherheitsstandards:** Wie lange darf eine Session aus Datenschutzsicht in Schulen offen bleiben?

#### Vorgehensplan

1.  **Interne Analyse:** Auswertung von alten Support-Anfragen und Beschwerden von Lehrern und Schülern.
2.  **Konkurrenzanalyse:** Recherche von 3 Mitbewerbern (z. B. Pupil, SchoolFox). Wie lösen diese das Login-Problem?
3.  **Best Practices:** Suche nach UX-Design-Richtlinien für Software, die von verschiedenen Generationen (Schüler bis Grosseltern) genutzt wird.

#### Liste möglicher Datenquellen

- **Intern:** Feedback-Protokolle der IT-Abteilung, Nutzungsstatistiken der Tocco-Module.
- **Extern:** Fachartikel zur "Digitalisierung an Schulen", öffentliche Testberichte von Schulsoftware, Foren für Lehrkräfte.

#### Vertieftes Thema: "User Experience für Gelegenheitsnutzer (Eltern)"

Eltern nutzen die Software nicht täglich. Die Recherche zeigt: Für diese Gruppe muss die Software **selbsterklärend** sein (keine Handbücher). Wichtigste Erkenntnis: Ein "Mobile-First"-Ansatz ist Pflicht, da Eltern Noten meist am Smartphone checken.

#### Fazit & Auswertung

Die Recherche bestätigt, dass die aktuelle Tocco-Konfiguration zu sehr auf Verwaltung und zu wenig auf "Endnutzer" (Lehrer/Eltern) ausgelegt ist. Die Ziele müssen auf **Reduktion der Klicks** und **stabile Logins** fokussiert werden.

### 2. Primärmarktforschung (Field Research)

#### Konkrete Massnahme

Wir führen eine **strukturierte Online-Umfrage** durch, ergänzt durch **Fokusgruppen-Interviews** mit Vertretern aller Nutzergruppen (Lehrperson, Schüler, Elternteil).

#### Ziele der Forschung

- Ermittlung der meistgenutzten Funktionen (Was muss auf das Dashboard?).
- Messung der Akzeptanz für neue Login-Methoden (z. B. "Angemeldet bleiben"-Option).
- Abfrage der Erwartungshaltung der Eltern an das neue Portal.

#### Vorgehensplan

1.  **Design-Phase:** Erstellung der Umfrage-Logik (Wer sieht welche Fragen?).
2.  **Feldphase:** Versand der Umfrage über die bestehenden Microsoft-Schulaccounts.
3.  **Analyse:** Auswertung der Daten: Wo überschneiden sich die Wünsche von Lehrern und Eltern?

### 3. Umsetzung: Ziel, Personas & Umfrage

#### Gewähltes Forschungsziel

> "Erhöhung der Nutzerzufriedenheit durch Optimierung des Logins und Vereinfachung der Kernprozesse (Noten/Absenzen)."

#### Definition der Personas

| Merkmal         | Persona A: "Lehrer Lukas"           | Persona B: "Mutter Martina"           |
| --------------- | ----------------------------------- | ------------------------------------- |
| **Nutzer-Typ**  | Power-User (täglich)                | Gelegenheitsnutzer (wöchentlich)      |
| **Hauptziel**   | Schnelle Noteneingabe ohne Re-Login | Überblick über den Erfolg des Kindes  |
| **Frustration** | Logout während des Unterrichts      | Komplizierter Microsoft-Login-Prozess |

#### Repräsentative Umfrage (Aufbau in Forms)

Hier ist das Gerüst für dein **Microsoft Forms**:

**Sektion 1: Filter & Häufigkeit**

- **Frage 1:** In welcher Rolle nutzen Sie die Software? (Lehrer / Schüler / Verwaltung / Eltern)
- **Frage 2:** Wie oft nutzen Sie Tocco pro Woche? (Täglich / 2-3 Mal / Selten)

**Sektion 2: Das Login-Problem (Fokus UX)**

- **Frage 3:** Auf einer Skala von 1-5: Wie stark stört Sie die Notwendigkeit, sich nach Inaktivität neu anzumelden?
- **Frage 4 (Logik):** Wenn Sie "Stark störend" gewählt haben: In welcher Situation behindert Sie das am meisten? (Freitext)

**Sektion 3: Funktionen für die Modernisierung**

- **Frage 5:** Welche Funktion muss mit **einem Klick** erreichbar sein? (Noten / Absenzen / Stundenplan / Dokumente)
- **Frage 6 (Spezifisch für Eltern):** Wäre es für Sie hilfreich, Push-Benachrichtigungen bei neuen Noten zu erhalten? (Ja / Nein)

**Sektion 4: Repräsentativität & Abschluss**

- **Frage 7:** Welches Gerät nutzen Sie primär für Tocco? (PC / Tablet / Smartphone)
- **Frage 8:** Haben Sie weitere Anmerkungen zur Verbesserung der Bedienbarkeit?

### Fazit der Recherche

Die Kombination aus Sekundär- und Primärdaten wird zeigen, dass Technik (Microsoft OAuth) und Design (Tocco UI) besser synchronisiert werden müssen. Das Ergebnis ist ein **Anforderungskatalog**, der das Login-Verhalten benutzerfreundlicher macht und das Eltern-Modul exakt nach deren Bedürfnissen (Einfachheit & Push) gestaltet.

**Soll ich dir noch dabei helfen, wie du diese Ergebnisse am besten vor der Schulleitung präsentierst?**
