
# ** Zusammenfassung - Informatik LB (max. 4 A4 Seiten)**

# **1. Codierung, Kompression, Verschlüsselung**

## **1.1 Codierung**

**Ziel:** Daten eindeutig darstellen.

| Codierung | Zweck                                | Beispiel                       |
| --------- | ------------------------------------ | ------------------------------ |
| **ASCII** | 7-Bit Zeichensatz                    | "A" = 65                       |
| **UTF-8** | Unicode, variable Länge              | Emojis, internationale Zeichen |
| **Hex**   | Kompakte Darstellung von Binärwerten | 0xFF = 255                     |

**Wichtig:**
Codierung verändert **nicht den Informationsgehalt**, nur die **Darstellung**.

# **2. Binäre Werte & Zahlensysteme**

## **2.1 Werteumfang**

**n Bits -> 2ⁿ mögliche Werte**

| Bits   | Werte  | Beispiel      |
| ------ | ------ | ------------- |
| 8 Bit  | 256    | 0-255         |
| 16 Bit | 65’536 | Unicode Point |
| 32 Bit | ~4 Mrd | IPv4, Farben  |

## **2.2 Zahlensysteme - Umrechnungen**

### **Dezimal -> Binär**

* Durch 2 teilen, Reste gesammelt rückwärts.

### **Binär -> Dezimal**

* Stellenwerte (1, 2, 4, 8 …) multiplizieren & addieren.

### **Hex -> Bin**

* Jede Hex-Ziffer = **4 Bits**
  z.B. A = 1010

### **Bin -> Hex**

* Bits in **4er-Gruppen** einteilen.


# **3. Additionen (Binär, Hex, Oktal)**

## **3.1 Binär**

| Operation | Ergebnis         |
| --------- | ---------------- |
| 0 + 0     | 0                |
| 1 + 0     | 1                |
| 1 + 1     | **10** (carry 1) |

Carry ist prüfungsrelevant.


## **3.2 Hexadezimal**

* Alphabet: **A-F = 10-15**
* Addition funktioniert wie Dezimal, aber **Basis 16**.


## **3.3 Oktal**

* Basis 8 (Ziffern: **0-7**)
* Selten, aber Grundprinzip identisch.


# **4. Logische Operatoren**

| Operator | Bedeutung             | Ergebnis    |
| -------- | --------------------- | ----------- |
| **AND**  | beide 1 -> 1           | 1 AND 1 = 1 |
| **OR**   | mind. 1 -> 1           | 0 OR 1 = 1  |
| **NOT**  | invertiert            | NOT 1 = 0   |
| **XOR**  | genau ein Eingang = 1 | 1 XOR 1 = 0 |

**XOR ist in Kryptografie wichtig**, z.B. One-Time-Pad.


# **5. Kompression**

Fokus nur: **Huffman** und **RLE**


## **5.1 RLE (Run Length Encoding)**

**Idee:** Wiederholungen zusammenfassen.

| Original   | RLE      |
| ---------- | -------- |
| AAAAAABBCC | A6 B2 C2 |

**Gut für:**

* Bilder mit grossen Farbflächen
* Texte mit vielen Wiederholungen

**Schlecht für:**

* zufällige Daten (kann sogar grösser werden)


## **5.2 Huffman-Kodierung**

**Idee:** Häufige Zeichen -> kurze Codes
Seltene Zeichen -> lange Codes

### **Ablauf**

1. Zeichen zählen (Häufigkeiten).
2. Baum konstruieren (kleinste Gewichte verbinden).
3. Links = 0, Rechts = 1 codieren.
4. Codetabelle erstellen.
5. Text mit variablen Codes ersetzen.

### **Eigenschaften**

* Präfixfrei (kein Code ist Prefix eines anderen)
* Optimal für zeichenweise Kodierung
* Verlustfrei

**Typische Prüfungsaufgabe:**

* Häufigkeitstabelle -> Baum -> Codes -> komprimierter Text.


# **6. QR-Code**

## **6.1 Vorteile**

* Schnell lesbar
* Bis zu **30% Fehlerkorrektur**
* Hohe Datendichte
* Kamera-basiert


## **6.2 Aufbau**

| Element                         | Funktion                          |
| ------------------------------- | --------------------------------- |
| **Finder Patterns**             | Position & Orientierung           |
| **Timing Pattern**              | Raster prüfen                     |
| **Alignment Pattern**           | Verzerrungen korrigieren          |
| **Datenbereich**                | Binäre Nutzdaten                  |
| **ECC (Error Correction Code)** | Rekonstruktion beschädigter Teile |


## **6.3 Wie QR ausgelesen wird**

1. Bild -> Schwarz/Weiss rasterisieren
2. Finder Patterns lokalisiert
3. Matrix ausgelesen
4. Fehlerkorrektur
5. Binärdaten -> Text/URL/etc.


# **7. Kryptografie - Grundlagen**

## **7.1 Kerckhoffs Prinzip**

**Ein System muss sicher bleiben, selbst wenn alles ausser dem Schlüssel öffentlich bekannt ist.**

Nur der Schlüssel muss geheim bleiben.


## **7.2 Steganografie / Kryptografie / Kryptoanalyse**

| Begriff           | Zweck                                       |
| ----------------- | ------------------------------------------- |
| **Steganografie** | Nachricht **verstecken** (z.B. Bildpixel)   |
| **Kryptografie**  | Nachricht **verschlüsseln**                 |
| **Kryptoanalyse** | Verschlüsselung **angreifen** / analysieren |


# **8. Klassische Chiffren**

## **8.1 Stabchiffre (Skytale) - Transpositionsverfahren**

**Ablauf:**

1. Text zeilenweise in ein Gitter mit fester Breite schreiben
2. Spaltenweise auslesen -> Geheimtext

**Schlüssel:** Anzahl Spalten/Zeilen.


## **8.2 Caesar - einfache Verschiebung**

**C = (P + k) mod 26**
**P = (C − k) mod 26**

k = Verschiebung (0-25)


## **8.3 Vigenère - polyalphabetisch**

| Klartext  | A   | C   | H   | T   |
| --------- | --- | --- | --- | --- |
| Schlüssel | L   | O   | N   | G   |

**C = (P + K) mod 26**

* Mehr Sicherheit als Caesar
* Bruchbar durch Häufigkeitsanalyse + Kasiski-Test


# **9. Moderne Kryptografie**

## **9.1 Symmetrische Verfahren**

| Eigenschaft     | Beschreibung                |
| --------------- | --------------------------- |
| Schlüssel       | **1 gemeinsamer Schlüssel** |
| Geschwindigkeit | Sehr schnell                |
| Problem         | Sicherer Schlüsselaustausch |

Beispiele: **AES, ChaCha20**


## **9.2 Asymmetrische Verfahren**

| Eigenschaft     | Beschreibung                 |
| --------------- | ---------------------------- |
| Schlüssel       | **Public Key + Private Key** |
| Sicherheit      | Sehr sicher                  |
| Geschwindigkeit | Langsamer                    |

Beispiele: **RSA, ECC**


## **9.3 Hybride Systeme**

Realität:
**Asymmetrisch** -> Schlüsselaustausch
**Symmetrisch** -> Datenverkehr

Beispiel: **TLS (HTTPS)**


# **10. E-Mail-Verschlüsselung**

## **10.1 PGP / GPG**

* Jeder Nutzer: **Keypair**
* **Verschlüsseln:** Empfänger-Public-Key
* **Signieren:** eigener Private-Key
* **Open Source**


## **10.2 S/MIME**

* Zertifikatsbasiert (PKI)
* Firmenfreundlich

## **10.3 Transportverschlüsselung**

**TLS zwischen Mailservern**
-> schützt *Transportweg*
-> Inhalt liegt *unverschlüsselt* im Postfach (wenn nicht PGP/S/MIME).


# **11. Dateien verschlüsseln (z.B. GPG4Win)**

## **Ablauf**

1. Public Key des Empfängers importieren
2. Datei auswählen -> "Verschlüsseln"
3. Empfänger kann mit seinem Private-Key entschlüsseln

# Prüfungsinfos
1. aufgabe:
   1. texte in plaintext in caesar verschlüsseln
   2. texte in ceaser in plaintext entschlüsseln
2. aufgabe:
   1. wissen wie mit dem email verschlüsseln
   2. vor- und nachteile von emails
   3. welche technologien sftp, imap, pop3 etc
   4. transportverschlüsselung, tunneling, auf dem server unverschlüsselt
   5. End-2-End-Encryption
3. modulo rechnen
4. kerkhoff prinzip
5. viginiere und stabchiffre verschlüsseln
6. qr code teile wissen
