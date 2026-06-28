// --- SEITEN- UND TEXTEINSTELLUNGEN ---
#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
  numbering: "1",
)

#set text(
  font: "Inter",
  size: 11pt,
  lang: "de",
)

// Standard-Präfix für Abbildungen setzen
#set figure(supplement: [Abb.])

// Überschriften-Styling
#show heading: set block(above: 1.4em, below: 1em)
#set par(justify: true, leading: 0.65em)

// --- TITELBLATT (zählt nicht zu den 2 Seiten Text) ---
#align(center + horizon)[
  #text(size: 20pt, weight: "bold")[Bildanalyse und -interpretation]
  #v(1em)
  #text(size: 16pt)[Pierre-Auguste Renoir: "Die kleine Irène" (1880)]
  #v(2em)
  #text(size: 14pt)[Kunstepoche: Impressionismus]
  #v(4em)
  #text(size: 12pt)[
    *Fach:* Allgemeinbildung \
    *Autor:* Matteo Bosshard \
    *Lehrperson:* Linus Ziltener \
    *Datum:* #datetime.today().display("[day].[month].[year]")
  ]
]

#pagebreak()

// --- 1. BILDBESCHREIBUNG ---
= 1. Bildbeschreibung (Bild 1)

#grid(
  columns: (2fr, 1fr),
  gutter: 1.5em,

  // LINKE SPALTE: Der Beschreibungstext
  [
    Schreiben Sie hier eine kurze Bildbeschreibung. Wer ist zu sehen? Wie ist die Körperhaltung? Welche Farben und Formen stechen sofort ins Auge? Da diese Spalte breiter ist, bleibt das quadratische Bild kompakt auf der rechten Seite.
  ],

  // RECHTE SPALTE: Das Bild
  figure(
    image("./images/die_kleine_irene.jpg", width: 100%),
    caption: [Renoir, *Die kleine Irène*, 1880.],
  ),
)

#v(1em)
// Vorgabe: Künstlerbiografie als Textfeld mit Schriftgrösse 8 pt und Endnote
#rect(width: 100%, stroke: 0.5pt + luma(150), fill: luma(250), inset: 10pt)[
  #set text(size: 8pt)
  *Künstler-Kurzbiografie: Pierre-Auguste Renoir* \
  Der französische Maler Pierre-Auguste Renoir (1841–1919) gehört zu den Mitbegründern und prägendsten Künstlern des Impressionismus. Nach einer Lehre als Porzellanmaler begann er 1862 sein Studium an der Pariser École des Beaux-Arts im Atelier von Charles Gleyre. Dort lernte er Claude Monet, Frédéric Bazille und Alfred Sisley kennen, mit denen er fortan die Freilichtmalerei (En plein air) entwickelte. Renoirs Arbeiten zeichnen sich durch den Fokus auf Lichteffekte, lebendige Farben und die Darstellung der Pariser Freizeitgesellschaft aus.

  In den 1880er-Jahren – der Entstehungszeit von *Die kleine Irène* – distanzierte er sich zunehmend vom reinen Impressionismus. Nach einer Italienreise im Jahr 1881 leitete er seine sogenannte „ingreske“ oder „glorreiche“ Periode ein, in der er zu einer klassischeren, schärfer konturierten Linienführung und einer festeren Kompositionsstruktur zurückkehrte. Trotz schwerer Arthritis im Alter malte er bis zu seinem Tod in Cagnes-sur-Mer unaufhörlich weiter.#footnote[Quelle für die Biografie: #link("https://de.wikipedia.org/wiki/Pierre-Auguste_Renoir")]
]

// --- 2. BILDANALYSE / -INTERPRETATION ---
= 2. Bildanalyse und -interpretation

Hier folgt der Hauptteil der Arbeit.
- *Analyse:* Lichtführung, Pinselstrich (typisch impressionistisch!), Farbpalette, Komposition.
- *Interpretation:* Welche Stimmung wird vermittelt? Wie wird das Mädchen dargestellt? Was sagt das Bild über das Bürgertum dieser Zeit aus?

// --- 3. DIE KUNSTEPOCHE: IMPRESSIONISMUS ---
= 3. Die Kunstepoche: Impressionismus

Hier wird die Epoche allgemein vorgestellt. Was macht den Impressionismus aus? (z.B. Freilichtmalerei, Festhalten des flüchtigen Moments, sichtbare Pinselstriche). Die drei folgenden Werke dienen als stilistische Referenzbilder.

#v(0.5em)
#grid(
  columns: (2fr, 3fr),
  gutter: 1em,

  stack(
    spacing: 1em,
    figure(
      image("./images/sonnenaufgang.png", width: 100%),
      caption: [Monet, *Sonnenaufgang*, 1872. Öl auf Leinwand.],
    ),
    figure(
      image("./images/bal_du_moulin_de_la_galette.png", width: 100%),
      caption: [Renoir, *Bal du Moulin de la Galette*, 1876. Öl auf Leinwand.],
    ),
  ),

  figure(
    image("./images/la_classe_de_danse.png", width: 100%, height: auto),
    caption: [Degas, *La Classe de Danse*, 1876. Öl auf Leinwand.],
  ),
)
#v(0.5em)

// --- 4. EINORDNUNG IN DIE KUNSTEPOCHE ---
= 4. Einordnung in die Kunstepoche

Kurzes Kapitel: Warum ist "Die kleine Irène" ein typisches (oder vielleicht auch untypisches) Werk für den Impressionismus? Vergleiche die Technik in diesem Bild mit den allgemeinen Merkmalen der Epoche.

// --- 5. BEDEUTUNG FÜR DIE KÜNSTLERKARRIERE ---
= 5. Bedeutung des Bildes für die Karriere von Renoir

Welche Rolle spielte dieses Auftragswerk für Renoir? Wie hat es seine finanzielle Situation oder seinen Ruf im Pariser Bürgertum beeinflusst?

#pagebreak()

// --- VERZEICHNISSE (Zählen laut Vorgabe nicht zum Textlauf) ---
= Abbildungsverzeichnis
#outline(
  title: none,
  target: figure.where(kind: image),
)

#v(1em)

= Quellenverzeichnis
#set text(size: 10pt)
#context {
  let notes = query(footnote)
  if notes.len() == 0 {
    [Keine Quellen angegeben.]
  } else {
    for note in notes {
      let num = counter(footnote).at(note.location()).first()

      block()[
        #strong([\[#num\]]) #note.body
      ]
    }
  }
}
