# Modul 293 - Webauftritt erstellen und veröffentlichen

## 2. Grundlagen der Webentwicklung & Web-Architektur

### Zentrale Begriffe & Protokolle (SideQuest 1A)

- **HTTP / HTTPS:** Hypertext Transfer Protocol zur Übermittlung von Daten im Web. HTTPS erweitert dies um eine SSL/TLS-Verschlüsselung für abhörsichere Verbindungen.
- **FTP:** File Transfer Protocol zum Übertragen von Dateien zwischen lokalem Client und Server.
- **URL & Domain:** Die URL (Uniform Resource Locator) kennzeichnet eine spezifische Ressource im Netz. Die Domain ist der via DNS (Domain Name System) einer IP-Adresse zugeordnete Name.
- **W3C & Validierung:** Das World Wide Web Consortium erstellt internationale Standards für HTML und CSS. Die Validierung erfolgt über Tools wie den W3C-Validator (`validator.w3.org`), um Codekonformität zu garantieren.
- **Editoren & Tools:** Unterschieden wird zwischen reinen Text-Editoren mit Syntax-Highlighting (z.B. VS Code, Sublime Text, Brackets, Notepad++) und WYSIWYG-Editoren ("What You See Is What You Get"), welche die visuelle Oberfläche ohne manuellen Codeaufwand rendern.

### Request/Response-Modelle

Die Netzkommunikation folgt dem Client-Server-Prinzip, unterscheidet jedoch drei architektonische Umsetzungsformen:

1. **Statisch (Static File Serving):** Der Browser stellt eine Anfrage (z.B. `GET /index.html`), und der Webserver antwortet direkt mit den ungeänderten, im Root-Verzeichnis liegenden Dateien (HTML, CSS, Bilder).
2. **Client-Side Rendering (CSR):** Der Server liefert ein leeres HTML-Grundgerüst mitsamt JavaScript-Bundles. Der Browser führt die Logik aus und fordert reine Nutzdaten via API (z.B. JSON) nach, um die Benutzeroberfläche dynamisch im DOM aufzubauen.
3. **Server-Side Rendering (SSR):** Der Browser fordert eine Seite an (z.B. `seite.php`), woraufhin auf dem Webserver ein PHP-Interpreter Skripte ausführt, Datenbankdaten abfragt und ein vollständig zusammengesetztes HTML-Dokument generiert, das an den Client zurückgesendet wird.

## 3. HTML5-Strukturierung, Semantik & Dateiorganisation

### Grundgerüst & Namenskonventionen

- **HTML5-Basis:** Jedes Dokument beginnt mit der Dokment-Typ-Deklaration `<!DOCTYPE html>` und enthält die HTML-Struktur bestehend aus `<head>` (Metadaten, Zeichencodierung `UTF-8`, Titel, CSS-Links) und `<body>` (sichtbare Inhalte).
- **Dateinamen:** Erfordern strikte Kleinschreibung, Verzicht auf Sonderzeichen/Umlaute sowie Bindestriche statt Leerzeichen. Die Startseite heisst zwingend `index.html`.
- **Ordnerstruktur:** Wiederverwendbare globale Ressourcen (Logos, Icons, Fonts) liegen im Ordner `assets/`, seitenspezifische Inhaltsbilder in `img/`, Stylesheets in `css/` und zusätzliche Seiten im Unterordner `pages/`.

### DOM-Hierarchie & Semantik

Die Beziehungsstruktur der HTML-Elemente im Document Object Model (DOM) bestimmt die CSS-Vererbung:

- **Parent:** Das direkte Elternelement einer Ebene.
- **Child / Children:** Das oder die direkt untergeordneten Kindelemente.
- **Siblings:** Geschwisterelemente auf derselben Hierarchieebene unter demselben Parent.

### Block- vs. Inline-Elemente

- **Block-Elemente:** Nehmen stets 100 % der verfügbaren Breite des Elternelements ein, erzeugen vor und nach sich einen Zeilenumbruch und dienen der primären Layout-Strukturierung.
- **Inline-Elemente:** Belegen nur die durch ihren Inhalt benötigte Breite, erzeugen keinen Zeilenumbruch und dienen der Textformatierung im Fluss.

### Wichtige HTML-Kernelemente

| Element                                                              | Beschreibung                                                         | Typ                   |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | --------------------- |
| `<hr>`                                                               | Horizontal Rule - fügt eine thematische Trennlinie ein               | Block                 |
| `<br>`                                                               | Line Break - erzwingt einen manuellen Zeilenumbruch                  | Inline                |
| `<em>`                                                               | Emphasis - betonten Text kursiv darstellen                           | Inline                |
| `<strong>`                                                           | Strong Importance - wichtige Inhalte fett hervorheben (SEO-relevant) | Inline                |
| `<img>`                                                              | Image - bindet externe Grafikdateien ein                             | Inline (Inline-Block) |
| `<a>`                                                                | Anchor - definiert Hyperlinks zu URLs oder Anker-IDs                 | Inline                |
| `<p>`                                                                | Paragraph - erzeugt einen Fliesstext-Absatz                          | Block                 |
| `<h1>` bis `<h6>`                                                    | Headings - Überschriften von Stufe 1 (wichtigste) bis 6              | Block                 |
| `<ul>`                                                               | Unordered List - ungeordnete Aufzählungsliste                        | Block                 |
| `<ol>`                                                               | Ordered List - nummerierte/geordnete Liste                           | Block                 |
| `<li>`                                                               | List Item - einzelner Listeneintrag innerhalb von `<ul>` oder `<ol>` | Block                 |
| `<header>`, `<nav>`, `<aside>`, `<section>`, `<article>`, `<footer>` | HTML5-Semantik-Tags zur klaren Dokumentenstrukturierung              | Block                 |

## 4. CSS-Grundlagen, Integration, Selektoren & Box-Modell

### Die 3 Arten der CSS-Integration

1. **Inline CSS:** Notiert direkt im HTML-Tag über das `style`-Attribut (z.B. `<body style="background:black;">`). Es besitzt die höchste Priorität und überschreibt internes sowie externes CSS.
2. **Internes CSS:** Steht im `<head>`-Bereich innerhalb von `<style>`-Tags. Überschreibt externes CSS.
3. **Externes CSS:** Sauber abgetrennt in einer `.css`-Datei und im `<head>` via `<link rel="stylesheet" href="css/style.css">` eingebunden.

### Identifikatoren & Selektoren

- **ID (`#meineID`):** Einmalig pro HTML-Seite vergebbar. Eignet sich für eindeutiges Styling und als Navigations-Sprungmarke.
- **Klassen (`.meineKlasse`):** Beliebig oft im Dokument wiederverwendbar.

#### Selektorregeln

- `body { color: white; }`: Gilt global für das `body`-Tag.
- `h1, h2 { color: white; }`: Gilt parallel für alle `h1`- und `h2`-Überschriften.
- `p strong { color: white; }`: Nachfahren-Selektor - styled nur `strong`-Elemente innerhalb eines `<p>`-Tags.
- `h2 + p { color: white; }`: Direkt nachfolgender Geschwister-Selektor - styled nur das erste `<p>`, das unmittelbar auf ein `<h2>` folgt.

### Das CSS Box-Modell

Jedes dargestellte HTML-Element wird von innen nach aussen durch vier Schichten definiert:

1. **Content:** Der tatsächliche Inhalt (Text, Bilder).
2. **Padding:** Der innere Abstand zwischen Inhalt und Rahmen.
3. **Border:** Der umgebende Rahmen des Elements.
4. **Margin:** Der äussere Abstand zu benachbarten Elementen.

## 5. CSS-Layouttechniken: Positionierung, Float, Flexbox & CSS Grid

### Positionierungsarten (`position:`)

- `static`: Standardmässiger Fluss der Elemente im Dokument.
- `relative`: Positionierung relativ zur eigenen Ursprungsposition im normalen Fluss.
- `absolute`: Aus dem Fluss genommen, orientiert sich am nächsten positionierten Eltern-Container und scrollt mit.
- `fixed`: Aus dem Fluss genommen, fest an den Bildschirminhalt (Viewport) gebunden; scrollt nicht mit.
- `sticky`: Scrollt mit, bis ein definierter Abstandswert erreicht ist, und bleibt dort haften.

### Float & Clear

- **Zweck:** Ursprünglich für das Umfliessen von Bildern durch Text entwickelt. Kein modernes Hauptwerkzeug für komplette Seitenlayouts.
- **Regeln:** Floats teilen sich 100 % der Breite, weshalb immer explizite Prozentbreiten (`width`) definiert werden müssen.
- **Ausrichtung:** `float: left` oder `float: right` (ein `float: middle` existiert nicht).
- **Clearing:** Da Floaten an nachfolgende Elemente vererbt wird, gilt: "No float without CLEAR" (`clear: left | right | both`).

### Flexbox (Flexible Box Layout)

Flexbox ermöglicht das einfache Erstellen eindimensionaler, responsiver Layouts in Spalten oder Zeilen ohne Float-Hacks.

- **Aktivierung auf dem Parent:** `display: flex;`
- **Flussrichtung (`flex-direction`):** `row` (Default), `row-reverse`, `column`, `column-reverse`
- **Umbruchverhalten (`flex-wrap`):** `nowrap` (Default), `wrap`, `wrap-reverse`
- **Hauptachsen-Ausrichtung (`justify-content`):** `flex-start`, `flex-end`, `center`, `space-between`, `space-around`, `space-evenly`
- **Kreuzachsen-Ausrichtung (`align-items`):** `flex-start`, `flex-end`, `center`, `stretch`, `baseline`

#### Faustregel für Layout-Techniken

- **Float:** Text soll gezielt um ein Element fliessen.
- **Flexbox:** Ausrichten von Elementen in einer einzelnen Zeile oder Spalte.
- **Grid:** Strukturieren von kompletten zweidimensionalen Bereichen in Zeilen und Spalten.

## 6. CSS-Präprozessoren: SASS / SCSS

SASS (Syntactically Awesome Stylesheets) und SCSS (Sassy CSS) erweitern CSS um Programmierkonzepte. Ein Compiler übersetzt den Code vor der Browserdarstellung in Standard-CSS.

### SASS vs. SCSS Syntax

- **SASS:** Arbeitet streng mit Einrückungen; verzichtet auf geschweifte Klammern `{}` und Semikolons `;`.
- **SCSS:** Nutzt eine CSS-nahe Syntax mit Klammern und Semikolons (moderner Standard).

### Hauptfunktionen von SCSS

- **Variablen:** Speichern von Farben oder Fonts (z.B. `$primary-color: #333;`).
- **Verschachtelung (Nesting):** Hierarchisches Schachteln von Selektoren (z.B. `nav { ul { li { ... } } }`).
- **Erweiterte Features:** Arithmetische Operationen, Funktionen, Mixins, `@extend` und `@import` zur Reduktion von Code-Redundanz.

## 7. Medien, Grafiken & Farbmodelle im Web

### Webkompatible Bildformate

| Format         | Komprimierung                 | Transparenz      | Besonderheiten & Einsatzbereich                                                     |
| -------------- | ----------------------------- | ---------------- | ----------------------------------------------------------------------------------- |
| **JPG / JPEG** | Verlustbehaftet               | Nein             | 24-Bit (16,8 Mio. Farben); ideal für Fotos und komplexe Farbverläufe                |
| **PNG**        | Verlustfrei                   | Ja (Alpha-Kanal) | 8- oder 24-Bit; perfekt für Logos, Grafiken und freigestellte Bilder                |
| **GIF**        | Verlustfrei                   | Ja (Einfach)     | 8-Bit (max. 256 Farben); unterstützt kurze Animationen und flache Grafiken          |
| **SVG**        | Verlustfrei (Vektor)          | Ja               | Skalierbare Vektorgrafik; 24-Bit; per Code manipulierbar; ideal für Icons und Logos |
| **WebP**       | Verlustfrei / Verlustbehaftet | Ja               | Moderner Web-Standard von Google; liefert signifikant kleinere Dateien als JPG/PNG  |
| **AVIF**       | Verlustfrei / Verlustbehaftet | Ja               | Neuestes Format mit noch höherer Komprimierungseffizienz als WebP                   |

### Farbmodelle

- **RGB:** Farbmischung aus Rot, Grün und Blau mit Werten von `0` bis `255` (z.B. `rgb(68, 87, 16)`).
- **RGBA:** Ergänzt RGB um einen Alpha-Kanal für Transparenz von `0.0` (transparent) bis `1.0` (deckend).
- **HEX:** Hexadezimale Angabe mit den Zeichen `0-9` und `A-F` (z.B. `#445710` oder `#000000`).

### Relative vs. Absolute Pfade

- **Relativer Link:** Verweist auf Ressourcen innerhalb der eigenen Ordnerstruktur (z.B. `href="pages/kontakt.html"`, `href="#countryman"` für Anker-IDs oder `src="../img/mini.jpg"`, um aus einem Unterordner herauszugehen).
- **Absoluter Link:** Verweist extern auf fremde Webseiten ausserhalb des eigenen Servers (z.B. `href="https://www.mini.ch"`).

## 8. HTML-Tabellen & Formulare inkl. JavaScript-Validierung

### HTML-Tabellen

Tabellen werden über das `<table>`-Tag strukturiert:

- `<tr>`: Tabellenzeile (Table Row).
- `<th>`: Kopfzelle (Table Header) - zentriert und fett.
- `<td>`: Datenzelle (Table Data).
- Semantische Bereiche: `<caption>` (Tabellenüberschrift), `<thead>` (Kopfbereich), `<tbody>` (Datenbereich) und `<tfoot>` (Fusszeile).

### Formularstruktur & Attribute

Formulare nutzen das `<form>`-Tag mitsamt Steuerelementen:

- **`method`:** Bestimmt die Übertragung (`method="get"` über die Adresszeile; `method="post"` als geschütztes Datenpaket im HTTP-Header).
- **`action`:** Ziel-Skript zur Auswertung der Daten (z.B. `action="validate.php"`).
- **Gruppierung:** `<fieldset>` fasst zusammengehörige Felder optisch zusammen, versehen mit einer Überschrift via `<legend>`.
- **Steuerelemente:** Textfelder (`<input type="text">`), E-Mail-Felder (`type="email"`), Radio-Buttons (`type="radio"`), Checkboxen (`type="checkbox"`), Dropdowns (`<select>` mit `<option>`), Mehrzeilentext (`<textarea>`) sowie Absende-/Löschen-Buttons (`type="submit"` / `type="reset"`).
- **Attribute:**
  - `name`: Feldbezeichnung für die Auswertung auf dem Server (Pflichtattribut für die Datenübermittlung).
  - `id`: Eindeutige technische ID für CSS und JS.
  - `for`: Attribut im `<label>`, das auf die `id` des entsprechenden Inputs verweist.
  - `maxlength`: Maximale Zeichenanzahl.
  - `required`: Erfordert eine Eingabe vor dem Absenden (HTML5-Validierung).

### JavaScript-Einbindung & Formularvalidierung

- **Einbindung:** Über den `<script>`-Tag, idealerweise vor dem schliessenden `</body>`-Tag.
- **JS-Syntax:** Anweisungen enden mit Semikolon `;`, Kommentare werden einzeilig mit `//` oder mehrzeilig mit `/* */` verfasst. Die Sprache ist case-sensitive.
- **Validierung:** Das Absenden wird im Formular über `onsubmit="return check()"` abgefangen. Eine JS-Funktion `function check()` liest die `name`-Attribute aus und bricht das Absenden ab, falls Pflichtfelder leer sind.

## 9. Responsives Webdesign & Mobile-First-Strategie

### Philosophie & Auflösungen

Unter dem Prinzip "Form follows function" passt sich die Seite dem Ausgabegerät an. Das Vorgehen **Mobile First** startet bei der kleinsten Auflösung (Content First) und baut das Layout für grössere Displays aus.

- **Smartphones:** 320px bis 480px.
- **Tablets:** 768px bis 1024px.
- **Desktop-Computer:** 1024px und grösser.

### 4 Umsetzungs-Schritte

1. **Step 1 (Meta Viewport):** Einbinden im `<head>`: `<meta name="viewport" content="width=device-width, initial-scale=1">`. Steuert Seitenbreite und Anfangszoom auf Mobilgeräten.
2. **Step 2 (HTML5-Navigation):** Nutzen von sauberen HTML5-Tags (`<nav>`, `<ul>`) anstelle veralteter Layout-Tabellen zur Beschleunigung und Optimierung für Screenreader/SEO.
3. **Step 3 (Media Queries):** Definition gerätespezifischer CSS-Regeln via `@media`:
   ```css
   @media only screen and (min-width: 320px) and (max-width: 480px) {
     /* CSS-Regeln für Smartphones */
   }
   ```
4. **Step 4 (Responsive Medien):** Bilder und Videos werden flexibel skaliert: `img { max-width: 100%; height: auto; }`.

## 10. Rechtliche Grundlagen & Datenschutz (SideQuest 8A)

### 1. Verbotene Websiteinhalte (CH vs. DE vs. USA)

- **Schweiz (StGB):** Verboten sind Kinderpornografie (Art. 197 StGB), Darstellungen gewalttätiger Abartigkeiten, Rassendiskriminierung (Art. 261bis StGB), Ehrverletzung sowie Aufrufe zu Verbrechen.
- **Deutschland (StGB, NetzDG, JuSchG):** Ergänzend gelten strenge Verbote für verfassungswidrige Symbole (§ 86a StGB), Volksverhetzung (§ 130 StGB) sowie die Leugnung des Holocausts mitsamt strengem Jugendschutz.
- **USA (First Amendment):** Schützt durch die verfassungsmässige Redefreiheit auch Hate Speech und politische Symbole; verboten sind primär CSAM (Kinderpornografie), Betrug sowie direkte Aufrufe zu unmittelbarer Gewalt.

### 2. Schweizer Urheberrecht (URG)

- **Werkschutz:** Sämtliche Texte, Videos, Musikstücke und Fotografien (inklusive einfacher Handyschnappschüsse) sind geschützt. Eine Quellenangabe alleine reicht nicht aus.
- **Zitatrecht (Art. 25 URG):** Das Übernehmen von fremden Texten ist nur als Beleg eigener Aussagen unter Angabe der Quelle gestattet.
- **Recht am eigenen Bild:** Abgebildete Personen müssen vor der Veröffentlichung auf einer Website zugestimmt haben.

### 3. Schweizer Datenschutz (nDSG) & Impressumspflicht (UWG)

- **nDSG:** Basiert auf Transparenz. Eine Datenschutzerklärung ist Pflicht für Webseiten, die personenbezogene Daten verarbeiten (Logs, Formulare, Tracking).
- **Impressumspflicht:** Nach UWG (Art. 3 Abs. 1 lit. s) müssen kommerzielle Schweizer Webseiten Name, physische Adresse und E-Mail-Adresse ausweisen.

### 4. EU-DSGVO & US-Datenschutzrecht

- **EU-DSGVO:** Gilt bei Kunden aus der EU (Marktortprinzip) und verlangt Opt-In-Cookie-Banner sowie Auftragsverarbeitungsverträge (AVV).
- **US-Recht:** Verfolgt einen sektoralen Ansatz (z.B. COPPA für Kinder unter 13 Jahren; CCPA/CPRA in Kalifornien mit Pflicht-Link "Do Not Sell/Share My Personal Information").

## 11. Going-Live-Prozess, Hosting & Post-Launch (SideQuest 9A & Praxis-Transfer)

### Praxis-Transfer / Gruppenarbeit

In Zweier- bis Dreierteams wird in 45 Minuten ein Kundenprojekt entwickelt und der Prozess bis zur Live-Schaltung vorbereitet.

### Phase 1: Technical Check, Performance & Legal Setup

- **Prüfungen:** Browser- und Cross-Device-Testing, Breakpoint-Analysen, Prüfung aller Formulare/Links und Test der Ladezeiten via PageSpeed Insights (Ziel > 85).
- **Erweiterungen:** Einrichten einer 404-Fehlerseite, Vergabe von Meta-Titles/Descriptions, OG-Tags, Favicon sowie Bereitstellung von `sitemap.xml` und `robots.txt`.

### Phase 2: Wiederkehrende Infrastruktur-Kosten (Schweiz)

| Position                         | Beschreibung                               | Richtwert Kosten (CH)                             | Intervall            |
| -------------------------------- | ------------------------------------------ | ------------------------------------------------- | -------------------- |
| **Domain-Registrierung**         | `.ch`-Domain via Registrar                 | CHF 12.00 - 15.00                                 | Jährlich             |
| **Webhosting (Professional)**    | CH-Serverstandort, SSL-Zertifikat, Backups | CHF 10.00 - 25.00 / Monat                         | Jährlich abgerechnet |
| **SSL-Zertifikat**               | Let’s Encrypt / DV-SSL                     | CHF 0.00                                          | Inklusive            |
| **Business E-Mail Service**      | Mailboxen zur Domain                       | Im Hosting inkl. (oder MS 365: ca. CHF 6.00/User) | Monatlich / Jährlich |
| **Wartung & Support (optional)** | System-Updates & Backups                   | CHF 50.00 - 150.00 / Monat                        | Auf Wunsch           |

### Phase 3 & 4: Cutover-Prozess & Post-Launch

- **Cutover:** Kundenfreigabe einholen, Produktivumgebung aufsetzen, DNS-Einträge (A-Record/CNAME) anpassen, SSL aktivieren und `noindex`-Sperren aufheben.
- **Post-Launch:** Sitemap bei Google Search Console einreichen, 301-Umleitungen alter URLs schalten, Uptime-Monitoring einrichten, Zugangsdaten im Passwort-Manager übergeben und Kundenschulung durchführen.

## 12. Praktische Umsetzung: Die Mini.ch Klub-Website

Die in den Präsentationen aufgeführte Muster-Website von Matteo Bosshard ist vollständig als dreiseitiges Webprojekt strukturiert.

### Dateistruktur & HTML-Seiten

1. **`index.html` (Startseite):**
   - _Hero-Banner:_ Logo (`mini_logo.png`), Hauptüberschrift `<h1>` und Hintergrundbild (`hintgergund_landing.jpg`).
   - _Navigation:_ Verlinkung auf interne Abschnitte (`#countryman`, `#gepaeckraum`, `#freihaendig`, `#vorteile`, `#der-neue`, `#all4`) sowie auf `pages/member.html` und `pages/preise.html`.
   - _News Section:_ Semantischer Bereich `<section>` mit Artikeln zu "Fun Electrified", "Der neue Mini 5 Door" und "Das neue Mini Cabrio".
   - _Main Section (`<main id="countryman">`):_ Enthält 6 `<figure>`-Container mit Produktbildern aus `img/` und dazugehörigen `<figcaption>`-Texten.
2. **`pages/member.html` (Mitglieder-Anmeldung):**
   - Stellt ein Anmeldeformular zum Sommerfest mit 3 `<fieldset>`-Blöcken bereit (Koordinaten, Festanmeldung inkl. Radio/Checkbox/Select, Mitteilungs-Textarea).
3. **`pages/preise.html` (Preissicht):**
   - Enthält eine HTML-Tabelle mit `<caption>`, `<thead>`, `<tbody>` und `<tfoot>` zur Darstellung der Preise der Countryman-Modelle (One: CHF 32'000.-, Cooper: CHF 40'000.-, John Works Edition: CHF 45'000.-).

### CSS-Architektur (`css/style.css`)

- **Layout Wrapper:** `.wrapper { margin: 0 auto; max-width: 80%; }` zentriert die Inhaltsbreite.
- **Hero Banner Grid:** Verwendet CSS-Grid (`display: grid; grid-template-columns: auto 1fr;`), um Logo und Überschrift auf Ebene 2 über das Hintergrundbild (Ebene 1) zu legen.
- **Sticky Navigation:** `header > nav` ist mittels `position: sticky; top: 0; z-index: 1000;` am oberen Bildschirmrand fixiert.
- **Flexbox News & Figures:**
  - _News-Cards:_ Nutzt Flexbox (`display: flex; flex-wrap: wrap; gap: 20px;`) mit gleichmässiger Breitenverteilung (`section > article { flex: 1 1 0%; }`).
  - _Figure-Elemente:_ Werden als Flex-Container skaliert (`main figure { display: flex; flex-wrap: wrap; gap: 25px; }`), wobei Bildgrössen auf maximal `500px` limitiert und ungerade Reihen mit Grauhintergrund (`figure:nth-of-type(odd) { background-color: #d6d6d6; }`) versehen sind.
- **Responsive Media Query:** Legt für Mobile-Geräte von `320px` bis `768px` fest, dass die Headerhöhe auf `200px` begrenzt, die Schriftgrösse auf `0.7em` reduziert und das Figure-Layout auf Spaltenfluss (`flex-direction: column`) umgestellt wird.
