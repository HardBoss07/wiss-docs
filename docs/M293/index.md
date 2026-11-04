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
- URL: Uniform Resource Locator. Die eindeutige Webadresse einer bestimmten Ressource im Internet (z.B. `https://example.com/index.html`).
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
|        |                                    [Lädt Daten & generiert HTML]|   v    |
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

## 293-8A SideQuest:

### 1. Verbotene Websiteinhalte (CH vs. DE vs. USA, ohne Urheberrecht)

- **Schweiz (StGB):**
- **Pornografie & Gewalt:** Kinderpornografie (Art. 197 StGB) sowie Darstellungen extremer Gewalt oder Pornografie mit Tieren/Gewalttätigkeiten.
- **Ehrverletzung & Diskriminierung:** Rassendiskriminierung (Art. 261bis StGB), üble Nachrede, Verleumdung und öffentliche Aufforderung zu Verbrechen oder Gewalttätigkeit.
- **Deutschland (StGB, NetzDG, JuSchG):**
- **Verfassungsschutz:** Zusätzlich zu den CH-Verboten streng verboten sind das Verwenden von Kennzeichen verfassungswidriger Organisationen (z. B. Hakenkreuze, § 86a StGB), Volksverhetzung (§ 130 StGB) sowie die Leugnung des Holocausts.
- **Jugendschutz:** Sehr strenge Vorgaben bei indizierten Medien (Jugendgefährdung).
- **USA (First Amendment):**
- **Hohe Meinungsfreiheit:** Der 1. Verfassungszusatz schützt selbst _Hate Speech_, rassistische Äusserungen, verfassungswidrige Symbolik und extreme politische Propaganda.
- **Illegal:** Nahezu ausschliesslich Kinderpornografie (_CSAM_), direkte Aufrufe zu unmittelbar bevorstehender Gewalt (_incitement to imminent lawless action_), Betrug und illegale Handelswaren.

### 2. Schweizer Urheberrecht bei Websites (URG)

- **Lichtbildschutz & Werkschutz:** Sämtliche fremde Inhalte - darunter Texte, Videos, Musik und Fotos (seit der URG-Revision auch einfache Handyschnappschüsse ohne Werkcharakter) - sind gesetzlich geschützt.
- **Bilder & Medien:** Eine blosse Quellenangabe reicht **nicht** aus, um fremde Medien nutzen zu dürfen. Es benötigt eine explizite Lizenz, die Nutzung lizenzfreier Medien (z. B. CC0) oder eigene Aufnahmen.
- **Zitatrecht (Art. 25 URG):** Das Übernehmen von fremden Textpassagen ist nur als Zitat erlaubt, wenn es zur Erläuterung eigener Aussagen dient und die Quelle klar genannt wird.
- **Recht am eigenen Bild:** Personen, die auf hochgeladenen Fotos erkennbar sind, müssen der Veröffentlichung auf der Website zustimmen.
- **Publikation vs. Privatgebrauch:** Während das Herunterladen von Medien im privaten Rahmen in der Schweiz oft straffrei ist, gilt das Bereitstellen auf einer öffentlich zugänglichen Website immer als urheberrechtlich relevante Publikation.

### 3. Schweizer Datenschutz auf Websites (nDSG)

- **Grundsatz:** _"Erlaubt ist, was transparent ist."_ Das nDSG verlangt in der Regel kein explizites Vorab-Einverständnis (_Opt-In_) für Standard-Tracking, sofern die Datenbearbeitung verhältnismässig und transparent offengelegt wird.
- **Datenschutzerklärung:** Pflicht für jede Website, die personenbezogene Daten verarbeitet (z. B. über Server-Logs, Kontaktformulare, Analytics). Sie muss informieren über:
- Kontaktdaten der verantwortlichen Person/Firma.
- Zweck der Datenerhebung und Speicherdauer.
- Mögliche Weitergabe an Dritte oder ins Ausland (inkl. Garantien).
- Betroffenenrechte (Auskunft, Berichtigung, Löschung).
- **Impressumspflicht:** Nach dem Gesetz gegen den unlauteren Wettbewerb (UWG, Art. 3 Abs. 1 lit. s) müssen kommerzielle Websites Name, Adresse und E-Mail-Adresse angeben.
- **Sicherheit:** Technische Massnahmen zum Schutz der Daten (z. B. HTTPS-Verschlüsselung bei Formularübertragungen).

### 4. EU-Datenschutz-Grundverordnung (EU-DSGVO)

- **Marktortprinzip:** Gilt auch für Schweizer Webseitenbetreiber, sobald sich das Angebot an Personen in der EU richtet oder deren Verhalten getrackt wird.
- **Verbot mit Erlaubnisvorbehalt:** Jede Datenverarbeitung ist grundsätzlich verboten, es sei denn, es liegt eine Rechtsgrundlage vor (z. B. ausdrückliche Einwilligung oder überwiegendes berechtigtes Interesse).
- **Cookie-Consent-Banner:** Echte _Opt-In_-Pflicht. Nicht-essenzielle Cookies (Tracking, Marketing) dürfen erst gesetzt werden, nachdem der Nutzer aktiv zugestimmt hat. Ablehnen muss genauso einfach sein wie Zustimmen.
- **Formulare & Newsletter:** Erfordert Datensparsamkeit, explizite Häkchen zur Zustimmung und bei Newslettern das Double-Opt-In-Verfahren.
- **Auftragsverarbeitungsverträge (AVV):** Müssen mit allen externen Dienstleistern abgeschlossen werden, die personenbezogene Daten im Auftrag verarbeiten (z. B. Hosting-Anbieter, Newsletter-Tools).

### 5. US-Datenschutzrecht für Websites

- **Kein zentrales Bundesgesetz:** Anders als in der EU (DSGVO) oder der Schweiz (nDSG) gibt es in den USA kein einheitliches, allumfassendes Datenschutzgesetz auf Bundesebene.
- **Sektoraler Ansatz:** Datenschutz ist über Spezialgesetze für bestimmte Branchen geregelt (z. B. Gesundheit/HIPAA, Finanzen/GLBA) oder auf Ebene einzelner Bundesstaaten:
- **COPPA (Children’s Online Privacy Protection Act):** Strenge bundesweite Auflagen und Nachweis elterlicher Zustimmung, wenn sich Websites an Kinder unter 13 Jahren richten.
- **CCPA / CPRA (Kalifornien):** Das strengste US-Einzelstaatsgesetz. Verlangt unter anderem transparente Hinweise und einen direkten Link im Website-Footer mit der Aufschrift _"Do Not Sell/Share My Personal Information"_.
- **Opt-Out-Prinzip (Notice & Choice):** Die US-Gesetzgebung basiert primär darauf, Nutzer transparent zu informieren (_Notice_) und ihnen die Möglichkeit zu geben, der Datenverarbeitung oder dem Datenverkauf nachträglich zu widersprechen (_Opt-Out_).

## 293-9A SideQuest: (GOING LIVE WICHTIG FÜR PRÜFUNG)

### Technical Check & Performance

- Browser- & Device-Testing: Funktions- und Layoutprüfung auf Chrome, Safari, Firefox, Edge sowie iOS und Android.
- Responsive Design Check: Prüfung aller Breakpoints (Mobile, Tablet, Desktop).
- Formular- & Link-Test: Alle Contact-Forms, Mail-Verknüpfungen, Buttons und externen Links auf Funktion testen.
- Speed & Performance: Bildoptimierung (WebP/AVIF Format), Caching-Konfiguration, Ladezeiten-Check via Google PageSpeed Insights (Ziel: Score > 85).
- 404-Fehlerseite: Einrichten einer benutzerdefinierten Fehlerseite im Mini-Design.

### SEO & Legal Setup (Schweiz)

- On-Page SEO Basics: Vergabe von Seitentiteln (Title-Tags), Meta-Descriptions und strukturierter `H1`/`H2`-Hierarchie.
- Favicon & Open Graph (OG) Tags: Einbinden von Favicon (Browser-Tab-Icon) und Social-Media-Vorschaubildern für LinkedIn, WhatsApp & Co.
- Datenschutz & Impressum: Impressumspflicht gemäss Schweizer Recht (DSG / nDSG). Datenschutzerklärung integrieren.
- Search Engine Visibility: Vorbereitung der `sitemap.xml` und `robots.txt`.

### Inhalts-Check (Content Audit)

- Proofreading: Letzte Rechtschreib- und Grammatikprüfung aller Texte.
- Placeholder Removal: Entfernung aller Dummy-Texte ("Lorem Ipsum") und Platzhalter-Bilder.

## 2. Infrastructure, Hosting & Wiederkehrende Kosten

Da Free-Tiers (Vercel, Netlify) für ein professionelles Kundenprojekt aus Datenschutz- und SLA-Gründen ausscheiden, empfiehlt sich ein etablierter Schweizer Hoster (z.B. Hostpoint, Infomaniak oder hosttech).

| Position                     | Leistung / Beschreibung                                            | Kosten (Richtwerte CH)                               | Intervall            |
| ---------------------------- | ------------------------------------------------------------------ | ---------------------------------------------------- | -------------------- |
| Domain-Registrierung         | `.ch` Domain (`mini.ch`) via SWITCH / Registrar                    | CHF 12.00 - 15.00                                    | Jährlich             |
| Webhosting (Professional)    | CH-Serverstandort, NVMe-Speicher, SSL-Zertifikat, tägliche Backups | CHF 10.00 - 25.00 / Monat                            | Jährlich abgerechnet |
| SSL-Zertifikat               | Let’s Encrypt / DV-SSL (im Webhosting enthalten)                   | CHF 0.00                                             | Inklusive            |
| Business E-Mail Service      | E-Mail-Adressen (z.B. `info@mini.ch`) inkl. Mailboxen              | In Webhosting inkl. (oder MS 365: ca. CHF 6.00/User) | Monatlich / Jährlich |
| Wartung & Support (optional) | Sicherheits-Updates, System-Backups, kleiner Content-Support       | CHF 50.00 - 150.00 / Monat                           | Auf Wunsch           |

## 3. Der Going-Live Prozess (Der Cutover-Tag)

1. Freigabe Kunde: Schriftliches Sign-Off / Gutheissung der Abnahmeseite (Staging-System).
2. Setup der Produktiv-Umgebung: Einrichten des Webhostings und der Datenbank beim Provider.
3. DNS-Aufschaltung: Anpassen der A-Records und CNAMEs bei der Domain `mini.ch`, um auf den neuen Server zu zeigen.
4. SSL-Aktivierung: Generierung und Erzwingen der HTTPS-Verschlüsselung.
5. Entfernung der Sperren: Entfernen von `noindex` und allfälligem Passwortschutz (Basic Auth).
6. Go-Live Test: Unmittelbare Funktionskontrolle der Live-Domain `https://mini.ch`.

## 4. Nach der Veröffentlichung (Post-Launch & Übergabe)

### Technische Nachbereitung

- Google Search Console & Analytics: Aufschalten und Einreichen der `sitemap.xml` zur Indexierung.
- 301-Redirects: Falls eine alte Webseite ersetzt wurde: Umleitung aller alten URLs auf die neuen Strukturen zur Wahrung des Google-Rankings.
- Uptime-Monitoring: Einrichten eines kostenlosen Monitors (z.B. UptimeRobot), der bei Serverausfällen alarmiert.

### Kundenübergabe & Abschluss

- Übergabe-Dokumentation: Aushändigung eines Cheat-Sheets mit allen Zugangsdaten (Hosting, CMS, Domain-Registrar) im Passwort-Manager.
- Kunden-Schulung: Kurze Einführung (z.B. 30-45 Min. via Teams) zur eigenständigen Anpassung von Texten und Bildern.
- Projektabschluss & Rechnungsstellung: Übergabe des Abnahmeprotokolls und Schlussrechnung.
