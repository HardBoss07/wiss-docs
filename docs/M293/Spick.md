# Modul 293 Spickblatt: Webauftritt erstellen & veröffentlichen

## 1. Protokolle, Architektur & Rendering

### Protokolle & Begriffe

| Begriff             | Erläuterung / Detail                                                                                |
| :------------------ | :-------------------------------------------------------------------------------------------------- |
| **HTTP / HTTPS**    | Hypertext Transfer Protocol (Port 80). HTTPS ist via **SSL/TLS** verschlüsselt (Port 443).          |
| **FTP**             | File Transfer Protocol zum Hoch-/Herunterladen von Dateien auf den Server.                          |
| **URL & Domain**    | URL \= Ressourcen-Adresse im Netz. Domain \= Lesbarer Name (via **DNS** einer IP zugewiesen).       |
| **W3C & Validator** | World Wide Web Consortium (Standardisierung). Code-Prüfung über `validator.w3.org`.                 |
| **Editoren**        | **Code-Editor** (VS Code, Syntax-Highlighting) vs. **WYSIWYG** (Visueller Editor ohne Codeaufwand). |

### Request / Response Rendering-Modelle

- **Statisch (Static Serving):** Browser fordert Datei an (`GET /index.html`) $\rightarrow$ Server liefert unveränderte Datei (HTML/CSS/Bild) direkt aus.
- **Client-Side Rendering (CSR):** Server liefert leeres HTML-Gerüst + JS-Bundle $\rightarrow$ Browser führt JS aus, holt Daten via API (JSON) & baut DOM dynamisch auf.
- **Server-Side Rendering (SSR):** Server führt Skripte aus (z.B. PHP + DB-Abfrage), baut fertiges HTML zusammen $\rightarrow$ sendet fertig gerendertes HTML an Client.

## 2. HTML5-Struktur, Semantik & Tags

### Grundgerüst & Namensregeln

- **Dateinamen:** Strikte Kleinschreibung, keine Sonderzeichen/Umlaute, `-` statt Leerzeichen. Startseite: `index.html`.
- **Ordnerstruktur:** `index.html` (Wurzel), `css/style.css`, `img/` (Inhalt), `assets/` (Globales), `pages/` (Unterseiten).

```html
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titel</title>
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
    ...
  </body>
</html>
```

### DOM-Hierarchie & Element-Typen

- **Parent / Child / Sibling:** Elternelement / Kindelement / Geschwisterelement auf selber Ebene.
- **Block-Elemente:** 100% Breite des Parents, erzeugen Zeilenumbruch (z.B. `div`, `p`, `h1`-`h6`, `ul`, `ol`, `li`, `section`, `header`, `footer`).
- **Inline-Elemente:** Nur so breit wie Inhalt, kein Zeilenumbruch (z.B. `span`, `a`, `strong`, `em`, `br`). `img` verhält sich wie Inline-Block.

### Wichtige HTML-Tags mit Beispielen

| Tag             | Typ    | Beschreibung               | Minimales Code-Beispiel                                                  |
| :-------------- | :----- | :------------------------- | :----------------------------------------------------------------------- |
| `<h1>`-`<h6>`   | Block  | Überschriften (Stufe 1-6)  | `<h1>Titel</h1>`                                                         |
| `<p>`           | Block  | Textabsatz                 | `<p>Text</p>`                                                            |
| `<em>`          | Inline | Kursive Betonung           | `<em>kursiv</em>`                                                        |
| `<strong>`      | Inline | Wichtiger Text (fett, SEO) | `<strong>fett</strong>`                                                  |
| `<br>`          | Inline | Manueller Zeilenumbruch    | `Zeile 1<br>Zeile 2`                                                     |
| `<hr>`          | Block  | Thematische Trennlinie     | `<hr>`                                                                   |
| `<a>`           | Inline | Hyperlink / Anker          | `<a href="https://site.ch">Link</a>` / `<a href="#ziel">Anker</a>`       |
| `<img>`         | Inline | Bild                       | `<img src="img/pic.jpg" alt="Beschreibung">`                             |
| `<ul>` / `<li>` | Block  | Ungeordnete Liste          | `<ul><li>Eintrag</li></ul>`                                              |
| `<ol>` / `<li>` | Block  | Nummerierte Liste          | `<ol><li>Erster Punkt</li></ol>`                                         |
| `<header>`      | Block  | Kopfbereich                | `<header><h1>Logo</h1></header>`                                         |
| `<nav>`         | Block  | Hauptnavigation            | `<nav><ul><li><a href="#">Home</a></li></ul></nav>`                      |
| `<main>`        | Block  | Hauptinhalt der Seite      | `<main><section>...</section></main>`                                    |
| `<section>`     | Block  | Thematischer Abschnitt     | `<section><h2>Titel</h2></section>`                                      |
| `<article>`     | Block  | Eigenständiger Inhalt      | `<article><h3>News</h3></article>`                                       |
| `<aside>`       | Block  | Seitenleiste / Zusatz-Info | `<aside><p>Info</p></aside>`                                             |
| `<footer>`      | Block  | Fusszeile (Copyright etc.) | `<footer><p>&copy; 2026</p></footer>`                                    |
| `<figure>`      | Block  | Bild mit Beschriftung      | `<figure><img src="a.jpg" alt=""><figcaption>Text</figcaption></figure>` |

## 3. CSS Basics, Selektoren & Box-Modell

### 3 Arten der CSS-Integration

1. **Inline CSS:** Direct im Tag via Attribut (Höchste Prio): `<body style="background:black;">`
2. **Internes CSS:** Im `<head>` via `<style>`: `<style> body { color: red; } </style>`
3. **Externes CSS:** Sauber getrennt in `.css` Datei: `<link rel="stylesheet" href="css/style.css">`

### CSS-Selektoren im Überblick

```css
* {
  box-sizing: border-box;
} /* Universalselektor: Alle Elemente */
body {
  font-family: Arial;
} /* Typ/Tag-Selektor: Alle <body> */
h1,
h2 {
  color: #1b5e20;
} /* Multi-Selektor: h1 UND h2 */
.meine-klasse {
  color: blue;
} /* Klassen-Selektor (mehrmals nutzbar) */
#mein-id {
  margin: 0 auto;
} /* ID-Selektor (einmalig pro Seite) */
p strong {
  color: red;
} /* Nachfahren-Selektor: strong in p */
ul > li {
  list-style: none;
} /* Direktes Kind-Selektor */
h2 + p {
  color: green;
} /* Direkt nachfolgendes Geschwister */
h2 ~ p {
  font-size: 14px;
} /* Alle nachfolgenden Geschwister */
input[type='email'] {
  width: 100%;
} /* Attribut-Selektor */
a:hover {
  color: orange;
} /* Pseudoklasse: Hover-Zustand */
tr:nth-of-type(odd) {
  background: #ccc;
} /* Pseudoklasse: Ungerade Zeilen */
```

### Das CSS Box-Modell

Jedes Element besteht von **innen nach aussen** aus 4 Schichten:

1. **Content:** Der eigentliche Inhalt (Text/Bild).
2. **Padding:** Innerer Abstand (zwischen Inhalt & Border).
3. **Border:** Der umgebende Rahmen.
4. **Margin:** Äusserer Abstand (zu Nachbarelementen).

```css
/* Box-Modell Berechnungs-Fix: Macht width = inkl. Padding & Border */
* {
  box-sizing: border-box;
}
div {
  width: 300px;
  padding: 20px; /* Oben/Unten/Links/Rechts 20px */
  border: 2px solid #000;
  margin: 10px auto; /* 10px Oben/Unten, Zentriert Links/Rechts */
}
```

## 4. CSS Layouts: Positionierung, Float, Flexbox & Grid

### Positionierungsarten (`position:`)

- `static`: Standardmässiger Dokumentenfluss. `top/left/z-index` haben keine Wirkung.
- `relative`: Verschiebung relativ zur eigenen Ursprungsposition. Platz im Fluss bleibt reserviert.
- `absolute`: Aus dem Fluss genommen\! Orientiert sich am nächsten Eltern-Element mit `position != static`.
- `fixed`: Fest am Bildschirm (Viewport) verankert. Scrollt **nicht** mit.
- `sticky`: Scrollt normal mit, bleibt ab definiertem Abstand (`top: 0`) am Rand haften.

### Float & Clear

- **Zweck:** Text umfließt ein Bild (kein Layout-Werkzeug für ganze Seiten mehr\!).
- **Regeln:** Ausrichtung via `float: left;` oder `float: right;`. Floats benötigen explizite Breite.
- **Clearing:** Hebt Float-Verhalten für nachfolgende Elemente auf: `clear: left | right | both;`.

### Flexbox (1D-Layouts: Spalte ODER Zeile)

```css
.flex-container {
  display: flex;
  flex-direction: row; /* row | column | row-reverse | column-reverse */
  flex-wrap: wrap; /* nowrap | wrap | wrap-reverse */
  justify-content: center; /* Hauptachse: flex-start | flex-end | center | space-between | space-around */
  align-items: center; /* Kreuzachse: flex-start | flex-end | center | stretch | baseline */
  gap: 15px; /* Abstand zwischen Items */
}
.flex-item {
  flex: 1 1 0%; /* flex-grow | flex-shrink | flex-basis */
}
```

### CSS Grid (2D-Layouts: Zeilen UND Spalten)

```css
.grid-container {
  display: grid;
  grid-template-columns: 200px 1fr; /* 2 Spalten: 200px und 1 flexibler Anteil */
  grid-template-rows: auto 1fr auto; /* Oben, Mitte, Unten */
  gap: 10px; /* Rasterabstand */
}
```

### Layout-Faustregel

- **Float:** Bild-Umfliessung.
- **Flexbox:** Ausrichten in 1 Dimension (z.B. Navigationsleiste, Card-Reihe).
- **Grid:** 2-dimensionales Komplettlayout (Header, Sidebar, Content, Footer).

## 5. CSS-Präprozessoren: SASS / SCSS

### SASS vs. SCSS Syntax

- **SASS (Indented Syntax):** Einrückungen statt Klammern, verzichtet auf `{}` und Semikolons `;`.
- **SCSS (Sassy CSS):** Modern, abwärtskompatibel zu CSS. Nutzt `{}` und `;`.

```scss
/* SCSS Syntax Beispiel */
$primary-color: #1b5e20; // 1. Variable

@mixin flex-center {
  // 2. Mixin (Wiederverwendbarer Block)
  display: flex;
  justify-content: center;
}

nav {
  // 3. Verschachtelung (Nesting)
  background: $primary-color;
  ul {
    list-style: none;
    li {
      @include flex-center;
      a {
        color: white;
      }
    }
  }
}
```

## 6. Medien, Farbmodelle & Pfade

### Web-Bildformate im Vergleich

| Format         | Komprimierung        | Transparenz      | Einsatzbereich & Besonderheiten                                               |
| :------------- | :------------------- | :--------------- | :---------------------------------------------------------------------------- |
| **JPG / JPEG** | Verlustbehaftet      | Nein             | Fotos & Farbverläufe (24-Bit, 16.8 Mio. Farben).                              |
| **PNG**        | Verlustfrei          | Ja (Alpha-Kanal) | Logos, Grafiken, Freisteller.                                                 |
| **GIF**        | Verlustfrei          | Ja (1 Bit)       | Kurze Animationen, flache Grafiken (max. 256 Farben).                         |
| **SVG**        | Verlustfrei (Vektor) | Ja               | Logos, Icons (beliebig skalierbar ohne Qualitätsverlust, via Code steuerbar). |
| **WebP**       | Verlustbehaftet/frei | Ja               | Moderner Google-Standard, deutlich kleiner als JPG/PNG.                       |
| **AVIF**       | Verlustbehaftet/frei | Ja               | Neuestes Format mit noch höherer Komprimierung.                               |

### Farbmodelle

- **RGB:** `color: rgb(27, 94, 32);` (Werte von 0 bis 255 für Rot, Grün, Blau).
- **RGBA:** `color: rgba(27, 94, 32, 0.8);` (Alpha-Kanal für Transparenz: 0.0 transparent bis 1.0 deckend).
- **HEX:** `color: #1b5e20;` (Hexadezimal 0-9, A-F. `#000000` \= Schwarz, `#FFFFFF` \= Weiss).

### Pfadangaben

- **Relativ (lokal):**
  - `href="pages/anmeldung.html"` (in Unterordner gehen).
  - `src="../img/logo.png"` (ein Ordner-Level nach oben gehen).
  - `href="#geographie"` (Anker-Sprung auf `id="geographie"` im gleichen Dokument).
- **Absolut (extern):** `href="https://www.google.ch"` (Vollständige URL inklusive Protokoll).

## 7. HTML-Tabellen & Formulare (inkl. JS)

### Tabellen-Struktur

```html
<table>
  <caption>
    Städte Afrikas
  </caption>
  <thead>
    <tr>
      <th>Stadt</th>
      <th>Einwohner</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Kairo</td>
      <td>15.7 Mio.</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td colspan="2">Stand: 2017</td>
    </tr>
  </tfoot>
</table>
```

### Formulare & Attribute

```html
<form action="validate.php" method="post" onsubmit="return checkForm()">
  <fieldset>
    <legend>Persönliche Daten</legend>
    <input type="radio" id="m" name="sex" value="m" required />
    <label for="m">Mann</label>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" maxlength="50" required />
    <label for="email">E-Mail:</label>
    <input type="email" id="email" name="email" />
    <label for="city">Stadt:</label>
    <select id="city" name="city">
      <option value="zh">Zürich</option>
    </select>
    <input type="checkbox" id="agb" name="agb" value="1" />
    <label for="agb">AGB akzeptieren</label>
    <textarea id="msg" name="msg" rows="4"></textarea>
    <button type="submit">Senden</button>
    <button type="reset">Löschen</button>
  </fieldset>
</form>
```

#### Formular-Attribute

- `method`: `GET` (Daten in URL sichtbar) vs. `POST` (Daten verdeckt im HTTP-Header übertragen).
- `action`: Ziel-Skript zur Auswertung.
- `for` (beim Label): Verweist auf die `id` des Formularfelds.
- `name`: Pflichtattribut für die Serverauswertung (Schlüssel in GET/POST).

### Javascript-Einbindung & Formular-Validierung

```html
<!-- Vor dem schliessenden </body> Tag einbinden -->
<script>
  function checkForm() {
    let name = document.getElementById('name').value;
    if (name === '') {
      alert('Bitte Namen eingeben!');
      return false; // Verhindert das Absenden des Formulars
    }
    return true; // Formular wird abgesendet
  }
</script>
```

## 8. Responsives Webdesign & Mobile First

### Philosophie & Auflösungen

- **Mobile First:** Zuerst für kleine Bildschirme gestalten, dann via Media Queries erweitern.
- **Breakpoints:** Smartphone (320px-480px), Tablet (768px-1024px), Desktop ($>1024px$).

### 4 Schritte der Umsetzung

1. **Viewport Meta-Tag (`<head>`):** `<meta name="viewport" content="width=device-width, initial-scale=1.0">`
2. **Semantisches HTML:** Flexible HTML5-Tags (`<nav>`, `<ul>`) statt starrer Layout-Tabellen.
3. **Media Queries (CSS):**

```css
/* Standard: Mobile First Styles */
#wrapper {
  width: 100%;
}
/* Tablet & Desktop Anpassungen */
@media (min-width: 768px) {
  #wrapper {
    width: 80%;
    margin: 0 auto;
  }
  nav ul {
    flex-direction: row;
  }
}
```

4. **Responsive Medien:** `img, video { max-width: 100%; height: auto; }`

## 9. Rechtliche Grundlagen & Datenschutz

### 1. Verbotene Web-Inhalte

- **Schweiz (StGB):** Kinderpornografie (Art. 197), Gewaltdarstellung, Rassendiskriminierung (Art. 261bis), Ehrverletzung.
- **Deutschland (StGB, NetzDG):** Strikte Ergänzung: Verfassungswidrige Symbole (§ 86a), Volksverhetzung (§ 130), Holocaust-Leugnung.
- **USA (1st Amendment):** Sehr hohe Redefreiheit (schützt auch Hate Speech); verboten sind CSAM, Betrug, Aufruf zu Gewalt.

### 2. Urheberrecht (URG CH)

- **Werkschutz:** Alle Texte, Bilder, Videos und Handyschnappschüsse sind urheberrechtlich geschützt. Quellenangabe alleine reicht **nicht**\!
- **Zitatrecht (Art. 25 URG):** Übernahme nur als Beleg eigener Aussagen mit genauer Quellenangabe gestattet.
- **Recht am eigenen Bild:** Abgebildete Personen müssen vor der Veröffentlichung einwilligen.

### 3. Datenschutz & Impressum

- **nDSG (CH):** Transparenzpflicht. Datenschutzerklärung zwingend bei Erfassung personenbezogener Daten (Logs, Formulare).
- **Impressumspflicht (UWG Art. 3 CH):** Kommerzielle Webseiten müssen Name, physische Adresse und E-Mail ausweisen.
- **EU-DSGVO:** Gilt bei Kunden aus der EU (Marktortprinzip). Erzwingt Opt-In-Cookie-Banner & AV-Verträge.

## 10. Going-Live & Hosting-Kosten (CH)

### Launch Checklist & Phasen

1. **Technical Check:** Cross-Browser-Tests, Breakpoints prüfen, PageSpeed Check ($>85$), 404-Seite, Meta-Tags, Favicon, `sitemap.xml`, `robots.txt`.
2. **Cutover:** Kundenfreigabe, DNS A-Record / CNAME auf neue Server-IP zeigen lassen, SSL (HTTPS) aktivieren, `noindex` entfernen.
3. **Post-Launch:** Google Search Console Sitemap einreichen, 301-Redirections für alte Links prüfen, Uptime-Monitoring aktivieren.

### Wiederkehrende Hosting-Kosten (Schweiz Richtwerte)

| Position                      | Beschreibung                       | Richtwert Kosten (CH)                       | Intervall            |
| :---------------------------- | :--------------------------------- | :------------------------------------------ | :------------------- |
| **Domain-Registrierung**      | `.ch`-Domain                       | CHF 12.00 - 15.00                           | Jährlich             |
| **Webhosting (Professional)** | CH-Server, SSL, Datenbank, Backups | CHF 10.00 - 25.00 / Monat                   | Jährlich abgerechnet |
| **SSL-Zertifikat**            | Let's Encrypt / DV-SSL             | CHF 0.00                                    | Inklusive im Hosting |
| **Business Mail**             | Mailboxen passend zur Domain       | Im Hosting inkl. (oder MS 365 CHF 6.-/User) | Monatlich / Jährlich |
