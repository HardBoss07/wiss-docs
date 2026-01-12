# Datenschutz & Datensicherheit

## 1. Fundamente & Konzepte

### Der grosse Unterschied

| Begriff                        | Fokus               | Zielsetzung                                                    | Typische Artefakte                                               |
| ------------------------------ | ------------------- | -------------------------------------------------------------- | ---------------------------------------------------------------- |
| **Datenschutz** (Privacy)      | **Personen**        | Schutz der Privatsphäre & Grundrechte. "Wer darf was wissen?"  | Datenschutzerklärung, Verzeichnis der Bearbeitungen, AV-Vertrag. |
| **Datensicherheit** (Security) | **Daten & Systeme** | Schutz vor techn. Versagen & Angriffen. "Wie schützen wir es?" | Firewalls, Backups, Verschlüsselung, ISO 27001.                  |

### Die CIA-Schutzziele (Trias) + 1

| Ziel                                  | Beschreibung                      | Bedrohung                         | Gegenmassnahme (TOMs)                                                 |
| ------------------------------------- | --------------------------------- | --------------------------------- | --------------------------------------------------------------------- |
| **C**onfidentiality (Vertraulichkeit) | Nur Berechtigte haben Zugriff.    | Datenleck, Sniffing, Diebstahl.   | Verschlüsselung (Transit/At Rest), Access Control (MFA), Sichtschutz. |
| **I**ntegrity (Integrität)            | Daten sind korrekt & unverändert. | Manipulation, Übertragungsfehler. | Hash-Werte, Digitale Signatur, WORM-Speicher, Input Validation.       |
| **A**vailability (Verfügbarkeit)      | Systeme laufen bei Bedarf.        | DDoS, Ransomware, Stromausfall.   | Redundanz (RAID), USV, Backup (Offline), Business Continuity Plan.    |
| _(Auditability)_                      | Nachvollziehbarkeit.              | "Wer hat was getan?"              | Logging, SIEM, Audit-Trails (darf nicht gelöscht werden!).            |

Schutzbedarfskategorien (Klassifizierung)

1. **Öffentlich:** Kein Schaden (z.B. Marketing-Broschüre).
2. **Intern:** Geringer Schaden, Betriebsgeheimnis (z.B. Telefonliste, Menüplan).
3. **Vertraulich:** Hoher Schaden (finanziell/Reputation), Personendaten (z.B. Löhne, Kundenliste).
4. **Geheim / Besonders Schützenswert:** Existenzbedrohend oder gesetzlich streng geschützt (z.B. Gesundheitsdaten, Religion, Biometrie, Quellcode).

## 2. Rechtliche Rahmenbedingungen & Meldepflichten (CH-Fokus)

**Achtung:** Es gibt seit 2025 zwei parallele Meldewelten in der Schweiz!

| Kriterium     | **Datenschutz (EDÖB)**                                                  | **Kritische Infrastruktur (BACS/NCSC)**            | **EU (DSGVO)**                  |
| ------------- | ----------------------------------------------------------------------- | -------------------------------------------------- | ------------------------------- |
| **Gesetz**    | revDSG (Art. 24).                                                       | Meldepflicht krit. Infra (ab 01.04.25).            | DSGVO (GDPR).                   |
| **Auslöser**  | Verletzung der Datensicherheit mit **hohem Risiko** für Persönlichkeit. | Cyberangriff auf **Funktionsfähigkeit** (Betrieb). | Risiko für Rechte & Freiheiten. |
| **Frist**     | "So rasch als möglich".                                                 | **Innerhalb 24 Stunden**.                          | 72 Stunden.                     |
| **Empfänger** | EDÖB (+ Betroffene informieren, falls zu deren Schutz nötig).           | BACS (Bundesamt für Cybersicherheit).              | Aufsichtsbehörde.               |
| **Sanktion**  | Bussen gegen **Privatpersonen** (bis 250k CHF).                         | Sanktionen bei Nichtmeldung (ab Okt 2025).         | Bis 4% Jahresumsatz (Firma).    |

**Rollenverständnis:**

- **Verantwortlicher (Controller):** Bestimmt Zweck & Mittel ("Der Chef/Auftraggeber"). Haftet primär.
- **Auftragsbearbeiter (Processor):** Verarbeitet nur nach Weisung (z.B. Cloud-Hoster, Lohnbüro). Braucht zwingend einen **AV-Vertrag**!

**International:**

- **Marktortprinzip:** DSGVO gilt auch für CH-Firmen, wenn sie Kunden in der EU bedienen/beobachten.
- **CLOUD Act (USA):** US-Behörden können auf Daten von US-Firmen zugreifen, egal wo der Server steht (auch in CH/EU!). Risiko bei AWS/Azure/Google.

## 3. Identität & Zugriff (IAM)

### Der Prozess der 3 "A"

1. **Authentisierung:** Identität behaupten ("Ich bin User X").
2. **Authentifizierung:** Beweis erbringen (Passwort, Token, Bio).
3. **Autorisierung:** Rechte vergeben (Darf Datei Y lesen).

### Sicherheitskonzepte

- **MFA (Multi-Faktor):** Wissen (PW) + Besitz (Token/Handy) + Inhärenz (Bio). **Pflicht** für Admins & Remote-Access!
- **PAM (Privileged Access Management):** Admins sind "Joker". Schutz durch:
- Separate Admin-Accounts (nicht zum Surfen nutzen!).
- Just-in-Time Zugriff (Rechte nur für 1h).
- 4-Augen-Prinzip bei kritischen Aktionen.

- **RBAC vs. ABAC:**
- **RBAC (Role Based):** Rechte hängen an der Rolle (z.B. "Rolle HR"). Standard für KMU.
- **ABAC (Attribute Based):** Rechte hängen an Kontext (z.B. "Zugriff nur von 8-17 Uhr aus CH-IP").

## 4. Datenspeicherung & Backup-Strategie

**Wichtigste Unterscheidung:** Redundanz (RAID/Cluster) ist **kein** Backup! Redundanz schützt vor Hardware-Ausfall (Verfügbarkeit), Backup schützt vor Datenverlust (Löschen/Viren).

Die 3-2-1 Backup Regel (Goldstandard)

- **3** Kopien der Daten (1x Original + 2x Backup).
- **2** verschiedene Medientypen (z.B. NAS + Cloud/Tape).
- **1** Kopie **Offline / Immutable** (unveränderbar). Lebensversicherung gegen Ransomware!

### Metriken & Konzepte

- **RPO (Recovery Point Objective):** Wie viel Datenverlust ist okay? (z.B. "Maximal 1 Stunde Arbeit verlieren").
- **RTO (Recovery Time Objective):** Wie lange darf der Ausfall dauern? (z.B. "System muss nach 4h wieder laufen").
- **Archivierung:** Langzeitaufbewahrung (10 Jahre, OR/GeBüV). Daten müssen unveränderbar sein.
- _Problem:_ Löschpflicht vs. Aufbewahrungspflicht. Lösung: Archivzugriff sperren, erst nach Frist löschen.

## 5. Web-Security, CMS & Cookies

Web-Compliance Checkliste

1. **Impressum:** Zwingend in CH (UWG). Inhalt: Name, Adresse, Kontakt (Mail/Tel), Rechtsform, UID.
2. **Datenschutzerklärung:** Transparent, aktuell. Was wird gesammelt? Zweck? Wer empfängt Daten (Tools)?
3. **AGB:** Vertragsbedingungen, Gerichtsstand, Haftungsausschluss.
4. **Cookie-Banner:** Muss "echtes" Opt-in sein (keine vorangekreuzten Boxen). "Ablehnen" muss so einfach sein wie "Annehmen" (Dark Patterns verboten).

### Technische Web-Sicherheit

- **Trust Boundaries:** Wo verlassen Daten meinen Einflussbereich? (Browser Server Datenbank Payment Provider). Hier validieren!

- **Cookie-Attribute:**

- `Secure`: Cookie wird nur über HTTPS übertragen.
- `HttpOnly`: JavaScript kann Cookie nicht lesen (Schutz vor XSS).
- `SameSite`: Verhindert CSRF-Attacken (Cross-Site Request Forgery).

- **CMS-Wahl:**
- _Monolith (WordPress):_ Alles in einem. Gefahr: Plugin-Chaos, Sicherheitslücken. Patching ist Chef-Sache.
- _SaaS (Shopify/Wix):_ Weniger Kontrolle, aber Provider macht Security. Gefahr: Vendor Lock-in.

## 6. Schweizer Fallbeispiele (Lessons Learned)

Diese Fälle sind prüfungsrelevant für Transferaufgaben!

| Fall                 | Was passierte?                                                       | Key Takeaway / Lektion                                                                                                      |
| -------------------- | -------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| **Xplain (2023)**    | Ransomware bei IT-Dienstleister des Bundes. Daten im Darknet.        | **Supply Chain Risk.** Auch wenn du sicher bist, ist dein Dienstleister es vielleicht nicht. Datenminimierung bei Partnern! |
| **Swissport (2022)** | Ransomware legte Bodenabfertigung lahm.                              | **Verfügbarkeit = Business.** IT-Security ist keine IT-Frage, sondern eine Business-Frage.                                  |
| **Radix (2025)**     | Ransomware + Exfiltration bei Hoster.                                | **Backup-Resilienz.** Backups müssen offline/immutable sein, sonst werden sie mitverschlüsselt.                             |
| **Chain IQ / UBS**   | Hack beim Dienstleister, keine Kundendaten, aber Business-Daten weg. | **Third-Party Risk.** Auch Mitarbeiterdaten & interne Pläne sind sensibel (Schutzbedarf!).                                  |
| **Vastaamo (FIN)**   | Erpressung von Psychotherapie-Patienten.                             | **Besonders schützenswerte Daten.** Brauchen maximale Sicherheit (Verschlüsselung At Rest + strikter Zugriff).              |

## 7. Frameworks & Standards (Governance)

NIST Cybersecurity Framework (CSF 2.0)

Das Standard-Modell für Security-Management. Besteht aus 6 Funktionen:

1. **GOVERN:** Governance, Strategie, Risikomanagement (Neu in 2.0!).
2. **IDENTIFY:** Was haben wir? (Asset Management, Inventar).
3. **PROTECT:** Schutzmassnahmen (MFA, Patching, Schulung).
4. **DETECT:** Erkennung (Logging, SIEM, Anomalien).
5. **RESPOND:** Reaktion (Incident Response Plan, Kommunikation).
6. **RECOVER:** Wiederherstellung (Backups einspielen, Lessons Learned).

CIS Controls v8

Priorisierte Liste ("Was zuerst tun?"). Ideal für KMU.

- Top 3: Inventar Hardware/Software, Datensicherung, Sichere Konfiguration.

## 8. Incident Response ("Oh Mist"-Plan)

Wenn es knallt, gilt dieser Ablauf (Reihenfolge ist entscheidend!):

1. **Triage:** Ruhe bewahren. Was ist passiert? Welches Ausmass?
2. **Containment (Eindämmen):** Netzwerkkabel ziehen, Accounts sperren, Firewall-Regeln. (Noch **nicht** löschen/neu aufsetzen!).
3. **Forensik & Beweise:** Logs sichern, RAM-Image (für Profis).
4. **Meldung & Kommunikation:**

- Muss ich BACS (24h) oder EDÖB melden?
- Interne/Externe Kommunikation (PR, Kunden, Legal).

5. **Recovery (Wiederherstellung):** Systeme säubern, Patches einspielen, Restore aus **sauberen** Backups.
6. **Lessons Learned:** Was lief falsch? Was verbessern wir?

## 9. Verschlüsselung & Bedrohungen

### Verschlüsselungsarten

- **In Transit:** Daten unterwegs (z.B. HTTPS/TLS). Schützt vor Abhören im WLAN/Internet.
- _Problem:_ Provider (Google, ISP) sieht Metadaten.

- **At Rest:** Daten auf der Festplatte (BitLocker, FileVault, DB-Encryption). Schützt bei Diebstahl des Laptops/Servers.
- **End-to-End (E2EE):** Nur Sender & Empfänger haben Schlüssel (Signal, Threema). Provider sieht **keinen** Inhalt.

### Top Bedrohungen & Massnahmen

| Bedrohung       | Erklärung                                 | Beste Gegenmassnahme                                           |
| --------------- | ----------------------------------------- | -------------------------------------------------------------- |
| **Ransomware**  | Verschlüsselung & Erpressung.             | Offline-Backups, Patching, Netzwerk-Segmentierung.             |
| **CEO-Fraud**   | Chef-Imitation per Mail, fordert Zahlung. | **4-Augen-Prinzip** bei Zahlungen, DMARC/SPF, Awareness.       |
| **Phishing**    | Identitätsklau via Fake-Login.            | FIDO2-Hardware-Token, MFA, Mitarbeiterschulung.                |
| **Social Eng.** | Manipulation von Menschen.                | "Healthy Distrust", Prozesse einhalten (keine Ausnahmen!).     |
| **OSINT**       | Infosammeln aus offenen Quellen.          | Datensparsamkeit auf Social Media, Mitarbeiter-Infos schützen. |
