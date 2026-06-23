#set document(title: "M254 Gesamtdokumentation Fallstudie Topomedics & TimeTrack Pro", author: "Matteo Bosshard")
#set text(font: "New Computer Modern", size: 11pt, lang: "de")
#set par(justify: true)
#set heading(numbering: "1.1")

// -----------------------------------------------------------------------------
// TITELSEITE
// -----------------------------------------------------------------------------
#set page(margin: 3cm)
#align(center)[
  #v(3cm)
  #text(size: 24pt, weight: "bold")[Modul 254: Geschäftsprozesse beschreiben]
  #v(1cm)
  #text(size: 16pt)[Gesamtdokumentation der integrierten SideQuests]
  #v(0.5cm)
  #text(size: 14pt)[Fallstudie Topomedics & Begleitprojekt TimeTrack Pro]

  #v(2cm)
  #rect(width: 80%, height: 6cm, fill: luma(245), stroke: 1pt + luma(150), radius: 5pt)[
    #set align(center + horizon)
    #text(fill: luma(100), size: 12pt)[
      *TOPOMEDICS AG & TIMETRACK PRO* \
      #v(0.5em)
      _Modulübergreifende Projekt- und Prozessdokumentation_
    ]
  ]
  #v(2cm)

  #text(size: 14pt)[*Autor:* Matteo Bosshard]
  #v(0.5cm)
  #text(size: 12pt)[*Datum:* #datetime.today().display("[day].[month].[year]")]
]

#pagebreak()

// -----------------------------------------------------------------------------
// SEITEN-SETUP AB SEITE 2
// -----------------------------------------------------------------------------
#set page(
  margin: (top: 3cm, bottom: 3cm, left: 2.5cm, right: 2.5cm),
  header: [
    #grid(
      columns: (1fr, 1fr),
      align(left)[*M254_Gesamtdokumentation*], align(right)[*Autor:* Matteo Bosshard],
    )
    #v(-0.5em)
    #line(length: 100%, stroke: 0.5pt)
  ],
  footer: context [
    #line(length: 100%, stroke: 0.5pt)
    #v(-0.2em)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align(left)[M254_Gesamtdokumentation.pdf],
      align(center)[#datetime.today().display("[day].[month].[year]")],
      align(right)[Seite #counter(page).display() von #counter(page).final().first()],
    )
  ],
)
#counter(page).update(2)

// -----------------------------------------------------------------------------
// VERZEICHNISSE
// -----------------------------------------------------------------------------
#outline(title: "Inhaltsverzeichnis", depth: 3)
#v(1.5cm)
#outline(title: "Abbildungs- und Tabellenverzeichnis", target: figure)

#pagebreak()

// -----------------------------------------------------------------------------
// KAPITEL 1: 254-1D SideQuest
// -----------------------------------------------------------------------------
= SideQuest 1D: Aufbauorganisation (TimeTrack Pro)

== Definition des Begleitprojekts
Um die theoretischen Grundlagen der Betriebsorganisation praxisnah anzuwenden, wurde folgendes Projekt definiert:
- *Projektname:* TimeTrack Pro
- *Projektziel:* Entwicklung einer webbasierten Applikation zur Zeiterfassung für Lernende. Die App ermöglicht das Loggen von Arbeitsstunden, die Verwaltung von Absenzen und die Generierung von PDF-Reports für Berufsbildner.
- *Technischer Stack:* - Backend: Java 21 mit Spring Boot Framework
  - Frontend: React (JavaScript/TypeScript)
  - Datenbank: PostgreSQL

== Aufbauorganisation
=== Wahl der Organisationsform: Stab-Linien-Organisation
Für die Umsetzung von TimeTrack Pro wurde eine *Stab-Linien-Organisation* gewählt. Diese Form erweitert das klassische Einliniensystem um spezialisierte Beratungseinheiten (Stäbe).

*Begründung:* Da das Projekt hohe Anforderungen an die Code-Qualität und Datensicherheit (Datenschutzgesetz) stellt, wurde eine Stabsstelle für Qualitätsmanagement integriert. Dies ermöglicht den Zugriff auf Expertenwissen, ohne die klaren Entscheidungswege der Projektleitung zu verlangsamen.

=== Visualisierung der Struktur (Organigramm)
Das folgende Diagramm zeigt die hierarchische Struktur und die definierten Stellen samt der QM-Stabsstelle:

#figure(
  image("images/254-1D-StabLinienDiagramm.drawio.png", width: 75%),
  caption: [Organigramm TimeTrack Pro (Stab-Linien-Organisation)],
)

=== Kompetenzraster-Abdeckung
- *Backend-Dev:* Verantwortlich für Datenintegrität und API-Sicherheit.
- *Frontend-Dev:* Zuständig für UI-Implementierung und Barrierefreiheit.
- *Projektleitung:* Gesamtverantwortung für Termine und Stakeholder-Kommunikation.

== Ablauforganisation (Prozessdarstellung)
Zur Ergänzung und Abgrenzung wird hier der dynamische Ablauf des Kernprozesses "Zeit erfassen" dargestellt. Hier wird sichtbar, wie die oben definierten Stellen operativ zusammenarbeiten.

#figure(
  image("images/254-1D-Prozessdarstellung.drawio.png", width: 50%),
  caption: [Prozessablauf: Zeit erfassen in TimeTrack Pro],
)

#pagebreak()

// -----------------------------------------------------------------------------
// KAPITEL 2: 254-2A SideQuest
// -----------------------------------------------------------------------------
= SideQuest 2A: Geschäftsprozesse (Topomedics)

== Analyse der Prozessfragen
Die folgende Tabelle zeigt die Arbeitsanalyse für den telefonischen Ersatzteil-Bestellprozess der Topomedics AG.

#figure(
  table(
    columns: (1fr, 2fr),
    fill: (x, y) => if y == 0 { luma(230) } else { white },
    stroke: 0.5pt,
    [*Analysekriterium*], [*Ergebnis für Topomedics*],
    [Wer ist betroffen? \ _(Aufgabenträger)_],
    [Kunde, Kundendienstmitarbeiter, Lagerpersonal, Versandabteilung, Buchhaltung (Zahlungsprüfung).],

    [Welche Sachmittel werden eingesetzt?],
    [Telefonanlage, ERP-System (Lagerprüfung/Aufträge), Computer/Workstation, Verpackungsmaterial, Etikettendrucker.],

    [Wann ist es möglich? \ _(Zeit)_], [Während der Geschäftsöffnungszeiten (z. B. Mo-Fr, 08:00 - 17:00 Uhr).],
    [Wo wird die Arbeit erledigt? \ _(Ort)_],
    [Kundendienst (Büro/Call-Center), Lager (Kommissionierung), Versandrampe.],

    [Wie oft pro Tag? \ _(Menge)_], [Abhängig vom Kundenstamm (Annahme für die Analyse: ca. 30-50 Anrufe/Tag).],
  ),
  caption: [Arbeitsanalyse des Bestellprozesses],
)

== Detaillierte Arbeitsanalyse & Ressourcenverbrauch
Um das Sparpotenzial zu ermitteln, betrachten wir die Faktoren Kosten und Nutzen:
- *Ressourcenverbrauch (Kosten):* Die telefonische Aufnahme dauert lange (Modellsuche, Seriennummern abgleichen). Manuelle Übertragung führt oft zu Falschlieferungen.
- *Ergebnis (Nutzen):* Persönliche Beratung und direkte Bestätigung der Bestellung.
#pagebreak()
== Identifikation von Sparpotenzialen
Die Analyse zeigt, dass der Prozess durch den Medienbruch teuer ist. Die folgende Prozessskizze visualisiert die optimierten Abläufe und Schnittstellen zur Hebung dieser Potenziale:

#figure(
  image("images/254-2A-Aufgabe3.drawio.png", width: 40%),
  caption: [Optimierungspotenziale im Bestellprozess],
)

#pagebreak()

// -----------------------------------------------------------------------------
// KAPITEL 3: 254-5B SideQuest
// -----------------------------------------------------------------------------
= SideQuest 5B: Prozessaufnahme & UML (Topomedics)

== Prozessaufnahme
Für die Erweiterung des bestehenden, telefonischen Ersatzteil-Bestellprozesses wird hier der vorgelagerte und integrierte Teilprozess "Produkt- und Stammdatenaktualisierung im Intranet" formal erfasst.
- *Zielsetzung:* Bereitstellung einer zentralen, stets aktuellen Intranet-Plattform für alle 3'500 Ersatzteile.
- *Prozessbesitzer:* Produktmanagement (Abteilung Verkauf & Marketing).
- *Input:* Aktualisierte Produktdatenblätter, Preisänderungen.
- *Output:* Validierte, live geschaltete Produktdaten im Intranet-Katalog und synchronisierte Datensätze im ERP.
#pagebreak()
== Kombinierte Prozessbeschreibung
Der Ablauf der Stammdatenaktualisierung stellt sich im Flussdiagramm wie folgt dar:

#figure(
  image("images/254-5B-Flussdiagramm.drawio.png", width: 40%),
  caption: [Flussdiagramm: Datenaktualisierung im Intranet],
)

#v(1em)
*Tabellarische Beschreibung der Hauptschritte:*
#figure(
  table(
    columns: (2.5fr, 1.5fr, 1.5fr, 1.5fr),
    fill: (x, y) => if y == 0 { luma(230) } else { white },
    stroke: 0.5pt,
    [*Schritt / Beschreibung*], [*Hilfsmittel*], [*Verantwortung*], [*Output*],
    [1. Daten-Import auslösen], [FTP-Server, API], [System, IT-Betrieb], [Roher Datenstrom],
    [2. Automatisierte Validierung], [Skript, Log], [System], [Validierungsprotokoll],
    [4. Manuelle Nachpflege], [Intranet-Admin], [Produktmanager], [Bereinigter Datensatz],
    [7. Intranet-Abruf & Erfassung], [Webbrowser], [Kundendienst], [Artikel im Korb],
    [8. ERP-Übergabe & Abschluss], [ERP-System], [Logistik], [Status-Update],
  ),
  caption: [Detaillierte Prozessschritte der Stammdatenaktualisierung],
)

== UML UseCase-Diagramm (Anwendungsfalldiagramm)
Das Anwendungsfalldiagramm dokumentiert die Anforderungen an das System aus der Sicht des Produktmanagements sowie der angebundenen Umsysteme:

#figure(
  image("images/254-5B-UseCaseDiagram.drawio.png", width: 85%),
  caption: [UML UseCase-Diagramm Produktdatenverwaltung],
)

#pagebreak()

// -----------------------------------------------------------------------------
// KAPITEL 4: 254-6A & 254-6B SideQuest
// -----------------------------------------------------------------------------
= SideQuest 6: Vertiefte Prozessmodellierung (Flussdiagramm & EPK)

== SideQuest 6A: Detailliertes Flussdiagramm
Zur präzisen Abbildung der Verzweigungslogiken und Systemgrenzen wurde ein erweitertes funktionales Flussdiagramm erstellt:

#figure(
  image("images/254-6A-Flussdiagramm.drawio-Teil1.png", width: 60%),
  caption: [Erweitertes Flussdiagramm der Systemprozesse (Teil 1)],
)

#figure(
  image("images/254-6A-Flussdiagramm.drawio-Teil2.png", width: 55%),
  caption: [Erweitertes Flussdiagramm der Systemprozesse (Teil 2)],
  outlined: false,
  numbering: none,
)

== SideQuest 6B: Ereignisgesteuerte Prozesskette (EPK)
Für die betriebswirtschaftliche Analyse wurde der Ablauf zusätzlich als Ereignisgesteuerte Prozesskette (EPK) abgebildet. Diese Notation verknüpft Ereignisse und Funktionen über logische Operatoren (AND, OR, XOR):

#figure(
  image("images/254-6B-EPK.drawio-Teil1.png", width: 60%),
  caption: [Ereignisgesteuerte Prozesskette (EPK) (Teil 1)],
)

#figure(
  image("images/254-6B-EPK.drawio-Teil2.png", width: 40%),
  caption: [Ereignisgesteuerte Prozesskette (EPK) (Teil 2)],
  outlined: false,
  numbering: none,
)

#pagebreak()

// -----------------------------------------------------------------------------
// KAPITEL 5: 254-7C SideQuest
// -----------------------------------------------------------------------------
= SideQuest 7C: Prozesslandkarte & Schnittstellen

== Prozesslandkarte und Hauptprozesse
Der Gesamtablauf der Topomedics wird in die drei klassischen Prozesskategorien (Führung, Wertschöpfung, Unterstützung) unterteilt.

#figure(
  image("images/254-7C-Aufgabe-Prozesslandkarte.drawio.png", width: 100%),
  caption: [Prozesslandkarte Topomedics AG],
)
#pagebreak()
== UML Use-Case Diagramm (E-Commerce System)
Der Kunde navigiert im Webshop-Frontend, legt ein Produkt in den Warenkorb und geht zum Checkout. Das System prüft asynchron die Verfügbarkeit in der Datenbank.

#figure(
  image("images/254-7C-Aufgabe-UML-Use-Case.drawio.png", width: 100%),
  caption: [UML Use-Case Webshop-Bestellabwicklung],
)
#pagebreak()
== Swimlane-Aktivitätendiagramm & Schnittstellen
Das abteilungsübergreifende Swimlane-Diagramm zeigt den genauen Informations- und Materialfluss vom Bestelleingang bis zur Logistikübergabe (Order-to-Production):

#figure(
  image("images/254-7C-Aufgabe-Flussdiagramm.drawio.png", width: 95%),
  caption: [Swimlane-Aktivitätendiagramm (Order-to-Production)],
)

*Definition der Schnittstellen (Datentrennung):*
- *Mensch-Maschine-Schnittstellen (Organisatorisch zu Technisch):*
  - _Web-Frontend (GUI):_ Übermittlung der Produkt-ID und Warenkorb-Payloads an das E-Commerce-Backend.
  - _Checkout-Maske (GUI):_ Eingabe von Lieferadresse und sichere Übertragung von Zahlungs-Tokens.
- *Maschine-Maschine-Schnittstellen (Technisch zu Technisch):*
  - _ERP-Integration (API):_ JSON-Payload via REST-Schnittstelle an die ERP-Datenbank zur synchronen Verbuchung.
  - _Logistik-Webservice (API):_ Direkte Kommunikation mit der API der Schweizer Post zur automatischen Label-Generierung und Rückführung der Tracking-ID.
  - _Mailing-Gateway (SMTP):_ Automatischer, Event-gesteuerter Versand von Transaktions- und Versandbestätigungen.
