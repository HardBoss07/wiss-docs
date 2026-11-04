# UX Writing & Accessibility Review: WatchMatch App

---

# Teil 1: UX Writing & Ergonomie-Review

## 1. Kernerkenntnisse

1. **Starke Motivations-Microcopy:** Gamification-Elemente (_„+20 XP für Review“_, _„Deine Streaming-DNA“_) schaffen hohe Interaktion, benötigen aber stellenweise eindeutigere Beschriftungen.
2. **Verwechslungsgefahr bei Symbolen:** Icons ohne Text-Labels (z. B. `X`, `3`, `+` in den Action-Buttons) lassen Raum für Fehlinterpretationen.
3. **Plattform-Terminologie:** Wörter wie _„Match-Deck Starten“_ oder _„Filme, Serien, Anime durchsuchen...“_ sind gut gewählt, bei Fehlermeldungen und Formularfeldern fehlen jedoch erklärende Hilfetexte.

---

## 2. Review nach Unterseiten / Screens

### Unterseite: `Login & Registrierung` (PDF S. 1)

- **Positiv:** Das Onboarding-Versprechen (_„Keine Abos direkt über die App – wir finden schnell und neutral heraus...“_) nimmt Zahlungsängste.
- **Optimierung:** Der Button _„Weiter mit E-Mail“_ unterscheidet sich optisch und textlich leicht von den Social-Buttons (_„Mit Apple fortfahren“_). Das Label _„Vergessen?“_ beim Passwort ist sehr kurz.
- **UX Writing Vorschlag:** _„Mit E-Mail anmelden“_ sowie _„Passwort vergessen?“_.

### Unterseite: `Filter & Setup / Streaming-DNA` (PDF S. 2 & 21–22)

- **Positiv:** _„Deine Streaming-DNA“_ ist eine ansprechende Headline.
- **Optimierung:** Das Label _„min. 2 wählen“_ bei Genres ist leicht zu übersehen. Der Toggle _„DE-Audio Vorzug / Deutsche Tonspur bevorzugt filtern“_ ist doppelt gemoppelt formuliert.
- **UX Writing Vorschlag:** _„Wähle mindestens 2 Genres“_ als Feld-Hinweis; Toggle-Beschriftung vereinfachen: **„Nur Titel mit deutscher Tonspur anzeigen“**.

### Unterseite: `Match-Deck / Swipe-View` (PDF S. 3–4)

- **Positiv:** _„IT'S A MATCH! Du & Dario M.“_ erzeugt positive Emotionen.
- **Optimierung:** Im Deck stehen unter der Karte vier Symbole (`X`, `3`, `Bewerten`, `+`). Was das Icon `3` bedeutet (evtl. 3 gemeinsame Freunde?), erschliesst sich textlich nicht.
- **UX Writing Vorschlag:** Micro-Tooltips oder Text-Labels unter allen Aktions-Buttons hinzufügen (z. B. _„Ablehnen“_, _„Watchlist“_, _„Bewerten“_, _„Match-Info“_).

### Unterseite: `Suche & Entdecken` (PDF S. 5–6)

- **Positiv:** Genre-Filter-Pills (_Sci-Fi, Anime, Thriller_) und Sektions-Header (_„Beliebt bei Freunden“_, _„Deutsche Synchronisation“_) strukturieren die Suche sauber.
- **Optimierung:** Textkürzungen in Kacheln wirken unsauber (z. B. _„Stranger Thi...“_ oder _„Cyberpunk: E...“_).
- **UX Writing Vorschlag:** Dynamische Textgrössen oder Zeilenumbrüche nutzen, damit Titel nicht mitten im Wort abgeschnitten werden.

### Unterseite: `Social Feed & Direct Chats` (PDF S. 7, 9, 10 & 16)

- **Positiv:** Transparente Spoiler-Warnungen (_„Spoiler anzeigen“_) verhindern Frustration.
- **Optimierung:** Auf dem Chat-Screen (S. 16) steht _„88% Geschmack-Match mit Dario M.“_. Sprachlich besser wäre _„Geschmacks-Übereinstimmung“_. Der Button _„Filmtipp an Freunde“_ im Profilmenü (S. 19) erklärt nicht, wohin geklickt werden muss.
- **UX Writing Vorschlag:** **„88% Filmgeschmack-Match“**; Button: **„Filmtipp senden“**.

### Unterseite: `Review & Bewertung` (PDF S. 8)

- **Positiv:** Gamification durch Microcopy (_„+20 XP für Review“_) motiviert zum Schreiben. Der Zeichenzähler (_„43/100 Zeichen“_) gibt klares Feedback.
- **Optimierung:** Button-Text _„Review veröffentlichen (+20 XP)“_ ist sehr lang für einen Primär-Button.
- **UX Writing Vorschlag:** Button auf **„Bewertung veröffentlichen“** kürzen und das XP-Badge als kleines Visual über den Button setzen.

### Unterseite: `Film- & Serien-Details` (PDF S. 12–13)

- **Positiv:** Hohe Informationsdichte (FSK, Episoden, Auflösung, Tonspuren) gut gegliedert.
- **Optimierung:** Zwei identische Buttons mit der Aufschrift _„Streamen“_ nebeneinander (Netflix vs. Crunchyroll) ohne klare Anbieter-Differenzierung im Button-Text.
- **UX Writing Vorschlag:** **„Auf Netflix ansehen“** bzw. **„Auf Crunchyroll ansehen“**.

### Unterseite: `Watchlist & Empfehlen-Flow` (PDF S. 11, 14–15, 24)

- **Positiv:** Die Schritt-für-Schritt-Nummerierung (_1. Film wählen, 2. Freund auswählen, 3. Persönliche Notiz_) führt zielgerichtet durch den Prozess.
- **Optimierung:** Button-Text _„Filmtipp jetzt senden & Chat öffnen“_ ist zu lang.
- **UX Writing Vorschlag:** **„Tipp senden & Chat starten“**.

### Unterseite: `Mein Profil & Fremdprofil` (PDF S. 17–18, 20, 23)

- **Positiv:** Übersichtliche Trennung von _Historie_, _Watchlist_ und _Reviews_.
- **Optimierung:** Bei _„Profil bearbeiten“_ (S. 20) steht der Hilfetext _„<<<Suche gute Serien für den Feierabend...>>>“_ in Chevrons/Klammern. Das wirkt wie ein Platzhalter aus der Entwicklung.
- **UX Writing Vorschlag:** Chevrons entfernen und als regulären Platzhalter-Text kennzeichnen: _„Schreibe etwas über deinen Filmgeschmack...“_.

---

## 3. UX Writing Review-Matrix

| Unterseite              | Ist-Zustand (Text / UI)               | UX Writing Vorschlag              | Nutzen                                   |
| :---------------------- | :------------------------------------ | :-------------------------------- | :--------------------------------------- |
| **Login** (S. 1)        | `Vergessen?`                          | **„Passwort vergessen?“**         | Höhere Eindeutigkeit für Nutzende.       |
| **Setup** (S. 2)        | `DE-Audio Vorzug`                     | **„Deutsche Tonspur bevorzugen“** | Verständlicherer Filter-Titel.           |
| **Match-Deck** (S. 3)   | Icon `3` ohne Label                   | **„3 gemeinsame Freunde“**        | Behebt Unklarheit über Icon-Bedeutung.   |
| **Detail-View** (S. 12) | `Streamen` (doppelt)                  | **„Auf [Dienst] ansehen“**        | Zeigt direkt das Ziel der Weiterleitung. |
| **Review** (S. 8)       | `Review veröffentlichen (+20 XP)`     | **„Bewertung veröffentlichen“**   | Prägnanterer Primär-Button.              |
| **Empfehlen** (S. 14)   | `Filmtipp jetzt senden & Chat öffnen` | **„Tipp senden & Chat starten“**  | Kurzer, aktionsorientierter CTA.         |
| **Profil Edit** (S. 20) | `<<<Suche gute Serien...>>>`          | **„Schreibe etwas über dich...“** | Behebt Platzhalter-Artefakte.            |

---

# Teil 2: Accessibility & Barrierefreiheit (WCAG-Check)

Beurteilung des Prototyps anhand der WCAG 2.1 Richtlinien (Web Content Accessibility Guidelines) und Barrierefreiheits-Standards für mobile Schnittstellen.

---

## 1. Accessibility Findings nach WCAG-Kriterien

### A. Kontraste & Lesbarkeit (WCAG 1.4.3 & 1.4.11)

- **Schwachstelle:** Die App nutzt ein durchgängiges Dark-Theme. Gelbe Badges mit schwarzer Schrift (z. B. Rating `★ 8.9` auf S. 3 & 5) haben guten Kontrast. Allerdings ist grauer Subtext auf dunklem Hintergrund (z. B. _„Gesehen vor 2 Tagen“_ auf S. 18 oder Regie-Angaben auf S. 12) im Kontrastverhältnis kritisch (< 4.5:1).
- **Massnahme:** Grautöne für Sekundärtexte um mindestens 20 % aufhellen, um ein Kontrastverhältnis von mindestens **4.5:1** für Normaltext sicherzustellen.

### B. Klick- & Touch-Flächen (Touch Targets - WCAG 2.5.5 / WCAG 2.5.8)

- **Schwachstelle:** In den Listen-Ansichten (S. 5 & 6) sowie im Profil (S. 18) sind die Audio-Badges (`DE`, `4K`, `HD`) und die Tag-Pills (`#Sci-Fi`, `#Anime`) sehr klein und eng nebeneinander platziert.
- **Massnahme:** Interaktive Elemente müssen eine Mindest-Touch-Fläche von **44 × 44 dp/pt** einhalten. Der Abstand zwischen klickbaren Tags muss vergrössert werden.

### C. Farbfehlsichtigkeiten & Unabhängigkeit von Farbe (WCAG 1.4.1)

- **Schwachstelle:** Im Feed und bei Verfügbarkeiten werden Status-Informationen teils nur farblich codiert (z. B. grüne vs. rote/graue Punkte oder Badges). Für Personen mit Rot-Grün-Sehschwäche ist dies schwer zu unterscheiden.
- **Massnahme:** Farbcodes immer mit Text oder eindeutigen Symbolen kombinieren (z. B. Haken-Symbol `✓` bei _Verfügbar_ statt nur einem grünen Punkt).

### D. Screenreader-Tauglichkeit & Alt-Texte (WCAG 1.1.1 & 1.3.1)

- **Schwachstelle:** Der Prototyp verlässt sich stark auf Filmplakate/Posters. Wenn Screenreader diese vorlesen, dürfen sie nicht nur _„Image_123.jpg“_ ausgeben.
- **Massnahme:** Alle Filmposter benötigen sprechende Alt-Texte (z. B. `alt="Poster von Cyberpunk: Edgerunners"`). Rein dekorative Grafiken (Hintergrund-Glows) müssen mit `aria-hidden="true"` für Screenreader verborgen werden.

### E. Formulare, Inputs & Screen-Struktur (WCAG 3.3.1 & 3.3.2)

- **Schwachstelle:** Im Login-Screen (S. 1) und Profil-Edit (S. 20) fehlen sichtbare permanente Labels oberhalb der Eingabefelder; es gibt teilweise nur Placeholder-Texte, die beim Tippen verschwinden.
- **Massnahme:** Feste Feld-Bezeichnungen (Labels) ausserhalb der Eingabefelder platzieren, damit Nutzende mit kognitiven Einschränkungen oder Screenreadern den Kontext nicht verlieren.

---

## 2. Accessibility Action Plan für das Team

- [ ] **Kontraste anpassen:** Alle grauen Nebentexte auf mindestens 4.5:1 Kontrast prüfen und anpassen.
- [ ] **Touch Targets vergrössern:** Alle Buttons, Icons und Filter-Pills auf mindestens $44 \times 44 \text{ px}$ vergrössern.
- [ ] **Labels für Accessibility:** Platzhaltertexte durch feste Labels oberhalb aller Eingabefelder ersetzen.
- [ ] **Screenreader-Labels ergänzen:** Für reine Icon-Buttons (`X`, `+`, `3`) `aria-label`-Attribute hinterlegen (z. B. `aria-label="Titel zur Watchlist hinzufügen"`).
- [ ] **Zwei-Sinne-Prinzip:** Farbindikatoren stets durch Text oder Icons unterstützen.
