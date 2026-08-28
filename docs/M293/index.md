# Modul 293 - Webauftritt erstellen und veröffentlichen

## 293-1A SideQuest:

Begriffe:

- CSS: Cascading Style Sheets. Verantwortlich für das Design, Layout und die visuelle Darstellung der HTML-Elemente.
- HTTP/S: Hypertext Transfer Protocol (Secure). Protokoll zur Übertragung von Daten im Web. Das S steht für SSL/TLS-Verschlüsselung, die die Übertragung abhörsicher macht.
- REQUEST/RESPONSE-MODELL: Die grundlegende Kommunikation im Web. Der Client schickt eine Anforderung (Request) an den Server, dieser antwortet mit den Daten oder einer Fehlermeldung (Response).
  - Statisch: Server liefert vordefinierte Dateien (HTML, CSS, Bilder) direkt an den Client aus, ohne sie vorher dynamisch zusammenzubauen.
  - Client-side: Logik/Rendering läuft im Browser des Nutzers (z.B. via JavaScript).
  - Server-side: Logik/Rendering erfolgt auf dem Server (z.B. Generierung von HTML-Seiten vor dem Versenden).
- FTP: File Transfer Protocol. Netzwerkprotokoll zur Übertragung von Dateien zwischen Client und Server (häufig genutzt zum Hochladen von Website-Dateien).
- W3C: World Wide Web Consortium. Die internationale Organisation, die Standards und Richtlinien für das Web entwickelt (z.B. für HTML und CSS).
- BROWSER: Client-Software zur Darstellung des Webs. Sie stellt HTTP/S-Anfragen, interpretiert HTML, CSS sowie JavaScript und rendert daraus die fertige Seite.
- URL: Uniform Resource Locator. Die eindeutige Webadresse einer bestimmten Ressource im Internet (z.B. `[https://example.com/index.html](https://example.com/index.html)`).
- VALIDIERUNG:
  - 1. HTML/CSS-Validierung: Überprüfung des Quellcodes auf Einhaltung der W3C-Standards.
  - 2. Eingabe-Validierung: Überprüfung von Formulareingaben auf Formatfehler oder Sicherheitsrisiken (z.B. Schutz vor SQL-Injection oder XSS).
- EDITOREN: Programme zur Erstellung und Bearbeitung von Quelltexten (z.B. VS Code, Neovim).
- WYSIWYG: "What You See Is What You Get". Editoren, bei denen man das visuelle Endergebnis direkt beim Bearbeiten sieht (z.B. WordPress Block Editor, Webflow), ohne den zugrundeliegenden Code manuell schreiben zu müssen.
- DOMAIN: Menschenlesbarer Name (Alias), der über das DNS (Domain Name System) einer IP-Adresse zugeordnet wird (z.B. `example.com`).
- HTML5: Aktueller HTML-Standard, der moderne Features wie semantische Tags (`<main>`, `<article>`), native Audio/Video-Unterstützung und neue Formular-Typen mitbringt.
- TAGS: Syntax-Bausteine in HTML (z.B. `<p>`, `<div>`), die Inhalt strukturieren, Auszeichnungen festlegen und DOM-Knoten definieren.
- PARENT: Elternelement im DOM-Baum, das direkt übergeordnet zu einem oder mehreren Kind-Elementen liegt.
- CHILD/CHILDREN: Kindelement(e), die sich direkt innerhalb eines Parent-Tags befinden.
- SIBLINGS: Geschwisterelemente, die im DOM auf derselben Hierarchieebene unter demselben Parent-Tag liegen.
- SEMANTIK: Die bedeutungsvolle Nutzung von HTML-Tags (z.B. `<nav>`, `<header>`, `<article>`). Zeigt Browsern, Screenreadern und Suchmaschinen, welche Bedeutung der jeweilige Inhalt hat.
- SEO: Search Engine Optimization (Suchmaschinenoptimierung). Massnahmen, um die Sichtbarkeit und das Ranking einer Website in Suchmaschinen zu verbessern.
- RESPONSIVE: Webdesign-Ansatz, bei dem sich Layout und Aussehen einer Website flexibel an unterschiedliche Bildschirmgrössen und Geräte (Desktop, Tablet, Smartphone) anpassen.

Webseiten mit wichtigen Informationen / Tools:

- http://www.w3c.de/
- http://selfhtml.org/
- http://www.html5-portal.de/
- https://www.w3.org/
- https://validator.w3.org/
- https://www.w3schools.com/

### Visualisierung von den 3 Request/Response Modellen:

1. Statisch (Static File Serving)

```plaintext
+--------+               HTTP Request (z. B. GET /index.html)              +--------+
|        |---------------------------------------------------------------->|        |
| Client |                                                                 | Server |
|        |<----------------------------------------------------------------|        |
+--------+                 HTTP Response (Fertige HTML-Datei)              +--------+
```

1. Client-Side Rendering (CSR)

```plaintext
+--------+               1. HTTP Request (z. B. GET /)                     +--------+
|        |---------------------------------------------------------------->|        |
|        |<----------------------------------------------------------------|        |
|        |         2. HTTP Response (Leeres HTML + JS-Bundle)              |        |
| Client |                                                                 | Server |
|        |               3. API Request (z. B. GET /api/data)              |        |
|        |---------------------------------------------------------------->|        |
|        |<----------------------------------------------------------------|        |
+--------+         4. API Response (JSON-Daten)                            +--------+
    |
    L-> [JS führt Logik aus & baut das UI im Browser auf]
```

3. Server-Side Rendering (SSR)

```plaintext
+--------+               1. HTTP Request (z. B. GET /profile)              +--------+
|        |---------------------------------------------------------------->|        |
|        |                                                                 | Server |
| Client |                                                                 |   |    |
|        |                                    [Lädt Daten & generiert HTML]|   ▼    |
|        |<----------------------------------------------------------------|        |
+--------+         2. HTTP Response (Vollständig gerendertes HTML)         +--------+
```

## 293-1B SideQuest:

[Link zur HTML Datei](./html/grundgeruest.html)

```html
<!-- Ist eventuell outdated wenn sich der Inhalt der oben verlinkten Datei ändert -->
<!doctype html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Syntax von HTML</title>
  </head>
  <body>
    <p>Text</p>
  </body>
</html>
```

## 293-2A SideQuest:

## 293-2A SideQuest:

### Theorie: Block- vs. Inline-Elemente & Regeln

- BLOCK-ELEMENTE: Nehmen immer die volle verfügbare Breite des Elternelements ein und beginnen auf einer neuen Zeile (erzeugen einen Zeilenumbruch vor und nach dem Element). Sie dienen primär der Strukturierung.
- INLINE-ELEMENTE: Nehmen nur so viel Breite ein wie ihr Inhalt benötigt und erzeugen keinen Zeilenumbruch im Textfluss. Sie dienen meist der Formatierung von Textabschnitten.
- VERSCHACHTELUNGS-REGELN:
  - Block-Elemente dürfen standardmässig andere Block-Elemente und Inline-Elemente enthalten.
  - Inline-Elemente dürfen im Normalfall nur Text oder weitere Inline-Elemente enthalten - keine Block-Elemente (Ausnahme z.B. `<a>` in HTML5, welches für Verlinkungen ganze Block-Bereiche umschliessen darf).
  - Sonderfall Absätze: `<p>` darf keine anderen Block-Elemente enthalten.

### Namenskonventionen & Ordnerstruktur

- DATEI- & ORDNERNAMEN: Nur Kleinschreibung (kebab-case), keine Leerzeichen (stattdessen `-`), keine Sonderzeichen/Umlaute. Startseite heisst zwingend `index.html`.
- Wiederverwendende Bilder im "assets" Ordner (Logo, Hintergrund etc), Einmalig vorkommende Bilder in "img" Ordner
- STATE OF THE ART ORDNERSTRUKTUR:

```plaintext
mein-projekt/
├── css/
│   └── style.css
├── img/
│   └── logo.png
├── assets/
│   ├── fonts/
│   └── icons/
├── pages/
│   ├── ueber-uns.html
│   └── kontakt.html
└── index.html
```

### HTML-Elemente

| Element       | Beschreibung                                                                               | Typ                   |
| ------------- | ------------------------------------------------------------------------------------------ | --------------------- |
| `<hr>`        | Horizontal Rule. Fügt eine horizontale Trennlinie zur visuellen/thematischen Trennung ein. | Block                 |
| `<br>`        | Line Break. Erwingt einen manuellen Zeilenumbruch innerhalb eines Textflusses.             | Inline                |
| `<em>`        | Emphasis. Hebt Text betont/kursiv hervor für semantische Gewichtung.                       | Inline                |
| `<strong>`    | Strong Importance. Stellt Text stark gewichtet/fett dar (wichtig für Semantik & SEO).      | Inline                |
| `<img>`       | Image. Bindet ein externes Bild via `src`-Attribut in das Dokument ein.                    | Inline (Inline-Block) |
| `<a>`         | Anchor. Erstellt einen Hyperlink zu einer anderen Seite, Datei oder Anchor-ID (`href`).    | Inline                |
| `<p>`         | Paragraph. Definiert einen eigenständigen Textabsatz mit automatischem Aussenabstand.      | Block                 |
| `<h1>`-`<h6>` | Headings. Überschriften der Hierarchieebenen 1 (wichtigste) bis 6 (untergeordnete).        | Block                 |
| `<ul>`        | Unordered List. Erstellt eine ungeordnete Aufzählungsliste (meist mit Aufzählungspunkten). | Block                 |
| `<ol>`        | Ordered List. Erstellt eine nummerierte/geordnete Liste.                                   | Block                 |
| `<li>`        | List Item. Repräsentiert ein einzelnes Listenelement innerhalb von `<ul>` oder `<ol>`.     | Block                 |
