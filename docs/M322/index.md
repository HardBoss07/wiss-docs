# Modul 322 - Benutzerschnittstellen entwerfen und implementieren

## 322-1A SideQuest: Relevanz und Kriterien von Usability & User Experience

### 1. Analyse der Praxisbeispiele (Was ist schiefgelaufen?)

| Beispiel                        | Hauptproblem / Ursache                                                                                         | Auswirkung auf die Nutzung                                                     | Usability- / UX-Fehler                                                                                      |
| ------------------------------- | -------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------- |
| **Hawaii Missile Alert**        | Keine visueller Unterschied zwischen Test- und Echtzeit-Optionen; schlechte Menüstruktur im Dropdown.          | Falschalarm über Raketenangriff versetzt Bevölkerung in Panik.                 | Mangel an Fehlervermeidung (Missing Error Prevention), fehlende Bestätigungsstufen bei kritischen Aktionen. |
| **The worst volume control UI** | Zweckentfremdung von Bedienelementen (z.B. Lautstärke pumpen, würfeln oder steuern).                           | Extrem hohe Frustration, genaue Einstellung fast unmöglich.                    | Verletzung von Standards/Mentalmodellen, fehlende Erwartungskonformität.                                    |
| **User Inyerface**              | Bewusster Einsatz von Dark Patterns (z.B. vertauschte Primary-/Secondary-Buttons, verwirrende Timer).          | Nutzer werden manipuliert, blockiert und zur Verzweiflung gebracht.            | Verstoss gegen Barrierefreiheit, irreführende Affordance (Gebrauchseigenschaften), fehlende Transparenz.    |
| **LinkedIn Einstellungen**      | Überkomplexe Informationsarchitektur, hunderte Schalter tief in Untermenüs verschachtelt.                      | Nutzer geben auf, Benachrichtigungen gezielt zu verwalten (Opt-out erschwert). | Unübersichtlichkeit, hohe kognitive Belastung (Cognitive Overload), versteckte Einstellungsoptionen.        |
| **Racist Soap Dispenser**       | Infrarotsensor reagierte rein auf Lichtreflexion heller Haut und wurde nicht mit dunkleren Hauttypen getestet. | Seifenspender verweigert die Funktion bei Menschen mit dunkler Hautfarbe.      | Fehlende Inklusion, unzureichende Testgruppen (Bias bei der Hardware-Entwicklung).                          |

### 2. Kriterien für gute UX / Usability (Post-It Sammlung)

#### Sinnvolle Kriterien (Messbar & Konkret)

- **Konsistenz & Erwartungskonformität:** Bedienelemente verhalten sich plattformübergreifend und innerhalb der Applikation stets identisch und folgen etablierten Standards (z.B. Suchfeld oben rechts, Abbrechen-Button links).
- **Fehlervermeidung & Fehlertoleranz:** Kritische Aktionen verlangen eine explizite Bestätigung. Fehleingaben werden abgefangen und bieten klare, konstruktive Lösungsvorschläge.
- **Sichtbarkeit des Systemstatus (Feedback):** Das System informiert die nutzende Person jederzeit in angemessener Zeit darüber, was gerade passiert (z.B. Ladebalken, Erfolgsmeldungen).
- **Barrierefreiheit (Accessibility):** Die Benutzeroberfläche ist für alle Menschen nutzbar – unabhängig von körperlichen Einschränkungen, Geräten oder Umgebungsbedingungen (z.B. ausreichender Kontrast, Screenreader-Support).
- **Aufgabenangemessenheit & Effizienz:** Nutzer erreichen ihr Ziel ohne unnötige Klicks, Zwischenschritte oder visuelle Ablenkungen.

#### Ungeeignete / Problematische Kriterien (Zu schwammig & Subjektiv)

- **Intuitiv bedienbar:** Sehr subjektiv. Was für eine Person intuitiv ist, basiert rein auf deren Vorwissen und bisherigen Erfahrungen. Für eine andere Zielgruppe ist es unverständlich. **Besser:** Erwartungskonform.
- **Schön / Modern:** Das visuelle Design sagt nichts darüber aus, ob die Benutzeroberfläche funktional oder effizient bedienbar ist (Visuelle Ästhetik $\ne$ Nutzbarkeit).
- **Einfach:** Zu unpräzise. Komplexe Fachanwendungen können nicht "einfach" sein, müssen aber dennoch strukturierte Abläufe bieten.
- **Selbsterklärend:** Verleitet Entwickler dazu, auf hilfreiche Dokumentationen, Werkzeugtipps (Tooltips) oder Onboarding-Prozesse zu verzichten.

### 3. Zusammenfassung & Einordnung

Gute Usability entsteht nicht durch Zufall oder rein subjektives Ansprechen, sondern durch die konsequente Einhaltung von Richtlinien (z.B. **ISO 9241-110** Grundsätze der Dialoggestaltung).

Schlechte Usability führt im besten Fall zu Frustration und Verwirrung, im schlimmsten Fall (wie bei Notfall- oder Medizinsystemen) zu schwerwiegenden Fehlentscheidungen mit fatalen Konsequenzen.

## 322-1B SideQuest (Ergänzung): Begriffsdefinitionen und UX-Modelle

### 1. Abgrenzung der Kernbegriffe (UX vs. Usability vs. UI)

| Begriff                               | Norm / Quelle            | Definition & Fokus                                                                                                                                                                                                     | Zeitlicher Horizont                                                                                     |
| ------------------------------------- | ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| **User Experience (UX)**              | ISO 9241-210:2010        | Wahrnehmungen und Reaktionen einer Person vor, während und nach der tatsächlichen oder erwarteten Benutzung eines Produkts. Umfasst Emotionen, Vorlieben, physiologische/psychologische Reaktionen und das Markenbild. | **Gesamter Lebenszyklus:** Pre-Use (Erwartung), Use (Nutzung) und Post-Use (Erinnerung/Identifikation). |
| **Usability (Gebrauchstauglichkeit)** | ISO 9241-11:2018         | Ausmass, in dem ein Produkt durch bestimmte Benutzer in einem bestimmten Nutzungskontext genutzt werden kann, um bestimmte Ziele effektiv, effizient und mit Zufriedenheit zu erreichen.                               | **Während der Nutzung:** Fokus auf Aufgabenlösung, Fehlerfreiheit und Effizienz.                        |
| **User Interface (UI)**               | Technische Schnittstelle | Die physische oder digitale Oberfläche (Screens, Buttons, Typografie, Abstände), über die der Mensch mit dem System interagiert.                                                                                       | **Moment der Interaktion:** Rein visuelle, haptische und akustische Bedienelemente.                     |

**Kernerkenntnis:** Usability ist ein messbarer Teilaspekt der User Experience. Ein Produkt kann hochgradig benutzbar (effizient) sein, aber dennoch eine schlechte UX erzeugen (z.B. wenn das Produkt emotional nicht anspricht oder das Aufsetzen vor der Nutzung extrem frustrierend ist).

### 2. Klassische UX-Modelle im Überblick

#### A. Jesse James Garrett: The Elements of User Experience ("5S-Modell")

Das Modell beschreibt den Entwurfsprozess einer digitalen Benutzeroberfläche von der abstrakten Idee (unten) bis zum konkreten Endprodukt (oben):

```text
  +-------------------------------------------------------+
  | 5. Surface (Oberfläche)   - Visuelles Design          |  Konkret
  +-------------------------------------------------------+     ^
  | 4. Skeleton (Skelett)     - Interface & Nav-Design    |     |
  +-------------------------------------------------------+     |
  | 3. Structure (Struktur)   - Informationsarchitektur   |     |
  +-------------------------------------------------------+     |
  | 2. Scope (Umfang)         - Funktionale Anforderungen |     |
  +-------------------------------------------------------+     |
  | 1. Strategy (Strategie)   - Nutzerbedürfnisse & Ziele |  Abstrakt
  +-------------------------------------------------------+
```

- **Strategy (Strategie):** Was wollen die Nutzer? Was will das Unternehmen?
- **Scope (Umfang):** Welche Features und Inhalte sind erforderlich, um die Strategie umzusetzen?
- **Structure (Struktur):** Wie reagiert das System auf Eingaben (Interaktionsdesign) und wie sind Informationen gegliedert (Informationsarchitektur)?
- **Skeleton (Skelett):** Wie werden Elemente auf dem Bildschirm angeordnet (Wireframes, Anordnung von Buttons und Navigation)?
- **Surface (Oberfläche):** Wie sieht das Endprodukt visuell aus (Farben, Typografie, Layouts)?

#### B. Peter Morville: The UX Honeycomb

Die UX-Wabe fasst die sieben Facetten zusammen, die eine hervorragende User Experience ausmachen:

| Facette                       | Bedeutung                                                                                            |
| :---------------------------- | :--------------------------------------------------------------------------------------------------- |
| **Useful (Nützlich)**         | Das Produkt erfüllt einen konkreten Zweck und hat einen realen Nutzen für die Zielgruppe.            |
| **Usable (Benutzbar)**        | Die Bedienung ist einfach, intuitiv und fehlerarm (Usability).                                       |
| **Desirable (Begehrenswert)** | Das visuelle Design, die Marke und die Identifikation wecken positive Emotionen.                     |
| **Findable (Auffindbar)**     | Inhalte und Funktionen sind leicht navigierbar und schnell auffindbar.                               |
| **Accessible (Zugänglich)**   | Das Produkt ist barrierefrei für Menschen mit Einschränkungen nutzbar.                               |
| **Credible (Glaubwürdig)**    | Das System wirkt vertrauenswürdig und sicher (z.B. klare Datenschutzangaben).                        |
| **Valuable (Wertvoll)**       | Das Produkt schafft Wert für den Kunden sowie einen geschäftlichen Ertrag (ROI) für das Unternehmen. |

### 3. Einordnung: User Journey Mapping

Das **User Journey Mapping** ist eine visuelle Methode, um den chronologischen Ablauf (die "Reise") eines Nutzers bei der Interaktion mit einem Produkt über verschiedene Touchpoints hinweg zu dokumentieren.

- **Verknüpfung zu ISO 9241-210:** Die Journey Map macht die in der Norm geforderten Phasen (_vor, während und nach der Nutzung_) sichtbar.
- **Nutzen im Entwicklungsprozess:** Sie deckt Wissenslücken, emotionale Tiefpunkte (Pain Points) und Medienbrüche auf, indem sie Aktionen, Gedanken, Emotionen und Systemreaktionen in einer gemeinsamen Matrix zusammenführt.

## 322-1C SideQuest: User-Centered Design (UCD) in der Praxis

### 1. Der UCD-Prozess nach ISO 9241-210

Der **User-Centered Design (UCD)** Prozess ist ein iterativer Gestaltungskreislauf, der die nutzenden Personen und deren Anforderungen in den Mittelpunkt aller Entwicklungsphasen stellt.

```text
               +-----------------------------------+
               |  1. Nutzungskontext verstehen     |
               |     und beschreiben               |
               +-----------------+-----------------+
                                 |
                                 v
               +-----------------+-----------------+
               |  2. Nutzungsanforderungen         |
               |     spezifizieren                 |
               +-----------------+-----------------+
                                 |
                                 v
+--------------+ +---------------+-------------------+
| Erfüllt      | |  3. Gestaltungslösungen           |
| Anforderungen| |     erzeugen (Prototyping)        |
+-----^--------+ +---------------+-------------------+
      |                          |
      |                          v
      |        +-----------------+-----------------+
      +--------|  4. Gestaltungslösungen           |
   Ja          |     evaluieren (Testing)          |
               +-----------------+-----------------+
                                 |
                                 +---> Nein (Iteration)
```

### 2. Analyse der Fallstudie: KI-gestützter Software-Assistent in der Radiologie

#### A. Einbindung der Nutzerinnen und Nutzer im UCD-Prozess

| UCD-Phase          | Eingesetzte Methoden                                               | Konkrete Einbindung der Fachkräfte (Radiologen / MTRA)                                                                                  |
| :----------------- | :----------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------- |
| 1. Nutzungskontext | Kontextinterviews & Arbeitsplatzbeobachtungen (Contextual Inquiry) | Vor-Ort-Analysen im Spitalalltag: Erfassung von Stressfaktoren, Raumbeleuchtung, Blickverläufen und Multitasking während der Befundung. |
| 2. Anforderungen   | Requirement-Workshop & Persona-Erstellung                          | Übersetzung medizinischer Fachabläufe in technische Anforderungen. Fokus auf nahtlose Integration in bestehende PACS/RIS-Systeme.       |
| 3. Gestaltung      | Papier-Prototypen & interaktive Wireframes                         | Frühzeitiges Durchspielen von Layout-Skizzen mit Radiologen, um Informationsdichte und KI-Vorschläge optimal anzuordnen.                |
| 4. Evaluation      | Usability-Tests mit Klick-Prototypen                               | Simulator-Tests unter realistischen Bedingungen: Bewertung von Wahrnehmbarkeit, Verlässlichkeit und Klickpfaden bei KI-Analysen.        |

#### B. Einfluss der Nutzereinbindung auf den Entwicklungsverlauf und das Ergebnis

- **Vermeidung klinischer Fehlannahmen:** Ohne die Vor-Ort-Beobachtung hätte das Entwicklungs-Team womöglich eine visuell überladene Schnittstelle gebaut. Die Praxis zeigte, dass Radiologische Befundungsräume stark abgedunkelt sind und Farbkontraste extrem präzise gewählt werden müssen.
- **Akzeptanz der Künstlichen Intelligenz (Erklärbarkeit):** Radiologen vertrauen einer "Black Box" nicht. Durch das Feedback der Nutzenden wurde die KI von einer automatischen Entscheidungshilfe zu einem transparenten Assistenten umgestaltet, der seine Trefferquote und Indikatoren nachvollziehbar begründet (Explainable AI).
- **Effizienz im Klinikalltag:** Unnötige Klicks wurden strikt eliminiert. Das System schlägt relevante Befundbereiche automatisch vor, ohne den etablierten Prüfablauf des Arztes zu unterbrechen oder aufzudrängen.

## 322-1D SideQuest: Barrierefreiheit und Accessibility (WCAG)

### 1. Grundlagen der Barrierefreiheit & Schweizer Kontext

#### Begriffsdefinitionen & Bedeutung

- **Barrierefreiheit (Accessibility / A11y):** Die Gestaltung von Systemen, Webseiten und Anwendungen so, dass sie von allen Menschen – unabhängig von körperlichen, sensorischen oder kognitiven Einschränkungen – ohne fremde Hilfe genutzt werden können.
- **E-Inclusion & Digital Gap:** Digitalisierung betrifft alle Lebensbereiche (Behörden, Banking, ÖV). Fehlt die Barrierefreiheit, werden Menschen mit Beeinträchtigungen von der digitalen Gesellschaft ausgeschlossen (Digital Gap).
- **Assistierende Technologien:** Werkzeuge wie Screenreader (z.B. NVDA, JAWS), Braillezeilen, Bildschirmlupen, Eye-Tracking oder spezielle Schaltersteuerung, die auf strukturierten Code angewiesen sind.

#### Rechtlicher Rahmen in der Schweiz

- **Bundesverfassung (Art. 8 Abs. 2 BV):** Diskriminierungsverbot aufgrund einer körperlichen, geistigen oder psychischen Behinderung.
- **Behindertengleichstellungsgesetz (BehiG):** Verpflichtet das Gemeinwesen, Dienstleistungen und Informationen barrierefrei anzubieten.
- **E-Government-Standard eCH-0059:** Schreibt für Behördenwebsites die Einhaltung der WCAG-Richtlinien (mindestens Level AA) verbindlich vor.

### 2. Die 4 WCAG-Prinzipien (POUR) im Überblick

| Prinzip                          | Kernfokus                                                                                                                | Konkrete Anforderungen                                                                                                           | Praxisbeispiele                                                                                                                             |
| :------------------------------- | :----------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------ |
| 1. Wahrnehmbar _(Perceivable)_   | Informationen und UI-Komponenten müssen den Nutzenden so präsentiert werden, dass sie sie wahrnehmen können.             | Alt-Texte für Bilder, Untertitel für Audios/Videos, Farbkontraste (mind. 4.5:1), anpassbare Textgrössen.                         | Ein E-Commerce-Shop hinterlegt bei einem Produktbild den Alt-Text Akkuschrauber 18V inkl. Koffer, statt das Feld leer zu lassen.            |
| 2. Bedienbar _(Operable)_        | Komponenten der Benutzeroberfläche und Navigation müssen bedienbar sein.                                                 | Vollständige Tastaturbedienbarkeit, sichtbarer Fokus-Indikator, ausreichende Zeitlimits, Vermeidung von Flackern (Anfallschutz). | Ein Registrierungsformular lässt sich ohne Maus rein mit der Tab- und Eingabetaste ausfüllen und absenden.                                  |
| 3. Verstehbar _(Understandable)_ | Informationen und die Bedienung der Benutzeroberfläche müssen verständlich sein.                                         | Lesbare & einfache Sprache, konsistente Navigationsmuster, direkte Fehlererkennung & verständliche Korrekturhinweise.            | Ein Formular zeigt bei einer falschen E-Mail-Eingabe direkt an: _"Bitte geben Sie ein @-Zeichen in der Adresse ein"_.                       |
| 4. Robust _(Robust)_             | Inhalte müssen robust genug sein, damit sie von verschiedenen User-Agenten inkl. Hilfsmitteln verarbeitet werden können. | Standardkonformes, valides HTML5, korrekte Nutzung von ARIA-Attributen, Kompatibilität mit Screenreadern.                        | Ein Modal-Dialog nutzt das semantische Tag `<dialog>` oder entsprechende role="dialog" Attribute, damit der Screenreader den Modus erkennt. |

## 322-02A SideQuest: Analyse I – Nutzungskontext verstehen & Nutzerforschung (Film-, Serien- & Anime-App)

### 1. Grundlagen der Nutzerforschung (User Research)

#### Wozu dient Nutzerforschung?

Nutzerforschung bildet das Fundament des User-Centered Design (UCD). Sie verhindert, dass Entwicklungsentscheidungen auf Annahmen oder dem _False-Consensus-Effect_ basieren. Ziel ist das systematische Erfassen von **Bedürfnissen, Gewohnheiten, mentalen Modellen und Hürden** der Zielgruppe bei der Suche nach Filmen, Serien und Animes.

#### Qualitative vs. Quantitative Methoden

| Merkmal        | Qualitative Methoden                                                           | Quantitative Methoden                                                                     |
| :------------- | :----------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------- |
| **Fokus**      | Verstehen von Verhaltensweisen, Emotionen und Ursachen (_Warum_ & _Wie_).      | Messung von Häufigkeiten, Verteilungen und Leistungsindikatoren (_Wie viel_ & _Wie oft_). |
| **Methoden**   | Kontextuelle Interviews, Beobachtungen, Tagebuchstudien.                       | Online-Umfragen, Web Analytics, A/B-Tests.                                                |
| **Stichprobe** | Klein (z.B. 4 qualitative Interviews zur Rekonstruktion von Suchmuster-Typen). | Gross (statistisch repräsentative Stichproben).                                           |
| **Ergebnis**   | Tiefe Einblicke, Aufdecken verdeckter Bedürfnisse, Mentale Modelle.            | Statistische Absicherung, Prozentwerte, Konversionsraten.                                 |

### 2. Interviewleitfaden (Eigener Projektkontext: Film-, Serien- & Anime-App)

Der verwendete Interviewleitfaden umfasst folgende Strukturfragen:

> 1. **Erzähl mir vom letzten Mal, als du nach einem neuen Film, einer Serie oder einem Anime gesucht hast.**
> 2. **Wie findest du normalerweise neue Filme, Serien oder Anime?** (Freunde, TikTok/Instagram, Netflix/Crunchyroll, Bewertungen, etc.)
> 3. **Was ist für dich am schwierigsten, wenn du etwas Neues zum Anschauen suchst?**
> 4. **Welche Eigenschaften sind dir bei einem Film oder einer Serie wichtig?** (Genre, Länge, Bewertung, Schauspieler, Stimmung, Sprache, Erscheinungsjahr)
> 5. **Wie entscheidest du, ob du einen Film oder eine Serie anschauen möchtest?**
> 6. **Wie lange suchst du normalerweise, bis du etwas gefunden hast?**
> 7. **Was nervt dich an den Empfehlungen von Streaming-Plattformen?**
> 8. **Wie merkst du dir Filme oder Serien, die du später anschauen möchtest?**
> 9. **Wie wichtig sind dir Empfehlungen, die genau zu deinen Interessen passen? Warum?**
> 10. **Was müsste eine App können, damit sie dir die Suche nach einem Film oder einer Serie erleichtert?**
> 11. **Wie würdest du gerne neue Filme oder Serien bewerten oder auswählen?**
> 12. **Was wäre für dich ein absolutes No-Go bei einer solchen App?**
> 13. **Möchtest du noch etwas ergänzen, das dir beim Finden von Filmen, Serien oder Anime wichtig ist?**

### 3. Synthese der Interviewergebnisse (Konsolidierte Erkenntnisse aus 4 Interviews)

Auf Basis der 4 durchgeführten Interviews wurden folgende Kernerkenntnisse synthetisiert:

- **Suchwege & Inspiration:** TikTok/Social Media sowie direkte Empfehlungen spielen eine zentrale Rolle. Viele Entscheidungen fallen spontan durch packende Video-Clips oder Vorschau-Szenen.
- **Grösste Hürden:** Verunsicherung bezüglich Filmqualität, mühsame Suche nach Verfügbarkeiten (wo läuft der Film/wo gibt es eine deutsche Tonspur) und die aufwendige Gratis-Suche.
- **Kritik an bestehenden Streaming-Diensten:** Starre Algorithmen drängen Nutzer in Filterblasen, reagieren falsch auf Abbrüche und bieten zu wenig Treffer, die wirklich zum aktuellen Geschmack passen.
- **Merklisten-Verhalten:** Sehr uneinheitlich und unstrukturiert (von der iOS-Notizen-App über Screenshots bis zu Plattform-Merklisten).
- **Wunsch-Features:**
  - Schnelles Matching über ein Swipe-Prinzip (Tinder-Mechanismus).
  - Übersichtliche Plattform-Verfügbarkeit & Sprachauswahl (z.B. deutsche Tonspur).
  - Kurze Bewertungen (Sterne + max. 100 Zeichen Kommentar).
  - Soziale Features zum Teilen von Filmtipps mit Freunden.
- **Absolute No-Gos:** Komplexes/überladenes Design, störende Paywalls/Zahlungsaufforderungen, Werbung und externe Weiterleitungen.

## 322-02B SideQuest: Analyse II – Nutzungsanforderungen & Personas (Projektkontext)

### 1. Gruppierung der Bedürfnisse

Aus den Interviewergebnissen wurden drei Hauptgruppen abgeleitet:

- **Gruppe A: Effiziente Struktur & Verlässlichkeit (Fokus: Legal & Übersichtlich)**
  - Schnelles Finden von Titeln ohne langes Suchen.
  - Transparente Details zu Verfügbarkeiten (z.B. deutsche Tonspur, Erscheinungsdaten).
  - Übersichtliche Merklisten und Speichermöglichkeiten.
- **Gruppe B: Impulsive Inspiration & Community (Fokus: Social & Trend)**
  - Entdecken über prägnante Szenen/Clips (TikTok/Social Media) oder Film-Listen.
  - Einfaches Teilen von Filmen und Serien mit Freunden.
  - Schnelle, unkomplizierte Bewertung (z.B. Sterne mit kurzem Kommentar).
- **Gruppe C: Extrem-Personalisierung & Alternative Wege (Fokus: Inoffiziell & Algorithmus)**
  - Kostenloses Anschauen / Auffinden alternativer Quellen.
  - Radikale Personalisierung (z.B. Nutzung persönlicher Daten zur Algorithmus-Optimierung).
  - Playful-Interaktionsformen (z.B. Tinder-Swipe-Prinzip zur Filmauswahl).

### 2. Projekt-Personas

#### Primäre Persona: Ottavio (Fokussierter Plattform-Nutzer)

| Eigenschaft             | Ausprägung / Details                                                                                                           |
| :---------------------- | :----------------------------------------------------------------------------------------------------------------------------- |
| **Name & Alter**        | Ottavio (22 Jahre)                                                                                                             |
| **Beruf & Rolle**       | KV-Angestellter im Kundendienst                                                                                                |
| **Wohnsituation**       | Wohnt in einer WG in Zürich, nutzt verschiedene Abos (Netflix, Prime Video, Apple TV)                                          |
| **Leitzitat**           | _"Ich will in wenigen Minuten einen guten Film auf Deutsch finden, ohne lange suchen zu müssen."_                              |
| **Hauptbedürfnis**      | Klare Informationen über Plattform-Verfügbarkeiten, deutsche Tonspuren und einfache Merklisten                                 |
| **Erwartungen**         | Gute Visuals (Coverbilder), kurze Beschreibungen, schnelle Navigation                                                          |
| **Grösster Pain Point** | Zeitverlust durch schlechte Empfehlungen; Werbung oder Weiterleitung auf Drittseiten                                           |
| **Befürchtungen**       | Nutzlose Suchzeit am Feierabend ohne passendes Ergebnis                                                                        |
| **Anwendungsfall 1**    | **Spontaner Feierabend-Stream:** Sucht gezielt nach einer Serie mit kurzen Episoden, die direkt auf seinen aktiven Abos läuft. |
| **Anwendungsfall 2**    | **Merkliste verwalten:** Speichert interessante Filme unterwegs ab, um abends direkt einzusteigen.                             |

#### Sekundäre Persona: Dario (Social-Discoverer)

| Eigenschaft             | Ausprägung / Details                                                                                      |
| :---------------------- | :-------------------------------------------------------------------------------------------------------- |
| **Name & Alter**        | Dario (19 Jahre)                                                                                          |
| **Beruf & Rolle**       | Informatik-Lernender im 3. Lehrjahr                                                                       |
| **Wohnsituation**       | Wohnt bei seinen Eltern, schaut abends gerne Filme mit seiner Freundin                                    |
| **Leitzitat**           | _"Wenn mich ein TikTok-Clip packt, will ich den Film sofort abspeichern und mit meinen Freunden teilen."_ |
| **Hauptbedürfnis**      | Impulsives Entdecken über Clips/Top-100-Listen, unkompliziertes Teilen mit Freunden                       |
| **Erwartungen**         | Schnelle Bewertung (Sterne + Kurzkommentar), schlankes Design                                             |
| **Grösster Pain Point** | Überladenes Design, aufdringliche Bezahlschranken, unvariable Algorithmen                                 |
| **Befürchtungen**       | In Filterblasen gefangen zu sein                                                                          |
| **Anwendungsfall 1**    | **Gemeinsamer Filmabend:** Geht eine Liste von Empfehlungen durch, um rasch etwas Passendes auszuwählen.  |
| **Anwendungsfall 2**    | **Favoriten teilen:** Sendet entdeckte Titel unkompliziert an Freunde weiter.                             |

#### Negativ-Persona: Marc (Anti-Persona: Der Raubkopierer)

| Eigenschaft                   | Ausprägung / Details                                                                                                                                            |
| :---------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Name & Alter**              | Marc (24 Jahre)                                                                                                                                                 |
| **Beruf & Rolle**             | Informatik-Student                                                                                                                                              |
| **Wohnsituation**             | Wohnt alleine im Studentenwohnheim, nutzt primär inoffizielle Streaming-Seiten                                                                                  |
| **Leitzitat**                 | _"Ich schaue nur über inoffizielle Quellen und erwarte, dass der Algorithmus exakt zu meinen Vorlieben passt."_                                                 |
| **Hauptgrund gegen Einbezug** | Seine Hauptmotivation liegt im Auffinden kostenloser/illegaler Quellen. Dies steht im Widerspruch zur Ausrichtung einer legalen Recherche- und Empfehlungs-App. |

## 322-02C SideQuest: Ideengenerierung & Feature-Set unserer App

Basierend auf den Personas (Ottavio & Dario) sowie den Interview-Insights wurde folgendes zentrales Feature-Set erarbeitet:

> 1. **Genre- & Präferenz-Selection nach Sign-up:** Abfrage der Lieblingsgenres und Präferenzen direkt beim ersten App-Start.
> 2. **Swipe-Matching (Tinder-Prinzip):** Rechts-/Linksswipen von Filmen und Serien zur schnellen Ergänzung der eigenen Watchlist.
> 3. **Discover-Mode beim Swipen:** Explizite Option, gezielt andere Genres und neue Kategorien ausserhalb der eigenen Filterblase anzeigen zu lassen.
> 4. **Verfügbarkeits-Check:** Direkte Anzeige, auf welchen Plattformen (Netflix, Prime Video, Apple TV, etc.) der Titel verfügbar ist.
> 5. **Profilansicht & Historie:** Übersicht gesehener Filme, persönliche Watchlist und Anzahl Follower.
> 6. **Discover-Feed & Social-Chat:** In-App-Feed zum Entdecken von Nutzern mit ähnlichem Geschmack inkl. direkter Chat-Funktion.
> 7. **Gamification:** Badges und Level-Systeme für Meilensteine (z.B. _"100 Horrorfilme gesehen"_).
> 8. **Bewertungssystem:** Sterne-Rating (1–10 bzw. 1–5 Sterne) kombiniert mit kurzen Kommentaren (z.B. max. 100 Zeichen).
> 9. **Top-Feeds & Kuratierte Listen:** Generelle Top-Listen (z.B. _"Top 10 Filme aller Zeiten"_, _"Aktuell meistgesehen"_).

## 322-03A SideQuest: Dialoggestaltung & Usability-Grundsätze

### 1. Grundsatz: Aufgabenangemessenheit

Ein System ist aufgabenangemessen, wenn es den Benutzer dabei unterstützt, seine Aufgaben ohne unnötige Klicks oder Ablenkungen zu erledigen.

- **Positiv-Beispiel (Gut gelöst):**
  - **Beobachtung:** Beim Starten eines Meetings oder Anrufs sind Kamera- und Mikrofon-Schalter sowie das Weichzeichnen des Hintergrunds direkt im Vorraum-Bildschirm (_Pre-join Screen_) integriert.
  - **Begründung:** Die Hauptaufgabe ("An einem Meeting teilnehmen, ohne unangenehme Überraschungen bei Bild/Ton") wird direkt unterstützt. Häufig genutzte Einstellungen sind sofort erreichbar, bevor man den Raum betritt.
- **Negativ-Beispiel (Verletzung des Grundsatzes):**
  - **Beobachtung:** Das Suchen nach alten Chat-Nachrichten oder geteilten Dateien in einem Kanal erfordert oft verschachtelte Suchfilter oder das Wechseln zwischen den Tabs "Beiträge" und "Dateien".
  - **Begründung:** Die Arbeitsaufgabe ("Datei X aus Nachricht Y wiederfinden") wird durch verstreute Speicherorte und eine träge Suchfunktion erschwert. Der Arbeitsfluss wird unterbrochen.

### 2. Grundsatz: Selbstbeschreibungsfähigkeit

Ein Dialog ist selbstbeschreibungsfähig, wenn der Benutzer jederzeit sieht, in welchem Zustand das System ist und was die einzelnen Bedienelemente bedeuten.

- **Positiv-Beispiel (Gut gelöst):**
  - **Beobachtung:** Der Präsenzstatus (Grüner Haken _= Verfügbar_, Roter Punkt _= Beschäftigt_, Roter Punkt mit weissem Strich _= Nicht stören_) ist am Profilbild immer sichtbar und verständlich. Auch die Stummschaltung im Call zeigt ein klares durchgestrichenes Mikrofon-Icon.
  - **Begründung:** Der aktuelle Systemzustand (bin ich hörbar? ist die Kollegin erreichbar?) ist jederzeit auf einen Blick ohne zusätzliche Interaktion erkennbar.
- **Negativ-Beispiel (Verletzung des Grundsatzes):**
  - **Beobachtung:** Der Unterschied zwischen "Kanalbeitrag verfassen" und "Auf einen Beitrag antworten" wird oft verwechselt. Neue Nutzer tippen häufig unten in das grosse Eingabefeld, anstatt unter dem Beitrag auf "Antworten" zu klicken.
  - **Begründung:** Die visuelle Hierarchie beschreibt sich nicht von selbst. Nutzer starten ungewollt ein komplett neues Thema, obwohl sie eigentlich auf einen bestehenden Beitrag antworten wollten.

## 322-03D SideQuest: User Story Maps erstellen

### 1. Ziel: Nur Filme und Serien anzeigen lassen, die auf den eigenen aktiven Streaming-Diensten verfügbar sind (z.B. Netflix & Disney+).

- **Einstellungen aufrufen**
  - Profil-/Einstellungs-Icon im Menü anklicken
  - Bereich "Meine Abos & Filter" auswählen
- **Streaming-Dienste filtern**
  - Übersicht der Streaming-Anbieter öffnen
  - Häkchen bei eigenen aktiven Abos setzen (z.B. Netflix, Disney+)
  - Optionale Zusatzfilter wählen (z.B. nur deutsche Tonspur)
- **Filter anwenden**
  - Button "Filter speichern & anwenden" drücken
  - Bestätigung über aktive Filter anzeigen lassen
- **Ergebnisse im Swipe-Deck nutzen**
  - Zurück zum Swipe-Bildschirm navigieren
  - Nur noch gefilterte Filme/Serien durchswipen

### 2. Ziel: Eine gesehene Serie bewerten und eine kurze Empfehlung für andere Nutzer hinterlassen.

- **Serie / Film auswählen**
  - In den Bereich "Gesehen" oder Detailseite navigieren
  - Gewünschten Titel auswählen
- **Bewertung abgeben**
  - Bewertungsschema öffnen (Sterne 1-5 oder 1-10)
  - Sternanzahl auswählen
- **Review schreiben**
  - Textfeld für Kurzkritik anklicken
  - Kurze Bewertung verfassen (max. 100 Zeichen)
  - Optional Spoiler-Warnung-Tag aktivieren
- **Review veröffentlichen**
  - Button "Review veröffentlichen" anklicken
  - Bestätigung anzeigen und Review in der Community sichtbar machen
- **Review im Community Feed anschauen**
  - Community Feed Anklicken
  - Film/Serie aussuchen
  - "Bewertungen" anklicken
  - Filtern nach "Neuste"/"Beste/Schlechteste Bewertung"

### 3. Ziel: Über neue Folgen/Staffeln verfolgter Serien benachrichtigt werden und direkt weiterschauen.

- **Benachrichtigung empfangen**
  - Push-Nachricht erhalten ("Neue Staffel von Stranger Things da!")
  - Nachricht im In-App-Mitteilungszentrum anzeigen
- **Notification öffnen**
  - Auf Push-Mitteilung am Smartphone tippen
  - App öffnet direkt die Detailseite der neuen Staffel
- **Update-Details prüfen**
  - Release-Details & Episodenanzahl lesen
  - Verfügbare Plattformen und Sprachfassung (z.B. DE) prüfen
- **Direkt weiterschauen**
  - Button "Jetzt auf Netflix schauen" drücken
  - Automatische Weiterleitung zur jeweiligen Streaming-App
