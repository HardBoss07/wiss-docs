# Haftung in digitalen Projekten

## 1. Bereiche der Haftung

Bei digitalen Projekten können Risiken auf verschiedenste Weise auftreten. Dazu gehören Programmierfehler, Sicherheitslücken, Systemausfälle oder Urheberrechtsverletzungen. Geregelt wird dies im Schweizer Recht über verschiedene Haftungstatbestände.

### Vertragliche Haftung (OR 97 ff.)

Besteht eine direkte Vertragsbeziehung zwischen Auftraggeber und IT-Dienstleister (z.B. Werkvertrag nach OR 363 für Individualsoftware oder Auftrag nach OR 394 für Beratung), haftet der Dienstleister für finanziellen Schaden durch Schlechterfüllung, Verzug oder Nichterfüllung (z.B. wenn eine App wegen eines Architekturfehlers nicht wie vereinbart funktioniert oder SLAs verletzt werden).

### Ausservertragliche Verschuldungshaftung (OR 41)

Haftung ohne bestehenden Vertrag bei widerrechtlicher Schadenszufügung. Im digitalen Kontext betrifft dies häufig die Verletzung von Urheberrechten (z.B. unerlaubte Nutzung geschützter Code-Bibliotheken oder Grafiken) oder Verstösse gegen das Datenschutzgesetz (nDSG), etwa bei fahrlässig geöffneten Sicherheitslücken.

### Ausservertragliche Kausalhaftung / Geschäftsherrenhaftung (OR 55)

IT-Unternehmen haften für Schäden, die ihre Angestellten (z.B. Softwareentwickler) Kunden oder Dritten bei der Arbeit zufügen. Die Firma haftet selbst dann, wenn der Geschäftsleitung kein direktes Verschulden nachgewiesen werden kann, ausser sie weist nach, dass alle gebotene Sorgfalt bei Auswahl, Instruktion und Überwachung angewendet wurde.

## 2. Fallbeispiel: Geschäftsherrenhaftung (OR 55)

- **Sachverhalt:** Ein angestellter Softwareentwickler vergisst bei einem Update eine Eingabevalidierung, wodurch eine Datenbank-Sicherheitslücke entsteht. Ein Dritter stiehlt sensible Daten.
- **Schaden:** Finanzieller Schaden beim Kunden durch Systembereinigung und Ertragsausfall.
- **Widerrechtlichkeit:** Verletzung des Datenschutzgesetzes (nDSG) und von Persönlichkeitsrechten.
- **Kausalität:** Die fehlerhafte Programmierung führte direkt zum Datenabfluss und Folgeschaden.
- **Haftungsgrund (OR 55):** Das IT-Unternehmen haftet für den Entwickler, sofern es nicht nachweisen kann, dass ausreichende Code-Reviews und Tests vorgeschrieben und überwacht wurden.

## 3. Fachexpertenbefragung

**Experte:** Denis Pecekanovic  
**Rolle:** Software Engineer .NET, Liechtensteinische Landesbank (LLB)
**Erfahrung:** Tätig in der Softwareentwicklung seit 2017 (seit 2021 bei LLB)

### Q1: Wie unterscheidet Ihr Betrieb zwischen einem unvermeidbaren Bug und einem haftungsrelevanten Mangel?

Bei interner Entwicklung gibt es keine klassischen Verträge, sondern bindende Change Requests. Unkritische Fehler ohne Betriebsbeeinträchtigung (z.B. Layoutfehler) gelten als Bugs. Als Mangel gelten nicht oder fehlerhaft umgesetzte Anforderungen (z.B. falsche Transaktionsberechnungen oder SLA-Verletzungen).

### Q2: Welche Kontrollmechanismen nutzt Ihr Team zum Sorgfaltsnachweis (OR 55)?

Kein Deployment ohne Kundenabnahme. Vorab sichern Entwickler den Code durch Unit-, User-Story- und Integrationstests sowie automatische CI/CD-Pipelines (z.B. in GitLab) ab. Das Testing wird in einem Testmanagement-Tool lückenlos dokumentiert.

### Q3: Wie verhindert Ihr Urheberrechts- und Lizenzverstösse bei Open-Source-Bibliotheken?

Wir nutzen ausschliesslich klar gekennzeichnete, frei nutzbare Open-Source-Bibliotheken. Da die Software nur intern genutzt wird, ist das Risiko von Lizenzkonflikten minimal.

### Q4: Welche Konsequenzen drohen bei ungeplanten Systemausfällen?

Ausfälle betreffen primär den internen Betrieb mit definierten SLAs (z.B. 72h Reaktionszeit). Schwerwiegende Vorfälle müssen jedoch an Aufsichtsbehörden gemeldet werden und können bankenregulatorische Konsequenzen nach sich ziehen.

### Q5: Wer haftet, wenn durch Code-Lücken Kundendaten abfliessen (nDSG)?

Zur Prävention finden obligatorische Compliance-Schulungen statt. Bei Leaks liegt die Verantwortung im Team bzw. bei der Abteilungsleitung. Die rechtliche Beurteilung und Meldung erfolgt durch spezialisierte interne Stellen.

### Q6: Werden Entwickler vor Regressforderungen geschützt?

Da nur intern entwickelt wird und Fachbereiche eng in den Entwicklungsprozess eingebunden sind, bestehen für einzelne Entwickler keine direkten Haftungs- oder Schadensersatzrisiken.
