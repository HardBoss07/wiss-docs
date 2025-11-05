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
  * Strafrechtliche und regulatorische Konsequenzen

### 2. Datenschutz und Datensicherheit

* Datenschutz: Schutz personenbezogener Daten vor Missbrauch (wer darf was speichern/verarbeiten?)

* Datensicherheit: Technische und organisatorische Massnahmen, um Daten vor unbefugtem Zugriff, Verlust oder Zerstörung zu schützen

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
  * **EU:** DSGVO → „personenbezogene Daten“ (inkl. sensible Daten wie Gesundheit, Religion, Biometrie)

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
* Sicherheits-Audits und Penetrationstests
* Mitarbeiterschulung zu Phishing und Social Engineering

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
* Gaming-Accounts (Steam): Gekaufte Spiele/Inventar gestohlen, Guthabenverlust, Freundelisten-Missbrauch.
* Passwort-Vault / Master-Key gestohlen: Extrem hohes Risiko -> Angreifer hat potenziell alle deine Zugangsdaten.

### Was für Daten kann man herausfinden & welchen Vorteil bekommt man dadurch

* Öffentliche Quellen / OSINT (was typischerweise gefunden wird):
  * Social-Media-Profile (Name, Fotos, Schule/Arbeit, Hobbys, Wohnort-Hinweise durch Geotags).
  * Profilfotos / Freundeslisten -> Rückschlüsse auf soziales Umfeld.
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

Ja ich wurde schonmals gehackt. Mein Steam Account war Opfer des Hacks. Schlussendlich habe ich den Steam Guard eingeschalten und ein neues Passwort angelegt. Dadurch konnte ich bisher weitere Hacks vermeiden.

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
Datenschutz bezieht sich auf den Schutz von personenbezogenen Daten vor Missbrauch, unrechtmässiger Verarbeitung oder Weitergebung. Datenschutz legt fest welche Daten zu welchem Zweck erhebt, gespeichert und verarbeitet werden. Privatssphäre und Selbstbestimmung liegt im Vordergrund.

### Datensicherheit
Datensicherheit bezieht sich auf die technischen und organisatorischen Massnahmen aller Art von Daten. Man soll den sich vor Verlust, Manipulation, Zerstörung oder unbefugtem Zugriff zu schützen. Der Schutz von bereits erhobenen Daten liegt im Vordergrund.
Orientierung: Schutzziele CIA (Vertraulichkeit, Integrität, Verfügbarkeit) + Nachvollziehbarkeit
Standarts: ISO 27001, NIST unter anderem

### Zusammenfassung:

* Datenschutz: Regelt den rechtmässigen und verantwortungsvollen Umgang mit personenbezogenen Daten
* Datensicherheit: Stellt den technischen Schutz aller erhobenen Daten sicher

## Authentifizierung vs. Autorisierung

### Authentifizierung
Die Authentifizierung ist der Nachweis der Identität einer Person oder eines Systems. Dabei wird überprüft, ob jemand wirklich derjenige ist, für den er sich ausgibt. Typische Methoden sind Passwörter, PINs, biometrische Merkmale oder Zwei-Faktor-Authentifizierung. Ziel ist es, sicherzustellen, dass nur berechtigte Personen Zugriff auf ein System erhalten.

### Autorisierung
Die Autorisierung legt fest, welche Rechte und Zugriffsberechtigungen eine authentifizierte Person oder ein System hat. Sie entscheidet also, was jemand nach erfolgreicher Anmeldung tun darf - etwa Lesen, Schreiben oder Verändern von Daten. Der Fokus liegt auf der Kontrolle und Einschränkung von Zugriffen.

### Zusammenfassung:
* Authentifizierung: Überprüft die Identität einer Person oder eines Systems.
* Autorisierung: Bestimmt, welche Aktionen oder Zugriffe nach der Anmeldung erlaubt sind.

## 231-2A SideQuest:

### 1. Unterschied zwischen Authentisierung, Authentifizierung und Autorisierung
* **Authentisierung**
  * Vorgang, bei dem sich eine Person oder ein System ausweist.
  * Beispiel: Eingabe eines Benutzernamens oder Vorzeigen eines Ausweises.
  * Ziel: Die Identität wird bekannt gemacht.
* **Authentifizierung**
  * Vorgang, bei dem überprüft wird, ob die angegebene Identität echt ist.
  * Nachweis erfolgt durch etwas, das man weiss (Passwort), etwas, das man besitzt (Smartcard), oder etwas, das man ist (Fingerabdruck).
  * Ziel: Die Identität wird überprüft und bestätigt.
* **Autorisierung**
  * Vorgang, bei dem festgelegt wird, welche Rechte oder Zugriffsberechtigungen eine Person nach erfolgreicher Authentifizierung hat.
  * Beispiel: Zugriff auf bestimmte Dateien oder Programme.
  * Ziel: Kontrolle und Steuerung von Zugriffen.

Kurz gesagt:
1. Authentisierung - Ich sage, wer ich bin.
2. Authentifizierung - Das System prüft, ob das stimmt.
3. Autorisierung - Das System entscheidet, was ich darf.

### 2. Beispiele aus dem Alltag
* Authentisierung: Eingabe des Benutzernamens beim Login eines Online-Kontos.
* Authentifizierung: Eingabe des Passworts oder Nutzung des Fingerabdrucks, um das Smartphone zu entsperren.
* Autorisierung: Zugriff auf bestimmte Bereiche einer Webseite oder App nach erfolgreicher Anmeldung, zum Beispiel nur Lesen oder Schreiben von Daten.

### 3. Beispiele in Windows- und Linux-Umgebungen
* Authentisierung: Eingabe des Benutzernamens im Login-Fenster oder Terminal.
* Authentifizierung: Eingabe des Passworts oder biometrische Anmeldung über Windows Hello oder PAM in Linux.
* Autorisierung: Zuweisung von Benutzer- und Gruppenrechten, Administratorrechte in Windows oder Root- und Sudo-Berechtigungen in Linux.

### 4. Der Iris-Hack und der Venen-Hack
* Beim sogenannten Iris-Hack von Angela Merkel wurde ein hochauflösendes Foto ihrer Augen aus öffentlichen Quellen verwendet. Das Foto wurde so bearbeitet, dass es von einem Iris-Erkennungssystem als echtes biometrisches Merkmal akzeptiert wurde.
* Beim Venen-Hack wurde ein ähnlicher Angriff mit dem Muster der Handvenen durchgeführt. Angreifer konnten das Muster mit Wärmebildern oder Fotos rekonstruieren, um biometrische Scanner zu täuschen.
* In beiden Fällen wurde die Authentifizierung überlistet, also die Überprüfung, ob die Person tatsächlich echt ist.

**Massnahmen zur Erhöhung der Sicherheit:**
* Einsatz von Mehrfaktor-Authentifizierung (zum Beispiel Passwort und Fingerabdruck kombiniert)
* Verwendung von Lebenderkennung, um Fotos oder Attrappen zu erkennen
* Regelmässige Software-Updates und sichere Sensorhardware
* Vermeidung öffentlich zugänglicher biometrischer Daten in hoher Qualität

### 5. Zusammenfassung der Lernergebnisse
* Authentisierung, Authentifizierung und Autorisierung haben unterschiedliche Aufgaben: Ausweisen, Überprüfen und Freigeben.
* Datenschutz schützt personenbezogene Daten, während Datensicherheit den technischen Schutz aller Daten sicherstellt.
* Sicherheitsmassnahmen wie starke Passwörter, Mehrfaktor-Authentifizierung und aktuelle Systeme erhöhen den Schutz vor Angriffen und Missbrauch.

## 231-2B SideQuest:

### 1. Punkte, die in einem IT-Sicherheitskonzept festgehalten werden müssen
#### Zielsetzung und Geltungsbereich
* Welche Systeme, Daten und Prozesse sollen geschützt werden?
* Wer ist für die Umsetzung verantwortlich?
#### Risikobewertung
* Identifikation möglicher Bedrohungen wie Cyberangriffe, Malware oder menschliche Fehler.
* Analyse von Eintrittswahrscheinlichkeit und Schadenspotenzial.

#### Schutzziele
* Vertraulichkeit: Nur autorisierte Personen dürfen auf Daten zugreifen.
* Integrität: Daten dürfen nicht unbemerkt verändert werden.
* Verfügbarkeit: Systeme und Daten müssen zuverlässig nutzbar sein.

#### Technische Massnahmen
* Firewalls, Antivirus-Software, Verschlüsselung von Daten.
* Backup- und Wiederherstellungskonzepte.
* Zugriffskontrollen und Passwort-Richtlinien.
* Regelmässige Sicherheitsupdates und Patch-Management.

#### Organisatorische Massnahmen
* Sicherheitsrichtlinien für Mitarbeiter.
* Schulungen zur IT-Sicherheit.
* Notfall- und Wiederherstellungspläne (Disaster Recovery).
* Dokumentation von Prozessen und Verantwortlichkeiten.

#### Überwachung und Kontrolle
* Regelmässige Audits und Sicherheitsüberprüfungen.
* Logging und Monitoring von Systemen.
* Penetrationstests und Schwachstellenanalysen.

#### Kontinuierliche Verbesserung
* Regelmässige Aktualisierung des Sicherheitskonzepts.
* Anpassung an neue Bedrohungen und Technologien.

### 2. Empfehlung zur Umsetzung für Edugame
#### Verantwortlichkeiten klären
* Benennung eines IT-Sicherheitsbeauftragten für Umsetzung und Kontrolle.

#### Risikomanagement etablieren
* Bedrohungen analysieren und priorisieren.
* Geeignete Massnahmen zur Risikominimierung umsetzen.

#### Technische Schutzmassnahmen
* Verschlüsselung sensibler Daten.
* Regelmässige Backups und sichere Speicherung.
* Zugriffskontrollen und Mehrfaktor-Authentifizierung.

#### Organisatorische Massnahmen
* Regelmässige Schulungen der Mitarbeitenden.
* Klare Sicherheitsrichtlinien kommunizieren.
* Notfall- und Wiederherstellungspläne erstellen und testen.

#### Monitoring und Kontrolle
* Systeme regelmässig überwachen.
* Sicherheitsvorfälle dokumentieren und analysieren.
* Externe Sicherheitsprüfungen durchführen.

#### Dokumentation und kontinuierliche Verbesserung
* Alle Prozesse schriftlich festhalten.
* Sicherheitskonzept regelmässig aktualisieren und an neue Bedrohungen anpassen.

### 3. Zusammenfassung
* Ein IT-Sicherheitskonzept umfasst technische und organisatorische Massnahmen, um Daten und Systeme zu schützen.
* Schutzziele wie Vertraulichkeit, Integrität und Verfügbarkeit sind zentral.
* Regelmässige Kontrolle, Schulungen und kontinuierliche Verbesserung erhöhen die Sicherheit und verhindern Angriffe.
* Mit einem strukturierten Schutzkonzept kann Edugame ihre Daten zuverlässig sichern und die Geschäftsprozesse absichern.

## Inhalte eines IT-Sicherheitskonzepts

* Zielsetzung und Geltungsbereich
  * Definition der zu schützenden Systeme, Daten und Prozesse
  * Verantwortlichkeiten und Rollen im Unternehmen
* Risikobewertung und Bedrohungsanalyse
  * Identifikation von Gefahren (Cyberangriffe, Malware, menschliches Fehlverhalten)
  * Bewertung von Eintrittswahrscheinlichkeit und Schadenspotenzial
* Schutzziele
  * Vertraulichkeit: Datenzugriff nur für autorisierte Personen
  * Integrität: Schutz vor unbemerkter Veränderung von Daten
  * Verfügbarkeit: Systeme und Daten müssen zuverlässig nutzbar sein
  * Optional: Nachvollziehbarkeit / Revisionssicherheit
* Technische Schutzmassnahmen
  * Firewalls und Netzwerksicherheitskonzepte
  * Antivirus- und Anti-Malware-Lösungen
  * Verschlüsselung von Daten (speziell personenbezogene oder sensible Daten)
  * Backup- und Wiederherstellungskonzepte
  * Zugriffskontrollen und starke Authentifizierung (z.B. Mehrfaktor)
  * Patch-Management und regelmässige Updates
* Organisatorische Massnahmen
  * Sicherheitsrichtlinien und Verhaltensregeln für Mitarbeitende
  * Schulungen und Sensibilisierung für IT-Sicherheit
  * Notfall- und Wiederherstellungspläne (Disaster Recovery)
  * Dokumentation von Prozessen, Verantwortlichkeiten und Systemkonfigurationen
* Überwachung, Kontrolle und Audit
  * Logging und Monitoring von Systemen
  * Regelmässige Audits und Penetrationstests
  * Analyse und Dokumentation von Sicherheitsvorfällen
* Kontinuierliche Verbesserung
  * Regelmässige Überprüfung und Aktualisierung des Sicherheitskonzepts
  * Anpassung an neue Bedrohungen, Technologien und gesetzliche Vorgaben
* Rechtliche und regulatorische Anforderungen
  * Datenschutzgesetze (z.B. DSGVO)
  * Standards wie ISO 27001, NIST oder branchenspezifische Vorgaben

## 231-2C SideQuest:

### 1. DSGVO-Vorgaben für eine Homepage

Seit der Einführung der DSGVO (Mai 2018) gelten insbesondere folgende Änderungen und Vorgaben:

* Einwilligungspflicht für personenbezogene Daten
  * Vor der Erhebung von Daten muss der Besucher aktiv zustimmen (z.B. Kontaktformulare, Newsletter, Tracking).
* Transparenz und Informationspflichten
  * Datenschutzerklärung muss leicht zugänglich, verständlich und aktuell sein.
  * Informationen über Zweck, Dauer der Speicherung und Rechte der Nutzer.
* Recht auf Auskunft, Löschung und Berichtigung
  * Nutzer können jederzeit Auskunft über ihre Daten verlangen und deren Löschung oder Korrektur fordern.
* Verarbeitung personenbezogener Daten nur mit Rechtsgrundlage
  * Daten dürfen nur erhoben werden, wenn dies gesetzlich erlaubt ist, für Vertragserfüllung notwendig ist oder die Einwilligung vorliegt.
* Datensicherheit
  * Technische und organisatorische Maßnahmen müssen implementiert werden, um personenbezogene Daten zu schützen (z.B. SSL-Verschlüsselung, sichere Server).
* Meldung von Datenpannen
  * Datenschutzverletzungen müssen binnen 72 Stunden der Aufsichtsbehörde gemeldet werden.
* Cookies und Tracking
  * Nur notwendige Cookies dürfen ohne Zustimmung gesetzt werden.
  * Tracking- oder Marketing-Cookies erfordern aktive Einwilligung des Nutzers.
* Vertrag zur Auftragsverarbeitung (AV-Vertrag)
  * Bei Nutzung externer Dienste, die Daten verarbeiten (z.B. Hosting, Newsletter, Analyse-Tools), muss ein Vertrag zur Auftragsverarbeitung abgeschlossen werden.

### 2. Liste notwendiger Punkte für die DSGVO-Compliance

* Datenschutzerklärung auf der Homepage verfügbar und aktuell
* Impressum vollständig und korrekt
* SSL-Zertifikat / HTTPS für sichere Datenübertragung
* Cookie-Banner mit Einwilligung für nicht notwendige Cookies
* Kontaktformulare mit Hinweis auf Datenschutz und Einwilligung
* Newsletter-Anmeldung mit Double-Opt-In-Verfahren
* Tracking-Tools (z.B. Google Analytics) DSGVO-konform einbinden
* Vertrag zur Auftragsverarbeitung mit externen Dienstleistern
* Möglichkeit für Nutzer, ihre Daten anzufordern, zu korrigieren oder löschen zu lassen
* Maßnahmen zur Datensicherheit implementieren (Backups, Zugriffskontrollen)
* Prozesse zur Meldung von Datenschutzverletzungen etabliert

### 3. Öffentliche Dienste für DSGVO- und Homepage-Checks

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
  * Ergebnis: Ladezeit 85/100, Verbesserungsvorschläge z.B. Bildkomprimierung und Browser-Caching
* **Datendiebstahl / Content Check**: TinEye für Bilder auf edu-example.com
  * Ergebnis: Keine unautorisierten Kopien gefunden

### Zusammenfassung der Lernergebnisse
* DSGVO verlangt Transparenz, Einwilligung, Datensicherheit und Rechte der Nutzer.
* Wichtige Maßnahmen auf der Homepage: Datenschutzerklärung, Cookie-Banner, SSL, sichere Formulare und Auftragsverarbeitungsverträge.
* Öffentliche Tools helfen beim Prüfen von DSGVO-Konformität, SEO und Content-Missbrauch.
* Regelmäßige Kontrolle und Updates der Website sind notwendig, um dauerhaft DSGVO-konform zu bleiben.

## DSGVO-Checkliste für die Homepage

### Allgemein
* Datenschutzerklärung vorhanden, aktuell und gut zugänglich
* Impressum vollständig und korrekt
* SSL-Zertifikat / HTTPS aktiv

### Cookies und Tracking
* Cookie-Banner vorhanden
* Nur notwendige Cookies ohne Einwilligung aktiv
* Marketing- und Tracking-Cookies nur nach aktiver Zustimmung
* Zustimmung dokumentiert und nachweisbar

### Formulare und Datenverarbeitung
* Kontaktformulare mit Hinweis auf Datenschutz
* Newsletter-Anmeldung mit Double-Opt-In-Verfahren
* Verarbeitung personenbezogener Daten nur mit Rechtsgrundlage
* Möglichkeit für Nutzer, Daten anzufordern, zu korrigieren oder löschen zu lassen

### Auftragsverarbeitung
* Verträge zur Auftragsverarbeitung mit externen Dienstleistern (Hosting, Newsletter, Analyse-Tools) abgeschlossen

### Datensicherheit
* Technische Maßnahmen implementiert (Backups, Zugriffskontrollen, Verschlüsselung)
* Prozesse für Notfall und Datenwiederherstellung definiert
* Prozesse für Meldung von Datenschutzverletzungen etabliert

### Überwachung und Kontrolle
* Regelmäßige Überprüfung der DSGVO-Konformität
* Nutzung öffentlicher Tools zum Prüfen von Cookie-Konformität, SEO und Datendiebstahl (z.B. Cookiebot, PageSpeed Insights, TinEye)
* Dokumentation aller Prüfergebnisse und Änderungen
