# Modul 231: Datenschutz & Datensicherheit

## 1. Kernbegriffe: Der fundamentale Unterschied

| Begriff                        | Fokus                      | Ziel                                                                 |
| ------------------------------ | -------------------------- | -------------------------------------------------------------------- |
| **Datenschutz** (Privacy)      | **Personenbezogene Daten** | Schutz der Privatsphäre, rechtmässige Verarbeitung (Wer darf was?).  |
| **Datensicherheit** (Security) | **Alle Daten**             | Technischer Schutz vor Verlust, Manipulation und unbefugtem Zugriff. |

### Schutzbedarfsanalyse (Kategorien nach nDSG)

| Kategorie                   | Beispiele                                                                   | Schutzmassnahmen                          |
| --------------------------- | --------------------------------------------------------------------------- | ----------------------------------------- |
| **Normal**                  | Name, Adresse, Geburtsdatum.                                                | Standard (TLS, PW).                       |
| **Besonders schützenswert** | Religiöse/politische Ansichten, Gesundheit, Biometrie, Intimsphäre, Ethnie. | Erhöht (E2EE, strikte Zugriffskontrolle). |

**Schutzziele der Datensicherheit (CIA-Trias):**

- **C**onfidentiality (Vertraulichkeit): Nur Berechtigte lesen.
- **I**ntegrity (Integrität): Daten sind unverändert und korrekt.
- **A**vailability (Verfügbarkeit): Systeme laufen, wenn sie gebraucht werden.

## 2. Rechtliche Rahmenbedingungen & Rechtsräume

- **Schweiz (CH):** Revisions-DSG (Datenschutzgesetz). Unterscheidet "Personendaten" und "besonders schützenswerte Personendaten".
- **EU:** DSGVO (GDPR). Gilt durch das **Marktortprinzip** auch für Schweizer Firmen, die Dienste in der EU anbieten.
- **USA:** **CLOUD Act** erlaubt US-Behörden Zugriff auf Daten von US-Firmen (auch wenn Server im Ausland stehen).
- **Transatlantisch:** **Data Privacy Framework (DPF)** regelt den Datentransfer CH/EU -> USA.

| Kriterium         | Schweiz (CH)                                                        | Europäische Union (EU)                                              | Vereinigte Staaten (USA)                                        |
| ----------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | --------------------------------------------------------------- |
| **Hauptgesetz**   | **DSG** (revidiertes Datenschutzgesetz)                             | **DSGVO** (Datenschutz-Grundverordnung)                             | **CLOUD Act** (regelt Behördenzugriff)                          |
| **Fokus**         | Schutz der Persönlichkeitsrechte natürlicher Personen in der CH.    | Schutz personenbezogener Daten von EU-Bürgern.                      | Zugriffsberechtigung für US-Behörden auf US-Firmendaten.        |
| **Besonderheit**  | Modernisiertes Gesetz, aber teilweise weniger streng als EU-Niveau. | **Marktortprinzip:** Gilt für alle, die Dienste in der EU anbieten. | Datenzugriff auch möglich, wenn Speicherung im Ausland erfolgt. |
| **Datentransfer** | Geregelt durch das **Swiss-US Data Privacy Framework**.             | Geregelt durch das **EU-US Data Privacy Framework**.                | Schafft Basis für rechtskonformen Transfer aus CH/EU.           |

## 3. Identitätsmanagement (Die 3 "A")

| Phase  | Begriff               | Aktion               | Beispiel                       |
| ------ | --------------------- | -------------------- | ------------------------------ |
| **1.** | **Authentisierung**   | Identität behaupten. | Eingabe Benutzername.          |
| **2.** | **Authentifizierung** | Identität beweisen.  | PW, Fingerabdruck, 2FA.        |
| **3.** | **Autorisierung**     | Rechte erhalten.     | Zugriff auf Ordner "Finanzen". |

**Biometrie-Hacks:** Iris- und Venen-Hacks zeigen, dass biometrische Daten (oft aus Fotos rekonstruierbar) alleine nicht ausreichen. **Multi-Faktor-Authentifizierung (MFA)** ist Pflicht für hohe Sicherheit.

## 4. Datenspeicherung & Management

### Redundanz vs. Backup vs. Archiv

- **Redundanz:** Daten mehrfach vorhanden (RAID). Ziel: **Ausfallsicherheit**. _Schützt NICHT vor Löschen/Viren!_
- **Backup:** Kopie zu einem Zeitpunkt. Ziel: **Wiederherstellung**. Muss logisch getrennt (offline) sein.
- **Archivierung:** Langfristige, unveränderbare Aufbewahrung (meist 10 Jahre gesetzliche Pflicht).

### On-Premise vs. Cloud

- **On-Premise:** Volle Kontrolle, hohe Initialkosten, Hardware-Wartung selbst nötig.
- **Cloud:** Schnell skalierbar, Pay-per-use, Abhängigkeit vom Anbieter (Lock-in), DSGVO-Thematik bei US-Anbietern.

| Methode              | Fokus              | Besonderheit                                                |
| -------------------- | ------------------ | ----------------------------------------------------------- |
| **Redundanz (RAID)** | Verfügbarkeit.     | **KEIN Backup!** Spiegelung schützt nur vor Hardwaredefekt. |
| **Backup (3-2-1)**   | Wiederherstellung. | 3 Kopien, 2 Medien, 1 Offsite (Offline!).                   |
| **Archivierung**     | Rechtssicherheit.  | 10 Jahre unveränderbar aufbewahren (z.B. Rechnungen).       |

> **Das Löschproblem:** Das "Recht auf Vergessen" ist technisch schwer umsetzbar, da Daten in Backups und Archiven über Jahre verteilt sind. Ein Löschkonzept muss definieren, wann Daten aus allen Systemen (auch Tapes) entfernt werden.

## 5. Web-Compliance & Website-Pflichten

Jede professionelle Website benötigt:

1. **Impressum:** Wer ist verantwortlich? (Name, Adresse, E-Mail).
2. **Datenschutzerklärung:** Welche Daten werden warum wie lange gespeichert?
3. **AGB:** Rechtliche Basis für Verträge (besonders bei Webshops).
4. **Cookie-Banner:** Aktive Einwilligung (**Opt-in**) für nicht-notwendige Cookies (seit DSGVO 2018).

### 1. Pflichtinhalte eines Impressums

Ein Impressum ist gemäss Schweizer Recht und für EU-Besucher (DSGVO-konform) gesetzlich vorgeschrieben. Folgende Punkte müssen enthalten sein:

- **Name und Rechtsform** des Betreibers (z.B. GmbH oder Einzelperson).
- **Vollständige Adresse** des Unternehmens oder Betreibers.
- **Kontaktinformationen**, insbesondere eine E-Mail-Adresse und eine Telefonnummer.
- **Handelsregister-Nummer**, sofern das Unternehmen eingetragen ist.
- **Verantwortliche Person** für den redaktionellen Inhalt.
- **Umsatzsteuer-Identifikationsnummer (UID)**, falls vorhanden.

### 2. Pflichtinhalte einer Datenschutzerklärung

Die Datenschutzerklärung dient der Transparenz und muss leicht zugänglich sowie aktuell sein. Sie muss folgende Informationen enthalten:

- **Art der gesammelten Daten:** Welche Daten (z.B. via Cookies oder Formulare) erhoben werden.
- **Zweck der Datensammlung:** Warum die Daten benötigt werden.
- **Rechtsgrundlage:** Auf welcher Basis die Verarbeitung erfolgt (z.B. aktive Einwilligung).
- **Weitergabe an Dritte:** Information über die Nutzung von Drittanbietern wie Google Fonts oder YouTube.
- **Speicherdauer:** Wie lange die personenbezogenen Daten aufbewahrt werden.
- **Rechte der Nutzer:** Auskunft über das Recht auf Löschung, Berichtigung, Auskunft und Widerruf.
- **Kontakt:** Angabe einer Kontaktstelle für spezifische Datenschutzanfragen.

## 6. Verschlüsselung & Technischer Schutz

- **Transport (TLS/SSL):** "HTTPS". Schützt den Weg zwischen Browser und Server. Der Provider kann oft mitlesen.
- **Ende-zu-Ende (E2EE):** Nur Sender und Empfänger haben den Schlüssel (z.B. Threema, Signal).
- **At Rest:** Verschlüsselung der Festplatte (BitLocker, FileVault) schützt bei Diebstahl des Geräts.

## 7. Gefahren & Prävention

| Gefahr         | Methode / Fokus                           | Schutz                               |
| -------------- | ----------------------------------------- | ------------------------------------ |
| **Phishing**   | Betrug via Mail/SMS (Social Engineering). | Skepsis, URL-Check, MFA.             |
| **Ransomware** | Verschlüsselung & Erpressung.             | Offline-Backup, Segmentierung.       |
| **OSINT**      | Open Source Intelligence (Datensammeln).  | Datensparsamkeit (Social Media).     |
| **Zero-Day**   | Unbekannte Sicherheitslücken.             | Schnelle Updates (Patch-Management). |

## 8. Case Studies: Was wir daraus lernen

- **Playstation/Equifax:** Fehlendes Patch-Management & unverschlüsselte DBs führen zu Millionen-Diebstählen.
- **Vastaamo:** Psychotherapie-Patienten erpresst. **Lehre:** Besondere Daten (Gesundheit) brauchen maximale Sicherheit (E2EE/Verschlüsselung At Rest).
- **WhatsApp/Meta:** Auch wenn Inhalte verschlüsselt sind, erlauben **Metadaten** (wer telefoniert wann mit wem?) detailliertes Profiling.

## 9. CMS & Software-Lizenzen

| Typ                | Beispiel         | Quellcode   | Bedingungen                                  |
| ------------------ | ---------------- | ----------- | -------------------------------------------- |
| **Proprietär**     | MS Office        | Geschlossen | Kostenpflichtig, keine Änderung erlaubt.     |
| **FOSS (GPL)**     | Linux, WordPress | Offen       | "Copyleft": Änderungen müssen offen bleiben. |
| **FOSS (MIT)**     | JavaScript Libs  | Offen       | Sehr frei, fast alles erlaubt.               |
| **Creative Comm.** | CC-BY-SA         | N/A         | Namensnennung, gleiche Bedingungen.          |
