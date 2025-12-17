# Modul 231

## 231-1A SideQuest

### 1. Einleitung: Lehrgespräch - Playstation Hack

* Was ist passiert?

  * 2011: Playstation Network Hack
  * 77 Millionen Konten betroffen
  * Gestohlene Daten: Namen, Adressen, E-Mail-Adressen, Passwörter, Kreditkartendaten

* Folgen:

  * Temporäre Abschaltung des Netzwerks
  * Finanzielle Schäden
  * Vertrauensverlust bei Kunden
  * Strafrechtliche & regulatorische Konsequenzen

### 2. Datenschutz & Datensicherheit

* Datenschutz: Schutz personenbezogener Daten vor Missbrauch (wer darf was speichern/verarbeiten?)

* Datensicherheit: Technische & organisatorische Massnahmen, um Daten vor unbefugtem Zugriff, Verlust oder Zerstörung zu schützen

* Normen / Standards:

  * **ISO 27000:** Internationaler Standard für Informationssicherheits-Managementsysteme
  * **DSGVO (EU) / CH Datenschutzgesetz:** Rechtlicher Rahmen für Umgang mit personenbezogenen Daten
  * **NIST (USA):** Framework für Cybersecurity Best Practices

### 3. Aufgabe / Quest: Beispiel Hackerangriff

* **Beispiel:** Equifax Data Breach (USA, 2017)
  * **Gestohlene Daten:** Name, Geburtsdatum, Sozialversicherungsnummer, Kreditkartendaten, Adressen
  * **Betroffene:** 147 Millionen Menschen

### 4. Kategorien von schutzwürdigen Daten

* **Definitionen CH / EU:**
  * **CH:** Datenschutzgesetz (DSG) → „Personendaten“, „besondere Personendaten“
  * **EU:** DSGVO → „personenbezogene Daten“ (inkl. sensible Daten wie Ges&heit, Religion, Biometrie)

* **Equifax-Beispiel:**
  * Hochsensible Daten: Sozialversicherungsnummer, Kreditkarteninfo → besonders schützenswert
  * Normale Personendaten: Name, Adresse

### 5. Analyse: Datenschutz vs. Datensicherheit

| Aspekt                   | Playstation Hack                        | Equifax Hack                            |
| ------------------------ | --------------------------------------- | --------------------------------------- |
| Datenschutz verletzt     | Ja, persönliche Daten gestohlen         | Ja, hochsensible Daten gestohlen        |
| Datensicherheit verletzt | Ja, unzureichende Sicherheitsmassnahmen | Ja, Sicherheitslücken im System genutzt |

### **6. Präventive Massnahmen**

* Starke Passwortrichtlinien, Zwei-Faktor-Authentifizierung
* Regelmässige Sicherheitsupdates & Patches
* Verschlüsselung sensibler Daten
* Sicherheits-Audits & Penetrationstests
* Mitarbeiterschulung zu Phishing & Social Engineering

## 231-1B SideQuest

### Wo speichere ich meine Daten?

* Geräte (Laptop „matte“, Desktop „matteo“, Smartphone)
* Browser-Password‑Vaults: Google Chrome Password‑Vault (Desktop, Laptop)
* System-/Cloud‑Speicher: Apple iCloud (Passwörter), Google Server (Sync)
* Passwort‑Manager: Proton Pass / ProtonPass (lokale/verschlüsselte Vaults, Sync zu Proton‑Servern).
* Externe Server (wo die Daten landen): Google-Server, Apple iCloud-Server, Proton‑Pass-Server

### Auswirkungen wenn Daten gestohlen werden

* E-Mail / Login-Daten: Accountübernahme, Passwort-Resets anderer Konten (Kaskadeneffekt).
* Bank-/Kreditkartendaten: Finanzielle Verluste, Erstattungskämpfe.
* Sozialversicherungs-/Personennummer / Behörden-Daten: Identitätsdiebstahl, Kreditanfragen unter falschem Namen.
* Fotos & Social Media: Erpressung, Rufschädigung, unerwünschte Wiederverwendung.
* Gaming-Accounts (Steam): Gekaufte Spiele/Inventar gestohlen, Guthabenverlust, Fre&elisten-Missbrauch.
* Passwort-Vault / Master-Key gestohlen: Extrem hohes Risiko -> Angreifer hat potenziell alle deine Zugangsdaten.

### Was für Daten kann man herausfinden & welchen Vorteil bekommt man dadurch

* Öffentliche Quellen / OSINT (was typischerweise gef&en wird):
  * Social-Media-Profile (Name, Fotos, Schule/Arbeit, Hobbys, Wohnort-Hinweise durch Geotags).
  * Profilfotos / Fre&eslisten -> Rückschlüsse auf soziales Umfeld.
  * Kommentare, Foren-Beiträge, frühere Accounts (Reddit, Foren).
  * Domain-/E-Mail-Lecks (bei Datenpannen veröffentlichte Dumps).
  * Öffentliche Register (z.B. Firmen­einträge, Vereinslisten, in CH: Handelsregister für Firmen).

* Wie du es selbst prüfen kannst:
  * Google-Suche: dein Name + Stadt / Schule / Nickname.
  * Social Media: Privatsphäre-Einstellungen prüfen (wer sieht Posts/Photos).
  * Prüfen, ob E-Mail in Leaks auftaucht: z.B. „Have I Been Pwned“.
  * Prüfe öffentliche Bilder/Metadaten: entferne exif-Geodaten in Fotos bevor du sie teilst.
  * Suche nach Telefonnummern oder Alias (Messenger, Gaming-Handles).

#### Welchen Mehrwert hat ein Angreifer aus solchen Daten?

* Profiling: Personalisiertes Phishing/Spear-Phishing (höhere Erfolgsrate).
* Social Engineering: Kontakte oder Institutionen gezielt anrufen/mit falschen Identitäten täuschen.
* Kombination mit geleakten Passwörtern: Zugang zu Konten, Übernahmen, finanzielle Ausbeutung.

### Eigene Erfahrung

Ja ich wurde schonmals gehackt. Mein Steam Account war Opfer des Hacks. Schlussendlich habe ich den Steam Guard eingeschalten & ein neues Passwort angelegt. Dadurch konnte ich bisher weitere Hacks vermeiden.

### Wie kann man seinen Account sicherer machen?

* Einzigartige, starke Passwörter für jedes Konto (längere Passphrase oder PW-Generator).
* Nutze einen Passwortmanager (speichert & generiert sichere Passwörter).
* Master-Passwort: sehr stark + niemals teilen.
* Aktivere 2-Faktor-Authentifizierung (2FA) überall dort, wo möglich (App-basierte 2FA besser als SMS).
* Deaktiviere / lösche alte, ungenutzte Accounts & entferne Zahlungsdaten.
* Regelmässige Updates (OS, Browser, Apps).
* Keine Speicherung von Kreditkartendaten im Browser (deaktiviere Autofill).
* Regelmässige Backups (verschlüsselt).
* Sensibilisierung gegen Phishing (keine Links in verdächtigen Mails anklicken).

## Datenschutz vs. Datensicherheit

### Datenschutz
Datenschutz bezieht sich auf den Schutz von personenbezogenen Daten vor Missbrauch, unrechtmässiger Verarbeitung oder Weitergebung. Datenschutz legt fest welche Daten zu welchem Zweck erhebt, gespeichert & verarbeitet werden. Privatssphäre & Selbstbestimmung liegt im Vordergr&.

### Datensicherheit
Datensicherheit bezieht sich auf die technischen & organisatorischen Massnahmen aller Art von Daten. Man soll den sich vor Verlust, Manipulation, Zerstörung oder unbefugtem Zugriff zu schützen. Der Schutz von bereits erhobenen Daten liegt im Vordergr&.
Orientierung: Schutzziele CIA (Vertraulichkeit, Integrität, Verfügbarkeit) + Nachvollziehbarkeit
Standarts: ISO 27001, NIST unter anderem

### Zusammenfassung:

* Datenschutz: Regelt den rechtmässigen & verantwortungsvollen Umgang mit personenbezogenen Daten
* Datensicherheit: Stellt den technischen Schutz aller erhobenen Daten sicher

## Authentifizierung vs. Autorisierung

### Authentifizierung
Die Authentifizierung ist der Nachweis der Identität einer Person oder eines Systems. Dabei wird überprüft, ob jemand wirklich derjenige ist, für den er sich ausgibt. Typische Methoden sind Passwörter, PINs, biometrische Merkmale oder Zwei-Faktor-Authentifizierung. Ziel ist es, sicherzustellen, dass nur berechtigte Personen Zugriff auf ein System erhalten.

### Autorisierung
Die Autorisierung legt fest, welche Rechte & Zugriffsberechtigungen eine authentifizierte Person oder ein System hat. Sie entscheidet also, was jemand nach erfolgreicher Anmeldung tun darf - etwa Lesen, Schreiben oder Verändern von Daten. Der Fokus liegt auf der Kontrolle & Einschränkung von Zugriffen.

### Zusammenfassung:
* Authentifizierung: Überprüft die Identität einer Person oder eines Systems.
* Autorisierung: Bestimmt, welche Aktionen oder Zugriffe nach der Anmeldung erlaubt sind.

## 231-2A SideQuest:

### 1. Unterschied zwischen Authentisierung, Authentifizierung & Autorisierung
* **Authentisierung**
  * Vorgang, bei dem sich eine Person oder ein System ausweist.
  * Beispiel: Eingabe eines Benutzernamens oder Vorzeigen eines Ausweises.
  * Ziel: Die Identität wird bekannt gemacht.
* **Authentifizierung**
  * Vorgang, bei dem überprüft wird, ob die angegebene Identität echt ist.
  * Nachweis erfolgt durch etwas, das man weiss (Passwort), etwas, das man besitzt (Smartcard), oder etwas, das man ist (Fingerabdruck).
  * Ziel: Die Identität wird überprüft & bestätigt.
* **Autorisierung**
  * Vorgang, bei dem festgelegt wird, welche Rechte oder Zugriffsberechtigungen eine Person nach erfolgreicher Authentifizierung hat.
  * Beispiel: Zugriff auf bestimmte Dateien oder Programme.
  * Ziel: Kontrolle & Steuerung von Zugriffen.

Kurz gesagt:
1. Authentisierung - Ich sage, wer ich bin.
2. Authentifizierung - Das System prüft, ob das stimmt.
3. Autorisierung - Das System entscheidet, was ich darf.

### 2. Beispiele aus dem Alltag
* Authentisierung: Eingabe des Benutzernamens beim Login eines Online-Kontos.
* Authentifizierung: Eingabe des Passworts oder Nutzung des Fingerabdrucks, um das Smartphone zu entsperren.
* Autorisierung: Zugriff auf bestimmte Bereiche einer Webseite oder App nach erfolgreicher Anmeldung, zum Beispiel nur Lesen oder Schreiben von Daten.

### 3. Beispiele in Windows- & Linux-Umgebungen
* Authentisierung: Eingabe des Benutzernamens im Login-Fenster oder Terminal.
* Authentifizierung: Eingabe des Passworts oder biometrische Anmeldung über Windows Hello oder PAM in Linux.
* Autorisierung: Zuweisung von Benutzer- & Gruppenrechten, Administratorrechte in Windows oder Root- & Sudo-Berechtigungen in Linux.

### 4. Der Iris-Hack & der Venen-Hack
* Beim sogenannten Iris-Hack von Angela Merkel wurde ein hochauflösendes Foto ihrer Augen aus öffentlichen Quellen verwendet. Das Foto wurde so bearbeitet, dass es von einem Iris-Erkennungssystem als echtes biometrisches Merkmal akzeptiert wurde.
* Beim Venen-Hack wurde ein ähnlicher Angriff mit dem Muster der Handvenen durchgeführt. Angreifer konnten das Muster mit Wärmebildern oder Fotos rekonstruieren, um biometrische Scanner zu täuschen.
* In beiden Fällen wurde die Authentifizierung überlistet, also die Überprüfung, ob die Person tatsächlich echt ist.

**Massnahmen zur Erhöhung der Sicherheit:**
* Einsatz von Mehrfaktor-Authentifizierung (zum Beispiel Passwort & Fingerabdruck kombiniert)
* Verwendung von Lebenderkennung, um Fotos oder Attrappen zu erkennen
* Regelmässige Software-Updates & sichere Sensorhardware
* Vermeidung öffentlich zugänglicher biometrischer Daten in hoher Qualität

### 5. Zusammenfassung der Lernergebnisse
* Authentisierung, Authentifizierung & Autorisierung haben unterschiedliche Aufgaben: Ausweisen, Überprüfen & Freigeben.
* Datenschutz schützt personenbezogene Daten, während Datensicherheit den technischen Schutz aller Daten sicherstellt.
* Sicherheitsmassnahmen wie starke Passwörter, Mehrfaktor-Authentifizierung & aktuelle Systeme erhöhen den Schutz vor Angriffen & Missbrauch.

## 231-2B SideQuest:

### 1. Punkte, die in einem IT-Sicherheitskonzept festgehalten werden müssen
#### Zielsetzung & Geltungsbereich
* Welche Systeme, Daten & Prozesse sollen geschützt werden?
* Wer ist für die Umsetzung verantwortlich?
#### Risikobewertung
* Identifikation möglicher Bedrohungen wie Cyberangriffe, Malware oder menschliche Fehler.
* Analyse von Eintrittswahrscheinlichkeit & Schadenspotenzial.

#### Schutzziele
* Vertraulichkeit: Nur autorisierte Personen dürfen auf Daten zugreifen.
* Integrität: Daten dürfen nicht unbemerkt verändert werden.
* Verfügbarkeit: Systeme & Daten müssen zuverlässig nutzbar sein.

#### Technische Massnahmen
* Firewalls, Antivirus-Software, Verschlüsselung von Daten.
* Backup- & Wiederherstellungskonzepte.
* Zugriffskontrollen & Passwort-Richtlinien.
* Regelmässige Sicherheitsupdates & Patch-Management.

#### Organisatorische Massnahmen
* Sicherheitsrichtlinien für Mitarbeiter.
* Schulungen zur IT-Sicherheit.
* Notfall- & Wiederherstellungspläne (Disaster Recovery).
* Dokumentation von Prozessen & Verantwortlichkeiten.

#### Überwachung & Kontrolle
* Regelmässige Audits & Sicherheitsüberprüfungen.
* Logging & Monitoring von Systemen.
* Penetrationstests & Schwachstellenanalysen.

#### Kontinuierliche Verbesserung
* Regelmässige Aktualisierung des Sicherheitskonzepts.
* Anpassung an neue Bedrohungen & Technologien.

### 2. Empfehlung zur Umsetzung für Edugame
#### Verantwortlichkeiten klären
* Benennung eines IT-Sicherheitsbeauftragten für Umsetzung & Kontrolle.

#### Risikomanagement etablieren
* Bedrohungen analysieren & priorisieren.
* Geeignete Massnahmen zur Risikominimierung umsetzen.

#### Technische Schutzmassnahmen
* Verschlüsselung sensibler Daten.
* Regelmässige Backups & sichere Speicherung.
* Zugriffskontrollen & Mehrfaktor-Authentifizierung.

#### Organisatorische Massnahmen
* Regelmässige Schulungen der Mitarbeitenden.
* Klare Sicherheitsrichtlinien kommunizieren.
* Notfall- & Wiederherstellungspläne erstellen & testen.

#### Monitoring & Kontrolle
* Systeme regelmässig überwachen.
* Sicherheitsvorfälle dokumentieren & analysieren.
* Externe Sicherheitsprüfungen durchführen.

#### Dokumentation & kontinuierliche Verbesserung
* Alle Prozesse schriftlich festhalten.
* Sicherheitskonzept regelmässig aktualisieren & an neue Bedrohungen anpassen.

### 3. Zusammenfassung
* Ein IT-Sicherheitskonzept umfasst technische & organisatorische Massnahmen, um Daten & Systeme zu schützen.
* Schutzziele wie Vertraulichkeit, Integrität & Verfügbarkeit sind zentral.
* Regelmässige Kontrolle, Schulungen & kontinuierliche Verbesserung erhöhen die Sicherheit & verhindern Angriffe.
* Mit einem strukturierten Schutzkonzept kann Edugame ihre Daten zuverlässig sichern & die Geschäftsprozesse absichern.

## Inhalte eines IT-Sicherheitskonzepts

* Zielsetzung & Geltungsbereich
  * Definition der zu schützenden Systeme, Daten & Prozesse
  * Verantwortlichkeiten & Rollen im Unternehmen
* Risikobewertung & Bedrohungsanalyse
  * Identifikation von Gefahren (Cyberangriffe, Malware, menschliches Fehlverhalten)
  * Bewertung von Eintrittswahrscheinlichkeit & Schadenspotenzial
* Schutzziele
  * Vertraulichkeit: Datenzugriff nur für autorisierte Personen
  * Integrität: Schutz vor unbemerkter Veränderung von Daten
  * Verfügbarkeit: Systeme & Daten müssen zuverlässig nutzbar sein
  * Optional: Nachvollziehbarkeit / Revisionssicherheit
* Technische Schutzmassnahmen
  * Firewalls & Netzwerksicherheitskonzepte
  * Antivirus- & Anti-Malware-Lösungen
  * Verschlüsselung von Daten (speziell personenbezogene oder sensible Daten)
  * Backup- & Wiederherstellungskonzepte
  * Zugriffskontrollen & starke Authentifizierung (z.B. Mehrfaktor)
  * Patch-Management & regelmässige Updates
* Organisatorische Massnahmen
  * Sicherheitsrichtlinien & Verhaltensregeln für Mitarbeitende
  * Schulungen & Sensibilisierung für IT-Sicherheit
  * Notfall- & Wiederherstellungspläne (Disaster Recovery)
  * Dokumentation von Prozessen, Verantwortlichkeiten & Systemkonfigurationen
* Überwachung, Kontrolle & Audit
  * Logging & Monitoring von Systemen
  * Regelmässige Audits & Penetrationstests
  * Analyse & Dokumentation von Sicherheitsvorfällen
* Kontinuierliche Verbesserung
  * Regelmässige Überprüfung & Aktualisierung des Sicherheitskonzepts
  * Anpassung an neue Bedrohungen, Technologien & gesetzliche Vorgaben
* Rechtliche & regulatorische Anforderungen
  * Datenschutzgesetze (z.B. DSGVO)
  * Standards wie ISO 27001, NIST oder branchenspezifische Vorgaben

## 231-2C SideQuest:

### 1. DSGVO-Vorgaben für eine Homepage

Seit der Einführung der DSGVO (Mai 2018) gelten insbesondere folgende Änderungen & Vorgaben:

* Einwilligungspflicht für personenbezogene Daten
  * Vor der Erhebung von Daten muss der Besucher aktiv zustimmen (z.B. Kontaktformulare, Newsletter, Tracking).
* Transparenz & Informationspflichten
  * Datenschutzerklärung muss leicht zugänglich, verständlich & aktuell sein.
  * Informationen über Zweck, Dauer der Speicherung & Rechte der Nutzer.
* Recht auf Auskunft, Löschung & Berichtigung
  * Nutzer können jederzeit Auskunft über ihre Daten verlangen & deren Löschung oder Korrektur fordern.
* Verarbeitung personenbezogener Daten nur mit Rechtsgr&lage
  * Daten dürfen nur erhoben werden, wenn dies gesetzlich erlaubt ist, für Vertragserfüllung notwendig ist oder die Einwilligung vorliegt.
* Datensicherheit
  * Technische & organisatorische Massnahmen müssen implementiert werden, um personenbezogene Daten zu schützen (z.B. SSL-Verschlüsselung, sichere Server).
* Meldung von Datenpannen
  * Datenschutzverletzungen müssen binnen 72 St&en der Aufsichtsbehörde gemeldet werden.
* Cookies & Tracking
  * Nur notwendige Cookies dürfen ohne Zustimmung gesetzt werden.
  * Tracking- oder Marketing-Cookies erfordern aktive Einwilligung des Nutzers.
* Vertrag zur Auftragsverarbeitung (AV-Vertrag)
  * Bei Nutzung externer Dienste, die Daten verarbeiten (z.B. Hosting, Newsletter, Analyse-Tools), muss ein Vertrag zur Auftragsverarbeitung abgeschlossen werden.

### 2. Liste notwendiger Punkte für die DSGVO-Compliance

* Datenschutzerklärung auf der Homepage verfügbar & aktuell
* Impressum vollständig & korrekt
* SSL-Zertifikat / HTTPS für sichere Datenübertragung
* Cookie-Banner mit Einwilligung für nicht notwendige Cookies
* Kontaktformulare mit Hinweis auf Datenschutz & Einwilligung
* Newsletter-Anmeldung mit Double-Opt-In-Verfahren
* Tracking-Tools (z.B. Google Analytics) DSGVO-konform einbinden
* Vertrag zur Auftragsverarbeitung mit externen Dienstleistern
* Möglichkeit für Nutzer, ihre Daten anzufordern, zu korrigieren oder löschen zu lassen
* Massnahmen zur Datensicherheit implementieren (Backups, Zugriffskontrollen)
* Prozesse zur Meldung von Datenschutzverletzungen etabliert

### 3. Öffentliche Dienste für DSGVO- & Homepage-Checks

* **DSGVO / Cookie Check**
  * Cookiebot https://www.cookiebot.com
  * Datenschutz-Generator.de https://www.datenschutz-generator.de
  * Cookie Consent Check von eRecht24 https://www.e-recht24.de/tools/cookie-check.html
* **SEO Check / Performance**
  * Google PageSpeed Insights https://developers.google.com/speed/pagespeed/insights/
  * Neil Patel SEO Analyzer https://neilpatel.com/seo-analyzer/
  * SEOptimer https://www.seoptimer.com/

### 4. Dienste zur Überprüfung auf Datendiebstahl / Content-Missbrauch

* **Google Alerts** https://www.google.com/alert - sucht nach Texten oder Marken auf fremden Webseiten
* **TinEye** https://tineye.com - prüft, ob Bilder auf anderen Seiten verwendet werden
* **Copyscape** https://www.copyscape.com - prüft auf Kopien von Textinhalten im Web

### 5. Durchführung der Checks

* **DSGVO / Cookie Check**: z.B. Cookiebot auf edu-example.com
  * Ergebnis: Cookie-Banner vorhanden, notwendige Cookies automatisch aktiviert, Marketing-Cookies nach Einwilligung
* **SEO Check**: Google PageSpeed Insights auf edu-example.com
  * Ergebnis: Ladezeit 85/100, Verbesserungsvorschläge z.B. Bildkomprimierung & Browser-Caching
* **Datendiebstahl / Content Check**: TinEye für Bilder auf edu-example.com
  * Ergebnis: Keine unautorisierten Kopien gef&en

### Zusammenfassung der Lernergebnisse
* DSGVO verlangt Transparenz, Einwilligung, Datensicherheit & Rechte der Nutzer.
* Wichtige Massnahmen auf der Homepage: Datenschutzerklärung, Cookie-Banner, SSL, sichere Formulare & Auftragsverarbeitungsverträge.
* Öffentliche Tools helfen beim Prüfen von DSGVO-Konformität, SEO & Content-Missbrauch.
* Regelmässige Kontrolle & Updates der Website sind notwendig, um dauerhaft DSGVO-konform zu bleiben.

## DSGVO-Checkliste für die Homepage

### Allgemein
* Datenschutzerklärung vorhanden, aktuell & gut zugänglich
* Impressum vollständig & korrekt
* SSL-Zertifikat / HTTPS aktiv

### Cookies & Tracking
* Cookie-Banner vorhanden
* Nur notwendige Cookies ohne Einwilligung aktiv
* Marketing- & Tracking-Cookies nur nach aktiver Zustimmung
* Zustimmung dokumentiert & nachweisbar

### Formulare & Datenverarbeitung
* Kontaktformulare mit Hinweis auf Datenschutz
* Newsletter-Anmeldung mit Double-Opt-In-Verfahren
* Verarbeitung personenbezogener Daten nur mit Rechtsgr&lage
* Möglichkeit für Nutzer, Daten anzufordern, zu korrigieren oder löschen zu lassen

### Auftragsverarbeitung
* Verträge zur Auftragsverarbeitung mit externen Dienstleistern (Hosting, Newsletter, Analyse-Tools) abgeschlossen

### Datensicherheit
* Technische Massnahmen implementiert (Backups, Zugriffskontrollen, Verschlüsselung)
* Prozesse für Notfall & Datenwiederherstellung definiert
* Prozesse für Meldung von Datenschutzverletzungen etabliert

### Überwachung & Kontrolle
* Regelmässige Überprüfung der DSGVO-Konformität
* Nutzung öffentlicher Tools zum Prüfen von Cookie-Konformität, SEO & Datendiebstahl (z.B. Cookiebot, PageSpeed Insights, TinEye)
* Dokumentation aller Prüfergebnisse & Änderungen

## 231-3A SideQuest:

### 1. Inhalte von Impressum, AGB & Datenschutzerklärung

**Impressum (gemäss Schweizer Recht / DSGVO-konform für EU-Besucher)**
* Name & Rechtsform des Betreibers (z.B. GmbH, Einzelperson)
* Adresse des Unternehmens / Betreibers
* Kontaktinformationen (E-Mail, Telefonnummer)
* ggf. Handelsregister-Nummer
* Verantwortliche Person für den Inhalt
* Umsatzsteuer-Identifikationsnummer, falls vorhanden

**AGB (Allgemeine Geschäftsbedingungen)**

* Leistungsbeschreibung / Angebot der Website oder des Shops
* Preise, Zahlungsbedingungen, Lieferbedingungen
* Widerrufsrecht / Rückgaberecht
* Haftungsbeschränkungen
* Vertragsabschluss & Geltungsbereich
* Nutzungsbedingungen der Website (z.B. Login, Inhalte)

**Datenschutzerklärung**

* Welche Daten gesammelt werden (z.B. Cookies, Formulare)
* Zweck der Datensammlung
* Rechtsgr&lage für Verarbeitung (z.B. Einwilligung)
* Weitergabe an Dritte / Drittanbieter (z.B. Google Fonts, YouTube)
* Dauer der Speicherung
* Rechte der Nutzer (Auskunft, Löschung, Widerruf)
* Kontakt für Datenschutzanfragen

### 2. Beispielprüfung einer bekannten Homepage

* **Beispiel:** m4tt3o.dev (eigene Website)
* **Prüfung:**
  * **Impressum:** Fehlend → sollte eingefügt werden
  * **AGB:** Fehlend → evtl. nur relevant bei Shop/Verkauf
  * **Datenschutzerklärung:** Teilweise vorhanden (z.B. YouTube eingebettet, Google Fonts), könnte detaillierter sein

### 3. Dienste, die Dokumente prüfen / bereitstellen

* **Beispiele:**
  * [e-recht24.de](https://www.e-recht24.de/) (AGB & Datenschutz-Generator)
  * [TermsFeed](https://www.termsfeed.com/)
  * [PrivacyPolicies.com](https://www.privacypolicies.com/)

**Vorteile:**
* Schnelle, rechtssichere Vorlagen
* Automatische Anpassung an DSGVO / Schweizer Recht
* Zeitersparnis

**Nachteile:**
* Kostenpflichtig für volle Funktionen
* Keine 100 % individuelle Absicherung – ggf. juristische Prüfung nötig
* Möglicherweise zu allgemein für spezielle Geschäftsmodelle

### 4. Ergebnis
* **Impressum, AGB & Datenschutzerklärung** sind gesetzlich vorgeschrieben.
* Viele Websites (inklusive eigener Projekte) erfüllen diese Vorgaben nicht vollständig.
* Online-Dienste erleichtern Erstellung & Prüfung, ersetzen aber nicht immer eine individuelle juristische Beratung.

## 231-3B SideQuest:

### 1. Übersicht über CMS-Systeme

| CMS         | Typ         | Beschreibung                                                      |
| ----------- | ----------- | ----------------------------------------------------------------- |
| WordPress   | Open-Source | Sehr verbreitet, viele Plugins, flexibel                          |
| Joomla      | Open-Source | Mittelgrosses CMS, gute Benutzerrechteverwaltung                  |
| Drupal      | Open-Source | Sehr sicher, leistungsstark, eher komplex                         |
| Wix         | Proprietär  | Cloud-basiert, einfach zu bedienen, eingeschränkte Anpassung      |
| Squarespace | Proprietär  | Einfach zu bedienen, Design-fokussiert, eingeschränkt bei Plugins |

### 2. Vor- & Nachteile (Visualisierung)

| CMS         | Vorteile                                             | Nachteile                                 |
| ----------- | ---------------------------------------------------- | ----------------------------------------- |
| WordPress   | Grosse Community, viele Plugins, einfach zu bedienen | Sicherheitsrisiken, Updates nötig         |
| Joomla      | Flexible Benutzerrechte, solide                      | Mittelmässig viele Plugins, Lernkurve     |
| Drupal      | Sehr sicher, skalierbar                              | Komplex, hohe Lernkurve                   |
| Wix         | Einfache Bedienung, Hosting inklusive                | Wenig Anpassungsmöglichkeiten, proprietär |
| Squarespace | Schöne Designs, einfach                              | Wenig Flexibilität, proprietär            |

### 3. DSGVO-Voraussetzungen

Ein CMS sollte unterstützen:
* Einbindung von **Datenschutzerklärung** & Cookie-Hinweis
* **Opt-in/Opt-out** für Tracking & Cookies
* Benutzerrechteverwaltung für **Datenlöschung & Export**
* Sichere Speicherung von Nutzerinformationen (SSL, verschlüsselte Datenbanken)

**Beispiele:**
* WordPress: DSGVO-Plugins verfügbar (z.B. "Complianz")
* Drupal: eingebaute Benutzerrechte & Datenschutz-Module
* Wix / Squarespace: DSGVO-konforme Tools integriert

### 4. Ansprüche an ein CMS

* **Sicherheit:** Regelmässige Updates, HTTPS, Rechteverwaltung
* **Komplexität:** Einfach für Redakteure, Admin-Funktionen überschaubar
* **Verfügbarkeit:** Hosting zuverlässig, Backups vorhanden
* **Flexibilität:** Plugins / Erweiterungen möglich
* **Skalierbarkeit:** Wachstum / neue Inhalte leicht integrierbar

### 5. Vergleich & Entscheidung

| Kriterium              | Gewichtung (%) | WordPress | Joomla | Drupal | Wix | Squarespace |
| ---------------------- | -------------- | --------- | ------ | ------ | --- | ----------- |
| Benutzerfre&lichkeit   | 30             | 5         | 3      | 2      | 5   | 5           |
| Sicherheit             | 20             | 3         | 3      | 5      | 3   | 3           |
| DSGVO-Unterstützung    | 15             | 5         | 4      | 5      | 5   | 4           |
| Flexibilität / Plugins | 20             | 5         | 4      | 5      | 2   | 2           |
| Kosten / Aufwand       | 15             | 5         | 3      | 2      | 5   | 5           |

| CMS         | Gesamtpunkte (max. 5) | Prozentwert | Bewertung               |
| ----------- | --------------------- | ----------- | ----------------------- |
| WordPress   | 4.45                  | 89 %        | Beste Wahl              |
| Joomla      | 3.25                  | 65 %        | Gut                     |
| Drupal      | 3.65                  | 73 %        | Fortgeschritten         |
| Wix         | 4.10                  | 82 %        | Gut, aber eingeschränkt |
| Squarespace | 3.95                  | 79 %        | Mittel                  |

**Empfehlung:** WordPress
* Gründe: Balance zwischen Einfachheit, Battle Tested, DSGVO-Tools, Plugins für Spiele/Interaktionen, grosse Community, einfache Content-Pflege für Edugame.

**Datenschutz vs. Datensicherheit:**
* Datenschutz: Regelt den rechtmässigen & verantwortungsvollen Umgang mit personenbezogenen Daten
* Datensicherheit: Stellt den technischen Schutz aller erhobenen Daten sicher

## 231-3C SideQuest

### 1. Was ist mit der Bestätigung gemeint?

**a. Was wird bestätigt & was sind Cookies?**

* Die **Bestätigung** bezieht sich auf die **Einwilligung zur Speicherung von Cookies** auf dem Endgerät des Nutzers.
* **Cookies** sind kleine Textdateien, die von einer Website auf dem Computer oder Smartphone gespeichert werden.
  Sie enthalten Informationen, z.B. über Login-Status, Spracheinstellungen oder das Nutzerverhalten.

**b. Vorteile / Nachteile von Cookies**

| Vorteile                                       | Nachteile                              |
| ---------------------------------------------- | -------------------------------------- |
| Erleichtern Login & Warenkorb-Funktion         | Können das Surfverhalten nachverfolgen |
| Personalisierte Inhalte & Werbung              | Datenschutzrisiko (Profilbildung)      |
| Schnellere Ladezeiten durch gespeicherte Daten | Müssen DSGVO-konform verwaltet werden  |

### 2. Weshalb erst seit 2018 so populär?

* Durch die **EU-Datenschutz-Gr&verordnung (DSGVO)** & das **Telemediengesetz** müssen Websites seit **2018** eine **aktive Zustimmung (Opt-in)** für nicht notwendige Cookies einholen.
* Früher wurden Cookies automatisch gesetzt; seit 2018 ist das **nur mit Zustimmung des Nutzers erlaubt**.
* Daher erschienen ab 2018 überall die bekannten **Cookie-Banner** oder **Consent-Pop-ups**.

### 3. Ergebnisse (Zusammenfassung)

* Cookies speichern Nutzerdaten lokal, um Komfort & Personalisierung zu ermöglichen.
* Die Cookie-Bestätigung ist eine gesetzliche Anforderung, um die **Zustimmung zur Datenverarbeitung** transparent einzuholen.
* Seit 2018 sind diese Hinweise verpflichtend, um **Datenschutzrechte der Nutzer** zu wahren & Bussgelder zu vermeiden.

## Unterschied: Red&anz, Backup & Archivierung

* **Red&anz**

  * Mehrfache Speicherung der Daten *in Echtzeit*.
  * Ziel: **hohe Verfügbarkeit & Ausfallsicherheit**.
  * Beispiel: RAID, gespiegelte Server, mehrere Rechenzentren.
  * Wenn ein System ausfällt, läuft der Betrieb ohne Unterbruch weiter.
  * **Schützt NICHT vor Löschen, Sabotage oder falschen Daten.**

* **Backup**

  * Kopie der Daten, die zu einem bestimmten Zeitpunkt erstellt wird.
  * Ziel: **Wiederherstellbarkeit** nach Datenverlust, Fehlern oder Cyberangriffen.
  * Kann kurz- oder langfristig gespeichert sein.
  * Muss **offline oder logisch getrennt** vom Produktivsystem existieren.
  * Nicht sofort verfügbar – zuerst muss rückgesichert werden.

* **Archivierung**

  * Langfristige, gesetzeskonforme Aufbewahrung von Daten.
  * Daten ändern sich nicht mehr – „statisch & unveränderbar“.
  * Beispiel: 10 oder 20 Jahre Aufbewahrungspflicht.
  * **Wird nicht für den laufenden Betrieb benötigt**, sondern zur Nachweisbarkeit.

## 231-5A SideQuest:

### 1. Welche Kriterien müssen bei der Wahl des Servers beachtet werden?
* Leistung
  * Hohe Zugriffszahlen & gleichzeitige Benutzer.
  * CPU, RAM, schnelle SSD/NVMe Storage.
* Skalierbarkeit
  * Mehr Benutzer = System muss einfach erweiterbar sein.
  * Besonders wichtig wegen massiv steigender Besucherzahlen.
* Verfügbarkeit / Ausfallsicherheit
  * Red&ante Hardware/Netzwerk/Standorte.
  * Minimierung von Downtime.
* Sicherheit
  * Zugriffsschutz, Firewalls, Verschlüsselung, DSGVO/Datenschutz.
* Kosten
  * Anschaffungs- vs. Betriebskosten (CapEx vs. OpEx).
* Betriebsaufwand
  * Betreuung, Monitoring, Updates, Patching.
* Integration
  * Muss mit der vorhandenen Datenbank im eigenen Rechenzentrum funktionieren.

### 2. Welchen Einfluss haben Red&anz, Backup & Archiv auf die Entscheidung?
* Red&anz
  * Erhöht Verfügbarkeit.
  * Kann bedeuten:
    * zwei Server,
    * Lastverteilung (Load Balancer),
    * mehrere Rechenzentren.
  * Besonders wichtig für eine öffentlich zugängliche Webplattform.

* Backup

  * Muss eingerichtet werden, egal ob Cloud oder OnPrem.
  * Schützt vor:
    * versehentlichem Löschen,
    * Cyberangriff,
    * fehlerhaften Updates.
  * Wiederherstellungszeit (RTO) & Datenverlust (RPO) müssen bestimmt werden.

* Archivierung

  * Surf- & Nutzungsdaten müssen mindestens 20 Jahre aufbewahrt werden.
  * Bedeutet:
    * rechtssichere Ablage,
    * unveränderbare Speicherung (WORM, Audit Trail),
    * Lösung muss dafür technisch geeignet sein.
  * Speicherbedarf wächst über Jahrzehnte -> langfristige Kosten einplanen.

### 3. Welchen Einfluss hat die Wahl On-Premise vs. Cloud?

#### On-Premise (eigene Rechenzentren)

| Vorteil                                      | Nachteil                                   |
| -------------------------------------------- | ------------------------------------------ |
| Direkte Kontrolle über Hardware & Sicherheit | Hohe Anschaffungs- & Wartungskosten        |
| Keine laufenden Cloud-Gebühren               | Skalierung ist langsam & teuer             |
| Daten bleiben sicher im eigenen RZ           | Red&anz muss selbst aufgebaut werden       |
| Problemlose Integration mit bestehender DB   | Hardware muss für Spitzen ausgelegt werden |

#### Cloud

| Vorteil                                                  | Nachteil                                        |
| -------------------------------------------------------- | ----------------------------------------------- |
| Sehr einfach skalierbar (horizontal/vertikal)            | Abhängigkeit vom Cloud-Anbieter                 |
| Hohe Verfügbarkeit oft integriert (geografische Red&anz) | Kosten steigen bei hoher Nutzung                |
| Keine Hardware-Kosten                                    | Bei Datenschutz Gesetze beachten                |
| Backups & Monitoring können automatisiert werden         | Integration mit On-Prem DB kann Latenz erzeugen |

### 4. Lassen sich beide Optionen kombinieren?

Ja, ein Hybridbetrieb (Cloud + On-Prem) ist möglich & in diesem Fall sogar sinnvoll.

Begründung:

* Bestehende Datenbank bleibt im eigenen Rechenzentrum.
* Webserver oder Teile der Webplattform laufen in der Cloud & skalieren dynamisch.
* Red&anz kann verbessert werden:

  * z.B. wenn Cloud-System & On-Prem-System sich gegenseitig absichern.
* Backups können sowohl lokal als auch in der Cloud abgelegt werden.
* Archivierung kann kostengünstig in verschiedenen Speicherklassen (z.B. Cold Storage) erfolgen.

Herausforderungen:

* Sichere Verbindung notwendig (VPN, Direct Connect).
* Latenz zwischen Webserver & Datenbank beachten.
* Monitoring & Betrieb werden komplexer.

# Kurzfazit

* Red&anz = Betriebsfähigkeit bei Ausfall
* Backup = Wiederherstellbarkeit nach Datenverlust
* Archivierung = langfristige, unveränderbare Aufbewahrung

Für EduGame AG ist eine Lösung wichtig, die:

* Hohe Ausfallsicherheit bietet.
* Die steigenden Benutzerzahlen bewältigt.
* Backups regelmässig durchführt.
* Archivierung für 20 Jahre ermöglicht.
* Am besten skalierbar ist -> Cloud oder Hybridlösung klar vorteilhaft.

## 231-5B SideQuest:

### Was hat sich geändert?
Am **15. Mai 2021** hat WhatsApp neue Datenschutzregeln eingeführt. Dabei werden nun noch mehr **Metadaten mit Facebook geteilt**, wie Telefonnummer, IP-Adresse, Geräteinformationen, Profilbilder, Status & Kontaktdaten. Auch wenn Nachrichten weiterhin Ende-zu-Ende-verschlüsselt bleiben, kann Facebook aus den Metadaten viel über das Nutzerverhalten ableiten. Wer den neuen Regeln nicht zustimmt, muss mit eingeschränkten Funktionen & Warnhinweisen rechnen.  
Quellen:  
- digitalabs, 15.05.2021 (https://digitalabs.ch/whatsapp-updating-terms-and-privacy-policy-from-15-may-2021)  
- macrumors, 06.01.2021 (https://www.macrumors.com/2021/01/06/whatsapp-privacy-policy-data-sharing-facebook)

### Warum hat Facebook / WhatsApp das gemacht?
Facebook möchte WhatsApp stärker mit seinen anderen Diensten wie Facebook & Instagram verzahnen. Dadurch kann das Unternehmen **Nutzerprofile besser auswerten**, zielgerichtet Werbung schalten & das Verhalten über alle Meta-Dienste hinweg analysieren. WhatsApp rechtfertigt dies damit, dass das Teilen der Informationen die **Sicherheit verbessern, Betrug reduzieren & Dienste besser skalieren** soll. Aus wirtschaftlicher Sicht bringt die Datenintegration aber vor allem Vorteile für Facebooks Werbeplattform.  
Quellen:  
- macrumors, 06.01.2021 (https://www.macrumors.com/2021/01/06/whatsapp-privacy-policy-data-sharing-facebook)  
- onlinemarketing.de, 2021 (https://onlinemarketing.de/unternehmensrichtlinien/whatsapp-datenschutzrichtlinie-datenteilen-mit-facebook-verbindlich)

### Wie haben Nutzer darauf reagiert?
Viele Nutzer waren empört & fühlten sich nicht richtig informiert. In der Folge wechselten Millionen Nutzer in kurzer Zeit zu Alternativen wie **Signal, Telegram oder Threema**. Das führte sogar zu einem Wachstumsschub dieser Dienste. Datenschützer kritisierten die Änderung ebenfalls & sahen eine Verletzung des Datenschutzes. Die Hamburger Behörde untersagte Facebook vorübergehend, bestimmte WhatsApp-Daten für eigene Zwecke zu verarbeiten, bis die Rechtslage geklärt wird.  
Quellen:  
- netzwoche, 11.01.2021 (https://www.netzwoche.ch/news/2021-01-11/whatsapp-aendert-bestimmungen-threema-&-signal-boomen)  
- Datenschutz Hamburg, 11.05.2021 (https://datenschutz-hamburg.de/fileadmin/user_upload/HmbBfDI/Pressemitteilungen/2021/2021-05-11-facebook-anordnung.pdf)

### Unterschied Schweiz vs. EU
In der **EU gilt die DSGVO**, die viel strenger ist. Das bedeutet, dass Facebook personenbezogene Daten nicht ohne klare Zustimmung zu Werbezwecken nutzen darf & Nutzer umfangreiche Rechte haben, z.B. Auskunft oder Datenlöschung. In der **Schweiz war das Datenschutzgesetz zu diesem Zeitpunkt weniger streng**, weshalb Meta theoretisch mehr Freiheiten hatte. Zwar wurde das Schweizer Gesetz 2023 modernisiert, aber die Regelung ist immer noch nicht ganz auf dem Niveau der DSGVO. Daher musste WhatsApp in der EU deutlich vorsichtiger agieren als in der Schweiz.  
Quellen:  
- onlinemarketing.de, 2021 (https://onlinemarketing.de/unternehmensrichtlinien/whatsapp-datenschutzrichtlinie-datenteilen-mit-facebook-verbindlich)  
- netzwoche, 11.01.2021 (https://www.netzwoche.ch/news/2021-01-11/whatsapp-aendert-bestimmungen-threema-&-signal-boomen)

### Bewertung hinsichtlich Datenschutz
Auch wenn die Inhalte der Nachrichten verschlüsselt bleiben, sind Metadaten sehr aussagekräftig. Sie können zum Beispiel zeigen, **wer mit wem, wie oft, zu welcher Zeit & von welchem Ort kommuniziert**. Dadurch entsteht ein digitales Beziehungs- & Bewegungsprofil, ohne dass eine Nachricht gelesen werden muss. Dieser Fall zeigt gut, dass **Datenschutz & Datensicherheit nicht das Gleiche sind**: Sicherheit schützt die Daten vor Angriffen, aber Datenschutz schützt davor, dass ein Unternehmen Daten für Zwecke nutzt, denen der Nutzer nicht zugestimmt hat.

## 231-6A SideQuest:

Die EduGame AG (Schweiz) plant die Veröffentlichung ihres History-Games über die Valve Corporation / Steam (USA).
Diese Zusammenarbeit erfordert eine tiefgreifende Analyse der rechtlichen Rahmenbedingungen (CH, EU, US) sowie der notwendigen Datenschutz- & Datensicherheitsmassnahmen.

### 1. Rechtliche Analyse & Zusammenfassung

Die Zusammenarbeit berührt die Rechtsräume Schweiz (Sitz EduGame), EU (Markt) & USA (Sitz Steam), was die Einhaltung mehrerer Gesetze & Abkommen erfordert.

#### A. Relevante Gesetze & Abkommen

| Gesetz / Abkommen                     | Anwendungsbereich      | Kurze Zusammenfassung                                                                                      |
| ------------------------------------- | ---------------------- | ---------------------------------------------------------------------------------------------------------- |
| DSG (rev. Fassung)                    | Schweiz                | Schutz der Persönlichkeitsrechte natürlicher Personen in der Schweiz.                                      |
| DSGVO                                 | Europäische Union      | Schutz personenbezogener Daten von EU-Bürgern (Marktortprinzip relevant).                                  |
| Swiss-US Data Privacy Framework (DPF) | Datentransfer CH -> US | Schafft die Gr&lage für einen rechtskonformen Datentransfer in die USA.                                    |
| EU-US Data Privacy Framework (DPF)    | Datentransfer EU -> US | Stellt den Angemessenheitsbeschluss für den Datentransfer in die USA dar.                                  |
| CLOUD Act                             | Vereinigte Staaten     | Erlaubt US-Behörden den Zugriff auf Daten von US-Unternehmen, auch wenn diese im Ausland gespeichert sind. |

#### B. Relevante Rechtsräume

Alle drei Jurisdiktionen sind hoch relevant:

* Schweiz (CH): EduGame AG muss das DSG einhalten. Der Datentransfer in die USA wird durch das Swiss-US DPF geregelt.
* Europäische Union (EU): Der Verkauf des Spiels in der EU macht die DSGVO (Marktortprinzip) zwingend anwendbar.
* Vereinigte Staaten (US): Steam unterliegt dem US-Recht, einschliesslich des CLOUD Act, was das Datensicherheitsrisiko bei der Speicherung erhöht.

### 2. Unterschiede Datenschutz vs. Datensicherheit

#### A. Unterscheidung

| Konzept                    | Fokus                                                  | Ziel                                          | Beispiele                                                             |
| -------------------------- | ------------------------------------------------------ | --------------------------------------------- | --------------------------------------------------------------------- |
| Datenschutz (Privacy)      | Schutz der Person (Rechte, Zweckbindung, Transparenz). | Einhaltung von Gesetzen (DSG, DSGVO).         | *Massnahme:* Vertrag (DPA) mit Steam über die Zweckbindung der Daten. |
| Datensicherheit (Security) | Schutz der Daten (Technik, Organisation).              | Gewährleistung der Schutzziele (VIA-Prinzip). | *Massnahme:* Verschlüsselung der Nutzerdatenbank.                     |

#### B. Schutzziele der Datensicherheit (VIA-Prinzip)

* Vertraulichkeit (Confidentiality): Schutz vor unbefugter Kenntnisnahme.
    * *Beispiel:* Zugriff auf sensible Daten nur mit Multi-Faktor-Authentifizierung (MFA).
* Integrität (Integrity): Schutz vor unbefugter oder versehentlicher Veränderung.
    * *Beispiel:* Versionskontrolle für den Quellcode; Datenvalidierung bei Eingabe.
* Verfügbarkeit (Availability): Sicherstellung, dass Daten & Systeme jederzeit zugänglich sind.
    * *Beispiel:* Red&ante Speicherung (RAID, Cluster); Regelmässige Backups (siehe früheres Konzept).

#### C. Berechtigungsmatrix (Zugriffskontrolle)

Die rollenbasierte Zugriffskontrolle (RBAC) bei EduGame sichert die Vertraulichkeit & Integrität kritischer Daten.

| Datenobjekt                         | Geschäftsleitung | Game-Entwicklung | Marketing/Sales | Kundensupport |
| ----------------------------------- | ---------------- | ---------------- | --------------- | ------------- |
| Spiel-Quellcode                     | R                | R / W / E        | -               | -             |
| Kunden-Zahlungsdaten (Report)       | R                | -                | R               | -             |
| Interne Personalakten (Löhne)       | R / W            | -                | -               | -             |
| Kundensupport-Tickets (pers. Daten) | R                | -                | -               | R / W / L     |
| System-Backups (Wiederherstellung)  | R / E            | -                | -               | -             |
| IT-Sicherheitskonzepte              | R / W            | R                | -               | -             |

* *R = Lesen, W = Schreiben, L = Löschen, E = Ausführen.*

### 3. Kategorisierung des Schutzbedarfs von Daten

Der Schutzbedarf leitet die notwendige Stärke der Technischen & Organisatorischen Massnahmen (TOMs) ab.

| Datenart                         | Schutzwürdigkeit   | Begründung                                              | Abgeleitete Massnahmen                                                          |
| -------------------------------- | ------------------ | ------------------------------------------------------- | ------------------------------------------------------------------------------- |
| Spiel-Quellcode                  | Streng Vertraulich | Kern-IP, Verlust des Wettbewerbsvorteils.               | Verschlüsselung im Ruhezustand; HSM für Schlüssel.                              |
| Kunden E-Mails (Newsletter)      | Vertraulich        | Direkter Personenbezug, DSG/DSGVO relevant.             | Speicherverschlüsselung; Zugriffsprotokollierung.                               |
| Interne Personalakten            | Streng Vertraulich | Besonders schützenswerte Daten (Persönlichkeitsrechte). | Physische & logische Zutrittskontrolle; Getrennte Ablage.                       |
| Kunden-Zahlungsdaten             | Streng Vertraulich | Finanzielle & rechtliche Haftung (PCI-DSS).             | Nicht-Speicherung (Tokenisierung); nur Verarbeitung durch zertifizierte Dritte. |
| Vertragsentwurf (DPA)            | Vertraulich        | Juristisch sensibel, Wettbewerbsnachteil.               | Zugriff nur Geschäftsleitung/Recht; Revisionssicherheit.                        |
| Anonymisierte Statistiken        | Öffentlich         | Keine Rückschlüsse auf Personen möglich.                | Keine besonderen TOMs notwendig.                                                |
| System-Backups (Datenbank)       | Vertraulich        | Enthält alle Daten, wichtig für die Verfügbarkeit.      | Offsite-Backup (ausserhalb des Produktionssystems); Vollverschlüsselung.        |
| Techn. Log-Files (IPs, Zugriffe) | Intern             | Indirekter Personenbezug (IP); wichtig für Audits.      | Zeitgesteuerte Löschung; Zugriff nur IT-Sicherheit.                             |

### 4. Anforderungen der EduGame AG an Steam

Die Anforderungen müssen im Data Processing Agreement (DPA) mit Steam (als Auftragsverarbeiter) verankert werden.

#### A. Anforderungen zum DATENSCHUTZ (Recht & Transparenz)

* MUSS: Steam muss die Daten ausschliesslich gemäss den dokumentierten Weisungen der EduGame AG verarbeiten (Zweckbindung).
* MUSS: Steam muss EduGame unverzüglich & umfassend bei der Bearbeitung aller Betroffenenrechte (Auskunft, Löschung) unterstützen.
* MUSS: Steam muss EduGame vollständige Transparenz über eingesetzte Subunternehmer (Sub-Processor) & die Speicherorte der Daten gewähren.
* MUSS: Nach Vertragsende muss Steam alle Daten löschen oder zurückgeben, sofern keine gesetzlichen Pflichten entgegenstehen.

#### B. Anforderungen zur DATENSICHERHEIT (TOMs)

* MUSS: Steam muss eine Rollenbasierte Zugriffskontrolle (RBAC) implementieren, die sicherstellt, dass nur autorisierte Mitarbeiter gemäss Need-to-know auf die Daten zugreifen können.
* MUSS: Alle personenbezogenen Daten müssen sowohl bei der Übertragung (TLS) als auch bei der Speicherung (Festplatten-/Datenbankverschlüsselung) geschützt werden.
* MUSS: Steam muss die Verfügbarkeit der Daten durch regelmässige Backups & ein dokumentiertes Wiederherstellungskonzept gewährleisten.
* MUSS: Die Zugriffe & Änderungen an den Daten (Audit-Logs) müssen protokolliert & EduGame auf Verlangen zugänglich gemacht werden (Integrität).

#### C. Anforderungen zur COMPLIANCE (Rechtskonformität)

* MUSS: Steam/Valve muss die Zertifizierung unter dem Swiss-US & EU-US Data Privacy Framework (DPF) erlangen & aufrechterhalten.
* MUSS: Steam muss EduGame unverzüglich über jegliche behördliche Anfragen oder Anordnungen (insbesondere gemäss CLOUD Act) informieren, es sei denn, dies ist rechtlich untersagt.
* KANN: EduGame behält sich das Audit-Recht vor, die Einhaltung der TOMs durch Steam selbst oder durch unabhängige Dritte zu überprüfen (Art. 28 DSGVO).

## 231-7A SideQuest:

### 1. Welche Sicherheitsmassnahmen gibt es?

- Transportverschlüsselung (**T**ransport **L**ayer **S**ecurity / **S**ecure **S**ockets **L**ayer)
  - Vorteile:
    - Standard, automatisch in fast allen Systemen
    - Einfach einsetzbar
    - Schützt Übertragungsweg
  - Nachteile:
    - Daten auf Servern unverschlüsselt
    - Kein Schutz vor Fehladressierung (falscher Empfänger)
- Ende-zu-Ende-Verschlüsselung (E2EE)
  - Vorteile:
    - Nur Sender & Empfänger können lesen
    - Maximale Sicherheit
    - Selbst Provider können Daten nicht einsehen
  - Nachteile:
    - Key-Management notwendig
    - Nutzerfehler möglich
    - Teils komplizierte Einrichtung
- Verschlüsselte Dateitransfers (z.B. S/MIME, PGP, verschlüsselte ZIPs)
  - Vorteile:
    - Industriestandards
    - Hohe Sicherheit
    - Funktioniert direkt im Mailprogramm
  - Nachteile:
    - Zertifikate/Keys erforderlich
    - Setup für Laien schwierig
    - Probleme bei falschen oder alten Schlüsseln
- Gesicherte Cloud-/Datenaustauschplattformen (z.B. Secure Transfer Portale)
  - Vorteile:
    - Einfach
    - Häufig E2EE
    - Zugriff begrenzbar (Ablaufzeit, PW, SMS-Code)
  - Nachteile:
    - Vertrauen in den Anbieter nötig
    - Teilweise kostenpflichtig
- 2-Faktor-Authentifizierung (2FA / MFA)
  - Vorteile:
    - Schutz selbst bei gestohlenen Passwörtern
    - Niedrige Implementierungshürde
  - Nachteile:
    - SMS-Codes können abgefangen werden
    - Nutzer können Geräte verlieren
- Zugriffskontrollen & Berechtigungsmanagement
  - Vorteile:
    - Nur autorisierte Personen dürfen lesen
    - Wichtig für sensible Daten
  - Nachteile:
    - Falsche Konfiguration = Sicherheitsrisiko
    - Verwaltungsaufwand
- Verschlüsselung gespeicherter Daten (at rest encryption)
  - Vorteile:
    - Schutz bei Server- oder Laptopdiebstahl
    - Ist heute oft Standard
  - Nachteile:
    - Kein Schutz während der Übertragung
    - Keys müssen sicher gespeichert werden
- VPN (Virtual Private Network)
  - Vorteile:
    - Sicherer Tunnel
    - Gut für Remote-Work
  - Nachteile:
    - Kein Ende-zu-Ende
    - Server erhält trotzdem Daten unverschlüsselt

### 2. Wie kommt hier das DSGVO zum Einsatz?

- Datenschutzgrundverordnung (DSGVO / GDPR)
  - Regelt, wie personenbezogene & besonders sensible Daten (z.B. Gesundheitsdaten, juristische Daten) verarbeitet, gespeichert & übertragen werden dürfen.
  - Verlangt Sicherheit, Vertraulichkeit, Integrität & Zugriffsschutz bei jeder Datenübermittlung.

#### a. Wie sieht es hier mit Backup oder einer Archivierung der Daten aus?

- Backups müssen genauso geschützt sein wie die Originaldaten
  - Verschlüsselung (at rest & in transit)
  - Zugriff nur für berechtigte Personen
  - Sichere Speicherorte
- Löschkonzept muss existieren
  - Daten dürfen nicht länger als nötig gespeichert werden
  - Auch Backups müssen gelöscht werden, sobald der Zweck entfällt
- Protokollierung & Nachvollziehbarkeit
  - Wer hat wann auf welche Daten zugegriffen?
- Archivierung nur bei rechtlicher Grundlage
  - z.B. Aufbewahrungspflichten für medizinische Akten oder juristische Dokumente
  - Trotzdem: minimale Speicherung, maximaler Schutz

#### b. Mit welchen Sanktionen muss bei Missbrauch gerechnet werden?

- Verstösse können sehr teuer werden:
  - Bis zu 20 Mio. EUR oder
  - 4 % des weltweiten Jahresumsatzes (je nachdem, was höher ist)
- Zusätzlich:
  - Schadenersatzansprüche der Betroffenen
  - Strafrechtliche Folgen (je nach Land)
  - Meldung an Behörden (72-Stunden-Meldepflicht)
  - Reputationsschäden für Arzt / Anwalt / Unternehmen
- Beispiele für Verstösse:
  - Falscher Empfänger erhält Gesundheitsdaten
  - Nutzung unsicherer Cloud-Dienste
  - Keine Verschlüsselung
  - Fehlende Zugriffskontrollen

### 3. Öffentliche Datendienste / Messenger - was versprechen sie & was geschieht mit den Daten?

#### a. Beispiele: WeTransfer, WhatsApp, Cloud-Dienste, Messenger usw.

- WeTransfer (öffentlicher Datei-Transferdienst)
  - Nicht Ende-zu-Ende-verschlüsselt
  - Daten werden auf Servern zwischengespeichert
  - Speicherort kann EU oder USA sein
  - Für Medizin/Justiz ungeeignet, da Anbieter technisch Zugriff hat
- WhatsApp (Meta)
  - Nachrichten & Anrufe: Ende-zu-Ende verschlüsselt
  - Backups (Google Drive / iCloud) NICHT zwingend E2E
  - Metadaten (wer mit wem, wann) gehen an Meta -> kein Zero-Access
  - US-Konzern -> CLOUD Act Risiko
- Cloud-Dienste (OneDrive, Google Drive, Dropbox ...)
  - Verschlüsselung vorhanden, aber kein echtes E2E
  - Provider verwaltet die Schlüssel -> Zugriff theoretisch möglich
  - US-Anbieter = CLOUD Act / DSGVO-Probleme

#### b. Was geschieht mit den Daten bei solchen Diensten?

Gestützt auf die Informationen aus dem Dokument:

- Viele Dienste haben keinen Zero-Access, d.h. der Anbieter könnte technisch auf Daten zugreifen
- Speicherung erfolgt in Rechenzentren weltweit
  - WhatsApp/Signal z.B. bei AWS/Azure
  - WeTransfer in EU/USA
  - Microsoft 365 abhängig von Kunde/Region
- Daten werden verarbeitet, protokolliert oder analysiert (Metadaten)
- Echte Ende-zu-Ende-Verschlüsselung bieten nur wenige Dienste, z.B.:
  - Threema (CH) -> starkes Beispiel für DSGVO-konform & CH-Server
  - Signal -> sehr starke E2E, aber US-Rechtsraum
  - Proton Mail (CH) -> hohe Sicherheit, E2E für interne Kommunikation
- Einige "sichere" E-Mail-Lösungen sind NICHT echtes E2E
  - Microsoft 365 Message Encryption: Provider hält die Schlüssel
  - HIN-Mail / IncaMail: starke Verschlüsselung, aber Provider hat Infrastrukturkontrolle
- Risiko bei öffentlichen Diensten:
  - Fehlender Datenschutz bei sensiblen Daten
  - Daten könnten missbraucht oder abgefangen werden
  - Metadaten können Dritte interessieren (z.B. Arbeitgeber, Behörden, Konzerne)

Kurz gesagt:
Viele grosse Dienste bieten nur Transportverschlüsselung, aber kein echtes E2E -> geeignet für Alltagskommunikation, aber NICHT für medizinische oder juristische Unterlagen.

### 4. Fallanalyse eines realen Datenmissbrauchs (Vastaamo-Datenleck, Finnland)
[Link zum Wikipedia Artikel](https://en.wikipedia.org/wiki/Vastaamo_data_breach)

- Fallbeschreibung:
  Beim finnischen Psychotherapie-Zentrum *Vastaamo* wurde zwischen 2018–2020 die zentrale Patientendatenbank gehackt. Die Täter entwendeten hochsensible Therapie- & Personendaten & erpressten anschliessend sowohl das Unternehmen als auch einzelne Patienten.

#### a. Welche Daten wurden veruntreut?

| Art der Daten                | Beschreibung                                                                |
| ---------------------------- | --------------------------------------------------------------------------- |
| Personendaten                | Name, Adresse, Telefonnummer, E-Mail, Sozialversicherungsnummer             |
| Gesundheitsdaten             | Diagnosen, Therapietermine, interne Notizen, vollständige Therapie-Berichte |
| Logins / Verwaltungseinträge | Patientennummern, Aktenverknüpfungen, interne IDs                           |
| Kommunikationsdaten          | Nachrichten zwischen Patient & Therapeut (in Teilen)                      |

#### b. An was hat es gelegen?

| Ursache / Fehler                                           | Auswirkung                                                             |
| ---------------------------------------------------------- | ---------------------------------------------------------------------- |
| Unzureichende IT-Sicherheitsmassnahmen                     | Hacker konnten langfristig auf die Datenbank zugreifen                 |
| Fehlende starke Verschlüsselung sensibler Gesundheitsdaten | Daten lagen im Klartext oder schwach geschützt vor                     |
| Mangelnde Zugangskontrollen & Segmentierung                | Ein Angriff reichte aus, um tausende Patientenakten zu kompromittieren |
| Zu zentrale Speicherung ohne Zero-Access-Prinzip           | Betreiber bzw. Angreifer hatten technischen Vollzugriff                |
| Verspätete Erkennung des Angriffs                          | Angreifer konnten Daten kopieren & Erpressung vorbereiten            |

#### Fazit

Der Vastaamo-Fall zeigt deutlich, dass besonders medizinische & psychologische Daten nur dann sicher sind, wenn:
- starke Verschlüsselung eingesetzt wird
- Zugriff strikt beschränkt ist
- Logging, Monitoring & sichere Backups vorhanden sind
- sensible Daten niemals ungeschützt zentral liegen

Für medizinische & juristische Branchen ist der Fall ein klassisches Beispiel dafür, wie ein einzelnes fehlendes Sicherheitskonzept zu einer massiven Datenschutzkatastrophe führen kann.

## 231-8A SideQuest:

### 1. Ziele und Anforderungen
* Verkauf von Fanartikeln zu Bestseller-Spielen
* Kundenkonto ist Pflicht
* Zahlungsmittel müssen hinterlegt werden
* Keine Bestellung auf Rechnung möglich

### 2. Rechtliche Anforderungen
* Impressum
* Allgemeine Geschäftsbedingungen (AGB)
* Datenschutzerklärung
* Einhaltung der DSGVO
* SSL-Verschlüsselung der Webseite

### 3. Datenschutz und Sicherheit
* Sichere Speicherung von Kundendaten
* Keine Speicherung sensibler Zahlungsdaten auf eigenen Servern
* Nutzung zertifizierter Zahlungsanbieter (PCI-DSS, Payment Card Industry Data Security Standard)
* Einwilligung der Nutzer zur Datenverarbeitung

### 4. Technische Umsetzung
* Wahl eines Shop-Systems (z.B. Shopify, WooCommerce, Shopware)
* Integration in bestehende Homepage
* Responsives Design (Desktop, Tablet, Mobile)
* Benutzerfreundliche Navigation

### 5. Kundenkonto
* Registrierung und Login
* Passwort-Richtlinien
* Möglichkeit zur Verwaltung persönlicher Daten
* Konto-Löschung auf Anfrage

### 6. Zahlungsabwicklung
* Integration von Online-Zahlungsmethoden (z.B. Kreditkarte, PayPal)
* Kein Kauf auf Rechnung
* Sichere Zahlungsabwicklung über externe Anbieter