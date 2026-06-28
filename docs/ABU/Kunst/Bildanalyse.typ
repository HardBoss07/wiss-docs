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
#show figure.caption: set text(size: 8pt)

// Überschriften-Styling
#show heading: set block(above: 1em, below: 0.75em)
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
  columns: (5fr, 2fr),
  gutter: 1.5em,

  // LINKE SPALTE: Der Beschreibungstext
  [
    In dem Bild erkennt man ein junges Mädchen, das mit dem Rücken leicht nach rechts gedreht auf einem Stuhl sitzt. Sie trägt ein hellblaues Kleid, das weisse Verzierungen hat. In ihrem Haar ist eine blaue Haarschleife. Die Arme sind leicht angewinkelt und die Hände liegen auf ihrem Schoss. Der Blick des Mädchens ist nach links gerichtet. Ihr rötliches Haar ist leicht gewelllt und fällt weit über ihre Schultern und Rücken. Der leicht unscharfe Hintergrund zeigt dichtes Gebüsch oder einen abgedunkelten Garten. In der rechten, oberen Ecke sind noch Blumen in einem blassen Pinkton sichtbar. Der verzierte, hölzerne Rahmen gibt dem Gemälde einen passenden Abschluss.
  ],

  // RECHTE SPALTE: Das Bild
  figure(
    image("./images/die_kleine_irene.jpg", width: 100%),
    caption: [Renoir, *Die kleine Irène*, 1880.],
  ),
)

// Vorgabe: Künstlerbiografie als Textfeld mit Schriftgrösse 8 pt und Endnote
#rect(width: 100%, stroke: 0.5pt + luma(150), fill: luma(250), inset: 10pt)[
  #set text(size: 8pt)
  *Künstler-Kurzbiografie: Pierre-Auguste Renoir* \
  Der französische Maler Pierre-Auguste Renoir (1841-1919) begann seine Künstlerlehre als Porzellanmaler. 1862 fing er ein tiefgründiges Studium an der Pariser Ecole des Beaux-Arts im Atelier von Charles Gleyre an. Renoir gehörte zu den Mitbegründer und prägendsten Künstlern des Impessionismusses. Dort lernte er Claude Monet, Frédéric Bazille und Alfred Sisley kennen, mit denen er fortan die Freilichtmalerei (En plein air) entwickelte. Renoirs Arbeiten zeichnen sich durch den Fokus auf Lichteffekte, lebendige Farben und die Darstellung der Pariser Freizeitgesellschaft aus.

  In den 1880er-Jahren, der Entstehungszeit von *Die kleine Irène*, distanzierte er sich zunehmend vom reinen Impressionismus. Nach einer Italienreise im Jahr 1881 leitete er seine sogenannte "ingreske" oder "glorreiche" Periode ein, in der er zu einer klassischeren, schärfer konturierten Linienführung und einer festeren Kompositionsstruktur zurückkehrte. Trotz schwerer Arthritis im Alter malte er bis zu seinem Tod in Cagnes-sur-Mer unaufhörlich weiter.#footnote[Quelle für die Biografie: #link("https://de.wikipedia.org/wiki/Pierre-Auguste_Renoir")]
]

// --- 2. BILDANALYSE / -INTERPRETATION ---
= 2. Bildanalyse und -interpretation

Die Komposition des Gemäldes fokussiert sich stark auf das blasse Gesicht und die rot-leuchtend (evlt auch leuchtend-roten) Haare des Mädchens, die sich kontrastreich vom dunklen Hintergrund abheben. Renoir nutzt eine raffinierte Farbpalette: Das kühle Blau des Kleides und der Haarschleife erzeugt einen starken Komplementärkontrast zu dem warmen, leuchtenden Kupferton ihrer Haare. Die sanfte Beleuchtung von links vorne lenkt die Aufmerksamkeit direkt auf ihr zartes, fast porzellanartiges Gesicht.

Technisch zeigt das Werk eine faszinierende Zweiteilung: Der Hintergrund und das Kleid sind mit schnellen, sichtbaren und lockeren Pinselstrichen gemalt. Im Jedoch im Gesicht der kleinen Irène nutze Renoir eine sehr feine, glatte Technik, die es beinahe fotorealistisch wirken lässt.

Das Bild vermittelt eine ruhige, fast trübsinnige Stimmung. Irène wirkt durch ihren abgewandten, in die Ferne gerichteten Blick verträumt und in sich gekehrt. Das Gemälde strahlt unmissverständlich den Reichtum und den hohen Status des Pariser Grossbürgertums aus, was an der feinen Seide ihres Kleides und der aufwendigen Pflege ihres Haares deutlich wird. Dennoch gelingt es Renoir, sie nicht nur als Statussymbol, sondern als verletzliches, kindliches Individuum in einer stillen Sekunde festzuhalten, was zum fotorealistischem Gefühl stark beiträgt.

// --- 3. DIE KUNSTEPOCHE: IMPRESSIONISMUS ---
= 3. Die Kunstepoche: Impressionismus

Der Impressionisumus entstand in Frankreich in der zweiten Hälfte des 19. Jahrhunderts hauptsächlich als Gegenbewegung zur strengen, akademischen Ateliermalerei. Die Künstler wandten sich vom historischen Rhetorik ab um die schönen Momente des Alltagsleben zu festhalten. Das Ziel des Impressionismus' ist das Festhalten der flüchtigen Momente, der sogenannen "Impression". Typisch sind eine helle Farbpalette, der Verzicht auf harte Konturen und Freilichtmalerei. Dies in Kombination von nebeneinander gesetzten Farbtupfern geben dem Impressionismus seinen ikonischen Stil.

Die drei folgenden Werke veranschaulichen diese Merkmale eindrücklich: Monets *Sonnenaufgang* verzichtet fast völlig auf Details; Schiffe und Wasser verschwimmen im morgendlichen Dunst, während die rote Sonne als leuchtender Farbklecks im Zentrum steht. Dieses Bild gab der gesamten Epoche ihren Namen. Renoirs *Bal du Moulin de la Galette* fängt das pulsierende Leben der Pariser Freizeitgesellschaft ein. Es zeigt meisterhaft, wie das Sonnenlicht durch die Baumblätter bricht und als flimmernde Lichtflecken auf die tanzende Menge fällt. Degas' *La Classe de Danse* bringt schliesslich den Aspekt der ungewöhnlichen Perspektiven ein: Die Ballerinen wirken ungestellt, einige richten ihre Kleider, was den typischen Schnappschuss-Charakter des Impressionismus unterstreicht.

#align(center)[
  #grid(
    columns: (32%, 48%),
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
      image("./images/la_classe_de_danse.png", width: 100%),
      caption: [Degas, *La Classe de Danse*, 1876. Öl auf Leinwand.],
    ),
  )
]

// --- 4. EINORDNUNG IN DIE KUNSTEPOCHE ---
= 4. Einordnung in die Kunstepoche

*Die kleine Irène* ist ein bewundernswertes Werk, da es genau an der Schwelle von Renoirs impressionistischer Phase zu seinem späteren, klassischeren Stil steht. Die Behandlung des Hintergrunds mit den flimmernden, unstrukturierten grünen Farbflecken ist durch und durch impressionistisch. Das Gesicht hingegen bricht leicht mit den strengen Regeln der Epoche: Es hat klare, sanfte Konturen und ist nicht in impressionistische Farbtupfer aufgelöst. Das Werk verbindet somit die atmosphärische Leichtigkeit des Impressionismus mit der Präzision und Fotorealismus der klassischen Porträtmalerei.

// --- 5. BEDEUTUNG FÜR DIE KÜNSTLERKARRIERE ---
= 5. Bedeutung des Bildes für die Karriere von Renoir

Renoir hatte das Gemälde im Auftrag von dem wohlhabenden jüdischen Bankier Louis Cahen d'Anvers erstellt. Solche luktrativen AUfträge aus dem Wohlstand gaben der Karriere von Renoir einen gewaltigen Aufschwung, da er finanzielle Sicherheit und Anerkennung in den höchsten gesellschaftlichen Kreisen versorgte. Andere Künstler seiner Zeit, wie MOnet, an eigenständigen impressionistischen Ausstellungen festhielten und deswegen oft in finanzieller Unsicherheit lebten. Interesanterweise war die Familie Cahen d'Anvers mit dem Portrait der Irene vorerst unzufrieden, weshalb sie es jahrelang ausser Sichtweite aufbewahrten und Renoir nur zögerlich bezahlten. Dennoch festigte genau diese Art von prestigeträchtiger Arbeit seinen Ruf als gefragter Porträtmaler seiner Zeit.

#pagebreak()

// --- VERZEICHNISSE (Zählen laut Vorgabe nicht zum Textlauf) ---
= Abbildungsverzeichnis
#outline(
  title: none,
  target: figure.where(kind: image),
)

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
