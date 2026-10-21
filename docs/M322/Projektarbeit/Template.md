# Projekt-Dokumentation: WatchMatch

## Kurzbeschreibung der geplanten App

**WatchMatch** ist eine mobile Anwendung zur effizienten Recherche, Entdeckung und Bewertung von Filmen, Serien und Animes.

- **Thema:** Vernetzte Content-Recherche mit Swipe-Mechanismus, Plattform-Filtern und Community-Funktionen.
- **Ziel:** Die Frustration durch langes, ergebnisloses Suchen auf verschiedenen Streaming-Plattformen zu beenden. Nutzer sollen innerhalb weniger Minuten Inhalte finden, die exakt zu ihren aktiven Abos und Vorlieben passen. Ergänzend ermöglicht die App das Verfassen von Kurzkritiken und das Teilen von Empfehlungen im Freundeskreis.

## Persona

### Primäre Persona: Ottavio (Fokussierter Plattform-Nutzer)

| Eigenschaft                     | Ausprägung / Details                                                                              |
| :------------------------------ | :------------------------------------------------------------------------------------------------ |
| **Name & Alter**                | Ottavio (22 Jahre)                                                                                |
| **Beruf & Rolle**               | KV-Angestellter im Kundendienst                                                                   |
| **Wohnsituation**               | WG in Zürich, nutzt Netflix, Prime Video und Apple TV                                             |
| **Leitzitat**                   | _«Ich will in wenigen Minuten einen guten Film auf Deutsch finden, ohne lange suchen zu müssen.»_ |
| **Bedürfnisse & Erwartungen**   | Transparenz über Streaming-Verfügbarkeiten, deutsche Tonspuren und eine unkomplizierte Watchlist. |
| **Pain Points & Befürchtungen** | Zeitverlust durch unpassende Empfehlungen, Werbung oder Weiterleitungen auf Drittseiten.          |
| **Anwendungsfälle**             | Suche nach feierabendtauglichen Serien sowie Verwalten der persönlichen Watchlist.                |

### Sekundäre Persona: Dario (Social-Discoverer)

| Eigenschaft                     | Ausprägung / Details                                                                                      |
| :------------------------------ | :-------------------------------------------------------------------------------------------------------- |
| **Name & Alter**                | Dario (19 Jahre)                                                                                          |
| **Beruf & Rolle**               | Informatik-Lernender im 3. Lehrjahr                                                                       |
| **Wohnsituation**               | Wohnt bei den Eltern, schaut abends Filme mit seiner Freundin                                             |
| **Leitzitat**                   | _«Wenn mich ein TikTok-Clip packt, will ich den Film sofort abspeichern und mit meinen Freunden teilen.»_ |
| **Bedürfnisse & Erwartungen**   | Entdecken über Clips und Top-Listen, einfaches Teilen im Freundeskreis und schnelle Sterne-Bewertungen.   |
| **Pain Points & Befürchtungen** | Überladene Benutzeroberflächen, Bezahlschranken und unflexible Algorithmen.                               |

## Grobstruktur der App beschreiben

### Formfaktor

**WatchMatch** ist als mobile App für iOS und Android ausgelegt, da die Recherche meist spontan am Smartphone auf der Couch oder unterwegs stattfindet.

### Menüpunkte (Bottom Navigation)

> 1. **Match (Home / Swipe):** Haupt-Screen mit Film-Karten zum Rechts-/Linksswipen (Watchlist / Pass).
> 2. **Discover (Feed & Trends):** Übersicht von Top-100-Listen, Trending-Clips und Vorschlägen ausserhalb des eigenen Genres.
> 3. **Watchlist / Historie:** Gespeicherte Titel, chronologische Übersicht gesehener Filme und Abo-Übersicht.
> 4. **Community / Chat:** Direkt-Nachrichten, Empfehlungen von Freunden und Aktivitäts-Feed.
> 5. **Profil / Einstellungen:** Eigenes Profil, Gamification-Badges (z.B. _"100 Horrorfilme geschaut"_) und Abo-Filter.

### Key-Elemente auf den Haupt-Screens

- **Header:** Quick-Toggle für aktive Streaming-Filter (z.B. _Netflix + Disney+_) und Benachrichtigungs-Icon.
- **Swipe-Karte (Match-Screen):** Film-Poster, Titel, Genre-Tags, Sterne-Bewertung der Community, Verfügbarkeits-Icons der Streaming-Dienste und Aktions-Buttons (Pass / Watchlist / Details).
- **Detail-Ansicht:** Kurzbeschreibung, Trailer-Vorschau, Tonspuren (z.B. DE-Audio verfügbar), Reviews und Button "Bewertung abgeben".
- **Review-Eingabe:** Sterne-Skala (1–10 oder 1–5), Eingabefeld für max. 100 Zeichen Kurzkritik und Spoiler-Schalter.

## Style Guide

### Look and Feel

Ein kontrastreiches, modernes Dark-Mode-Design mit tiefdunklem Hintergrund (`#0a0a0a`), abgestuften Oberflächen zur visuellen Hierarchisierung und auffälligen Farbakzenten in Pink (`#d80b69`) für Hauptaktionen sowie Gelb (`#ffd405`) für Links, Highlights und Sterne-Ratings.

### Colors

- **Primary / Brand:** `#d80b69` (Pink / Interaktive Hauptelemente, Buttons & Selection)
- **Accent / Links:** `#ffd405` (Gelb / Akzente, Links, Sterne-Bewertungen & Highlights)
- **Background Main:** `#0a0a0a` (Haupt-Hintergrund)
- **Background Sidebar / Muted:** `#121212` (Hintergrund für Seitenleisten & Navigation)
- **Surface 100:** `#1a1a1a` (Basis-Karten & Container)
- **Surface 200:** `#2a2a2a` (Gehobene Oberflächen & Hover-Zustände)
- **Surface 300 / Border:** `#3a3a3a` (Bordüren & Trennlinien)
- **Text Primary:** `#ffffff` (Haupttext & Überschriften)
- **Text Secondary:** `#a3a3a3` (Sekundärtext & Beschreibungen)
- **Text Muted:** `#737373` (Dezente Metadaten & Inaktive Elemente)

### CSS Theme Tokens

```css
@theme {
  --primary: #d80b69;
  --accent: #ffd405;

  --bg-main: #0a0a0a;
  --bg-sidebar: #121212;
  --surface-100: #1a1a1a;
  --surface-200: #2a2a2a;
  --surface-300: #3a3a3a;

  --text-primary: #ffffff;
  --text-secondary: #a3a3a3;
  --text-muted: #737373;
}

:root {
  --background: var(--bg-main);
  --background-muted: var(--bg-sidebar);

  --text: var(--text-primary);
  --text-muted: var(--text-secondary);

  --border: var(--surface-300);
  --link: var(--accent);

  --primary: var(--primary);
  --accent: var(--accent);
}

* {
  border-color: var(--border);
}

::selection {
  background: var(--primary);
  color: #000;
}
```

### Typography

- **Font Family:** **Roboto** (Google Font)
- **Headings (H1, H2):** Roboto Bold (20px bis 26px, Line-Height 1.2)
- **Subheadings / Card Titles:** Roboto Medium (16px bis 18px)
- **Body Text:** Roboto Regular (14px bis 16px, Line-Height 1.5)
- **Buttons & Badges:** Roboto Medium (13px bis 14px, 0.5px Letter-Spacing)
- **Captions & Secondary Info:** Roboto Light / Regular (12px)

## Anwendungsfälle beschreiben

### Anwendungsfall 1: Abo-Filterung

#### Ziel

Nur Filme und Serien anzeigen lassen, die auf den eigenen aktiven Streaming-Diensten verfügbar sind (z.B. Netflix & Disney+).

#### User Story Map

- **Einstellungen aufrufen** - Profil-/Einstellungs-Icon im Menü anklicken
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

### Anwendungsfall 2: Reviews & Community-Bewertung

#### Ziel

Eine gesehene Serie bewerten und eine kurze Empfehlung für andere Nutzer hinterlassen.

#### User Story Map

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

### Anwendungsfall 3: Smart Notifications & Staffeln-Update

#### Ziel

Über neue Folgen/Staffeln verfolgter Serien benachrichtigt werden und direkt weiterschauen.

#### User Story Map

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
