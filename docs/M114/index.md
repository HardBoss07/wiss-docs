# Modul 114 - Codierungs-, Kompressions- & Verschlüsselungsverfahren einsetzen

## 114-1A - SideQuest:

* Kodierung:
  * Interpretation von binären Daten in spezifische Formate
  * Beispiele: UTF-8, HEX-Farbcodes, ASCII
  * Nützlich, um binäre Daten in ein für Menschen verständliches Format umzuwandeln
  * Ohne Kodierung müssten wir digital direkt mit 0 & 1 arbeiten
* Kompression:
  * Verkleinerung von Daten durch Ersetzen wiederkehrender Muster
  * Beispiele: ZIP, RAR, JPEG
  * Dadurch können selten verwendete Daten weniger Speicherplatz beanspruchen
  * Ohne Kompression wäre das Speichern grosser Datenmengen teurer & umständlicher
* Verschlüsselung:
  * Wandelt lesbare Daten in sogenannten Ciphertext um
  * Beispiele: HTTPS, PGP, AES
  * Mit Verschlüsselung kann sichergestellt werden, dass nur berechtigte Personen Zugriff auf die Daten haben
  * Ohne Verschlüsselung könnte jeder den Internetverkehr mitlesen, Dokumente verändern & die digitale Privatsphäre wäre praktisch nicht existent

## 114-1B SideQuest:

Im Alltag wird hauptsächlich das Dezimalsystem verwendet (0–9).

Das Binärsystem funktioniert nur mit 2 Zuständen (0, 1). Mit einer Aneinanderreihung dieser 2 Zustände kann man praktisch jeden gewünschten Zustand definieren.

Das Hexadezimalsystem funktioniert mit 16 Zuständen (0–9, A–F) & wird in der Informatik genutzt, da es lesbarer ist als Binär. Mit einer einstelligen Hex-Zahl kann eine vierstellige Binärzahl dargestellt werden.

Das Problem, nicht zu wissen, ob '10' eine Dezimal-, Binär- oder Hex-Zahl ist, löst man mit Präfixen:

* 0b = Binär
* 0x = Hex
* 0o = Oktal
* 0t = Tertiär
* kein Präfix = Dezimal

### Zahlensystem mit 3 Werten:

Um ein Zahlensystem mit 3 Werten zu entwickeln, nimmt man 3 verschiedene Zeichen. Ich mache es mir einfach & nehme 0, 1 & 2 mit dem Präfix 0t.

### Zahlensysteme 0–20 (dec, bin, oct, hex, ter)

| dec | bin   | oct | hex | ter |
| --- | ----- | --- | --- | --- |
| 0   | 0     | 0   | 0   | 0   |
| 1   | 1     | 1   | 1   | 1   |
| 2   | 10    | 2   | 2   | 2   |
| 3   | 11    | 3   | 3   | 10  |
| 4   | 100   | 4   | 4   | 11  |
| 5   | 101   | 5   | 5   | 12  |
| 6   | 110   | 6   | 6   | 20  |
| 7   | 111   | 7   | 7   | 21  |
| 8   | 1000  | 10  | 8   | 22  |
| 9   | 1001  | 11  | 9   | 100 |
| 10  | 1010  | 12  | A   | 101 |
| 11  | 1011  | 13  | B   | 102 |
| 12  | 1100  | 14  | C   | 110 |
| 13  | 1101  | 15  | D   | 111 |
| 14  | 1110  | 16  | E   | 112 |
| 15  | 1111  | 17  | F   | 120 |
| 16  | 10000 | 20  | 10  | 121 |
| 17  | 10001 | 21  | 11  | 122 |
| 18  | 10010 | 22  | 12  | 200 |
| 19  | 10011 | 23  | 13  | 201 |
| 20  | 10100 | 24  | 14  | 202 |

## 114-2A SideQuest:

### Normale (positive, ganze) Zahlen

-> **Positionssystem Basis 2 (Binärsystem)**
Jede Stelle ist ein Potenzwert von 2:
z.B. `1011 (bin)` = 8 + 0 + 2 + 1 = 11 (dec)

-> Je mehr Bits, desto grössere Zahlen darstellbar.
Mit 8 Bit: 0 -> 255

### Negative Zahlen

Negative Zahlen werden kodiert, damit man mit denselben Schaltkreisen rechnen kann. Es gibt drei Hauptmethoden:

**1. Einerkomplement**

* Negative Zahl = alle Bits der positiven Zahl invertieren (0 -> 1, 1 -> 0)
* Beispiel: +5 = `00000101` -> -5 = `11111010`
* Nachteil: Es gibt +0 & -0 (2 Darstellungen von 0).

**2. Zweierkomplement (Standard heute)**

* Negative Zahl = Einerkomplement + 1
* Beispiel: +5 = `00000101` -> invertiert `11111010` -> +1 = `11111011` -> -5
* Vorteil: Eindeutige 0, einfachere Addition/Subtraktion
* Bereich bei 8 Bit: -128 … +127

**3. Exzessdarstellung (Offset Binary)**

* Verschiebt alle Zahlen um einen festen Bias
* Beispiel bei 8 Bit: Bias = 128

| Zahl | bin-Wert | bin      |
| ---- | -------- | -------- |
| 0    | 128      | 10000000 |
| -1   | 127      | 01111111 |
| +1   | 129      | 10000001 |

* Wird oft bei Gleitkomma-Exponenten benutzt

#### Beispiele

| Binär | Einerkomplement | Zweierkomplement |
| ----- | --------------- | ---------------- |
| 0000  | +0              | 0                |
| 0001  | +1              | +1               |
| 0010  | +2              | +2               |
| 0011  | +3              | +3               |
| 0100  | +4              | +4               |
| 0101  | +5              | +5               |
| 0110  | +6              | +6               |
| 0111  | +7              | +7               |
| 1000  | -7              | -8               |
| 1001  | -6              | -7               |
| 1010  | -5              | -6               |
| 1011  | -4              | -5               |
| 1100  | -3              | -4               |
| 1101  | -2              | -3               |
| 1110  | -1              | -2               |
| 1111  | -0              | -1               |

### Gleitkommazahlen (Dezimal mit Nachkommastellen)

-> Darstellen von Brüchen (z.B. 3.14, -0.5 usw.)

Verwendet wird meist das IEEE 754-Format (z.B. 32 Bit = Float):

| Teil   | Bedeutung                         | Beispiel         |
| ------ | --------------------------------- | ---------------- |
| 1 Bit  | Vorzeichen (0 = +, 1 = -)         | 0                |
| 8 Bit  | Exponent (mit Exzess +127)        | 10000001         |
| 23 Bit | Mantisse (Nachkommabits der Zahl) | 1001100110011... |

-> Wert = (-1)^Vorzeichen × 1,Mantisse × 2^(Exponent-127)

Beispiel:
`01000000101000000000000000000000` = 5.0

### Kurzüberblick

| Typ                        | Beispiel                     | Beschreibung                            |
| -------------------------- | ---------------------------- | --------------------------------------- |
| Binär (positiv)            | `1010` -> 10 (dec)           | Normale Zahl                            |
| Zweierkomplement (negativ) | `11111011` -> -5             | Standard für ganze Zahlen               |
| Exzess (Offset)            | `10000000` -> 0              | Für Exponenten oder spezielle Kodierung |
| Gleitkomma                 | `0100000010100000...` -> 5.0 | Für Nachkommastellen                    |

## 114-3A SideQuest

Was ist ein logischer Operator?
-> Eine Funktion, die einen Wahrheitswert zurückgibt.
-> In der booleschen (zweiwertigen) Logik: Ergebnis ist wahr oder falsch.
-> In einer mehrwertigen Logik: auch andere Werte möglich.

Anzahl der Operanden:
Ein logischer Operator kann eine oder mehrere Eingaben (Operanden) haben.

Beispiel:

* AND (&-Verknüpfung): ergibt *wahr*, wenn alle Operanden wahr sind.

Wichtige Operatoren:

* AND
* OR
* NOT

Mit diesen Grundoperatoren kann man komplexere Gatter wie XOR bauen.

Praxisbezug:

* In Programmiersprachen: meist Operatoren mit zwei Operanden (ausser NOT).
* In digitalen Schaltungen: AND/OR oft mit mehreren Eingängen, umgesetzt durch Logikgatter, Schalter oder Relais.

## 114-3B

Die Hamming distanz beschreibt den unterschied von 2 gleich langen binary strings. das heisst dass man einfach zählt wie viele bits unterschieden sind

**Beispiele:**

| String 1 | String 2 | Hamming Distanz |
| -------- | -------- | --------------- |
| 11100101 | 11100101 | 0               |
| 00101111 | 00100111 | 1               |
| 10011011 | 10110011 | 2               |
| 10101010 | 10000000 | 3               |

### Aufgabe

#### 1.
1110010101
1010011101
Hamming Distanz: Positionen 1, 3, 7, 8 ->  4

#### 2.
110011001
110011011
Hamming Distanz: Position 8 ->  1

#### 3.
1101010101
1010011101
Hamming Distanz: 1, 2, 4, 6, 7 ->  5

#### 4.
100000001
100000001
Hamming Distanz: 0

#### 5.
HAUS
BAUM
Hamming Distanz: 1, 4 ->  2

#### 6.
1. 1010010101
2. 1110011001
3. 1010011101
* 1.+2. -> Unterschiede: 2, 6, 7, 8, 9 -> 5
* 1.+3. -> Unterschiede: 7, 8 -> 2
* 2.+3. -> Unterschiede: 2, 6, 9 -> 3

#### 7.
1. 1110010101
2. 1110011001
3. 1010011101
* 1.+2. -> Unterschiede: 7, 8 -> 2
* 1.+3. -> Unterschiede: 2, 4, 7, 8 -> 4
* 2.+3. -> Unterschiede: 2, 4, 6, 9 -> 4

#### 8.
1. 1110010101
2. 1101011001
3. 1110011101
* 1.+2. -> Unterschiede: 2, 4, 5, 7, 8 -> 5
* 1.+3. -> Unterschiede: 7, 8 -> 2
* 2.+3. -> Unterschiede: 2, 4, 5, 9 -> 4

## 114-4A

## Huffman Codierung

Huffman-Codes komprimieren Daten, indem **häufige Zeichen kurze Codes** & **seltene lange Codes** bekommen.
Wir erstellen den Code **komplett per Hand**.

### **1. Häufigkeiten zählen**

Wort:
`BANANENMANN`

Wir zählen jeden Buchstaben:
| Zeichen | Anzahl |
| ------- | ------ |
| B       | 1      |
| A       | 3      |
| N       | 5      |
| E       | 1      |
| M       | 1      |

### **2. Startknoten erzeugen**
```
B:1   E:1   M:1   A:3   N:5
```

### **3. Immer die zwei kleinsten Knoten kombinieren**

#### > Schritt 1
B(1) + E(1) -> BE(2)

Jetzt haben wir:
```
M:1   BE:2   A:3   N:5
```

#### > Schritt 2
M(1) bleibt kleinster Einzelknoten -> M(1) + BE(2) -> MBE(3)

Jetzt:
```
A:3   MBE:3   N:5
```

#### > Schritt 3
A(3) + MBE(3) -> AMBE(6)

Jetzt:
```
N:5   AMBE:6
```

#### > Schritt 4
N(5) + AMBE(6) -> Gesamt(11)

Fertiger Baum:
```
           (11)
          /    \
       N(5)    AMBE(6)
              /       \
           A(3)      MBE(3)
                    /     \
                  M(1)   BE(2)
                         /    \
                       B(1)  E(1)
```

### **4. Links = 0, Rechts = 1**
Jetzt vergeben wir Bits:
```
            (root)
           /      \
        0           1
       N           AMBE
                  /     \
                 0       1
                A       MBE
                       /     \
                      0       1
                      M      BE
                            /    \
                           0      1
                           B      E
```

### **5. Codes ablesen**
| Zeichen | Code     |
| ------- | -------- |
| N       | **0**    |
| A       | **10**   |
| M       | **110**  |
| B       | **1110** |
| E       | **1111** |

Kurz: Häufigstes Zeichen N bekommt den kürzesten Code.

### **6. "BANANENMANN" kodieren**

Text:
`B A N A N E N M A N N`

Ersetze durch Codes:
* B -> 1110
* A -> 10
* N -> 0
* A -> 10
* N -> 0
* E -> 1111
* N -> 0
* M -> 110
* A -> 10
* N -> 0
* N -> 0

Jetzt alles zusammen:
`1110 10 0 10 0 1111 0 110 10 0 0`

Ohne Leerzeichen:
`1110100100111101101000`
Das ist der komplette Huffman-kodierte Text für **"BANANENMANN"**.
Eine Kompresison von 75% wurde ermöglicht

## Zusammenfassung: Was ist Kryptografie?

Der Begriff Kryptografie stammt aus dem Griechischen, wobei "Kryptos" (geheim/verborgen) & "Graphein" (schreiben) die Grundlage bilden.

### 1. Die Disziplinen der Kryptologie

Die verwandte Wissenschaft Kryptologie vereint drei Hauptbereiche:
* Kryptografie: Die Wissenschaft der Geheimschrift.
* Kryptoanalyse: Die Kunst, Geheimschrift (unbefugt) zu entziffern & den Code zu brechen.
* Kryptologie: Die Wissenschaft, die Kryptografie & Kryptoanalyse miteinander vereint.

### 2. Ziel & Prinzip der Kryptografie

* Ziel: Nachrichten in eine "Geheimschrift" (Chiffretext) zu übersetzen, damit sie sicher über möglicherweise unsichere Wege zum vorgesehenen Empfänger geschickt werden können.
* Prinzip: Nur der vorbestimmte Empfänger soll in der Lage sein, den Inhalt der Nachricht wieder lesbar zu machen.
* Zeichen: Für die Kryptografie ist die Verwendung von geheimen Zeichen nicht notwendig. Die Zeichen des Klartextes sind dieselben wie die des Chiffretextes.
    * Historisch wurden die Zeichen des Alphabetes verwendet.
    * Modern werden meist Gruppen binärer Zustände (Bytes oder Blöcke) eingesetzt.

### 3. Symmetrische Verschlüsselungsverfahren (Beispiele)

Symmetrische Verfahren nutzen denselben Schlüssel für das Ver- & Entschlüsseln. Die genannten Beispiele sind:

* AES (Advanced Encryption Standard) oder Rijndael
* DES (Data Encryption Standard) oder Lucifer
* 3DES - Triple-DES
* IDEA (International Data Encryption Algorithm)
* Blowfish: 1993 von Bruce Schneier entwickeltes Blockverschlüsselungsverfahren, unpatentiert
* QUISCI (Quick Stream Cipher)
* Twofish: Blockverschlüsselungsverfahren, vom Counterpane Team; wird u. a. in Microsoft Windows eingesetzt.
* CAST-128, CAST-256
* RC2, RC4, RC5, RC6 ("Rivest Cipher")
* Serpent
* One-Time-Pad

## Verschlüsselungsmethoden

### 1. Symmetrische Verschlüsselung
Hierbei verwenden Sender & Empfänger denselben geheimen Schlüssel.
* Schlüsselanzahl: Ein Schlüssel (KEY) für alles.
* Funktionsweise:
    * Der Sender nutzt KEY zum Verschlüsseln.
    * Der Empfänger nutzt denselben KEY zum Entschlüsseln.
* Hauptvorteil: Sie ist sehr schnell & effizient (gut für grosse Datenmengen).
* Hauptnachteil: Der geheime Schlüssel KEY muss auf einem sicheren Weg zwischen Sender & Empfänger ausgetauscht werden.
* Bekannte Beispiele: AES (Advanced Encryption Standard).

### 2. Asymmetrische Verschlüsselung
Hierbei verwendet jeder Teilnehmer ein Paar aus einem öffentlichen & einem privaten Schlüssel.
* Schlüsselanzahl: Zwei Schlüssel (PubKey & PrivKey) pro Nutzer.
* Das Schlüsselpaar:
    * Öffentlicher Schlüssel (PubKey): Darf jeder kennen. Dient zum Verschlüsseln der Nachricht an den Besitzer.
    * Privater Schlüssel (PrivKey): Muss streng geheim bleiben. Dient zum Entschlüsseln der Nachricht.
* Funktionsweise:
    * Sender verschlüsselt mit dem öffentlichen Schlüssel des Empfängers.
    * Empfänger entschlüsselt mit seinem eigenen privaten Schlüssel.
* Hauptvorteil: Löst das Schlüsselverteilungsproblem, da der Verschlüsselungsschlüssel (PubKey) offen geteilt werden kann.
* Hauptnachteil: Sie ist viel langsamer als die symmetrische Verschlüsselung.
* Bekannte Beispiele: RSA (Rivest-Shamir-Adleman).

### Praktische Anwendung (Hybrid)

In der Praxis werden beide Verfahren kombiniert:
1.  Die langsame asymmetrische Methode wird nur dazu benutzt, einen schnellen, symmetrischen Sitzungsschlüssel sicher auszutauschen.
2.  Die schnelle symmetrische Methode wird dann benutzt, um die eigentlichen Daten zu verschlüsseln.

## 114-6A SideQuest:

### 1. Stabchiffre (Skytale)

* Prinzip- Transpositionsverfahren. Klartext wird zeilenweise geschrieben & spaltenweise gelesen. Der Schlüssel ist die Anzahl der Zeilen.

#### A: Verschlüsseln: `Verschluesselungsverfahren` (4 Zeilen)

| V   | E   | R   | S   | C   | H   | L   | U   |
| --- | --- | --- | --- | --- | --- | --- | --- |
| E   | S   | S   | E   | L   | U   | N   | G   |
| S   | V   | E   | R   | F   | A   | H   | R   |
| E   | N   |     |     |     |     |     |     |

* Geheimtext (spaltenweise gelesen): `VESEE SSVNR SSELL UAFGN RHEHR` (Oder sauber- VESESSVNRSELLUAFGNRHEHR)

#### B: Entschlüsseln: `kohrgiyrepatp` (5 Zeilen)

* Gittergröße- 13 Zeichen / 5 Zeilen => 3 Spalten (mit 5+5+3 Zeichen).
* Klartext (zeilenweise gelesen)- KRYPTOGRAPHIE

### 2. Caesar-Chiffre

* Prinzip: Substitutionsverfahren. Jeder Buchstabe wird um $k$ Positionen verschoben.
* Formel: $C = (P + k) \pmod{26}$ | $P = (C - k) \pmod{26}$

#### A: Verschlüsseln: `WISS` (Schlüssel 4)

| Klartext (P)    | W(22)  | I(8) | S(18) | S(18) |
| --------------- | ------ | ---- | ----- | ----- |
| + Schlüssel (4) | 26 (0) | 12   | 22    | 22    |
| Geheimtext (C)  | A      | M    | W     | W     |

* Geheimtext- AMWW

#### B: Entschlüsseln: `Otluxsgzoq` (Schlüssel 6)

| Geheimtext (C)  | O(14) | t(19) | l(11) | u(20) | x(23) | s(18) | g(6) | z(25) | o(14) | q(16) |
| --------------- | ----- | ----- | ----- | ----- | ----- | ----- | ---- | ----- | ----- | ----- |
| - Schlüssel (6) | 8     | 13    | 5     | 14    | 17    | 12    | 0    | 19    | 8     | 10    |
| Klartext (P)    | I     | N     | F     | O     | R     | M     | A    | T     | I     | K     |

* Klartext- INFORMATIK

### 3. Vigenère-Chiffre

* Prinzip- Polyalphabetische Substitution. Verwendet ein sich wiederholendes Schlüsselwort ($K$).

#### A: Verschlüsseln: `Wirtschaft` (Key- `KEY`)

* Schlüsselsequenz- `KEYKEYKEYK`

| P   | W   | I   | R   | T   | S   | C   | H   | A   | F   | T   |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| K   | K   | E   | Y   | K   | E   | Y   | K   | E   | Y   | K   |
| C   | G   | M   | P   | D   | W   | A   | R   | E   | D   | D   |

* Geheimtext- GMPDWARDEDD

#### B: Entschlüsseln: `Jypsgf` (Key- `KEY`)

* Schlüsselsequenz- `KEYKEY`

| C   | J   | y   | p   | s   | g   | f   |
| --- | --- | --- | --- | --- | --- | --- |
| K   | K   | E   | Y   | K   | E   | Y   |
| P   | Z   | U   | R   | I   | C   | H   |

* Klartext- ZURICH

## 114-6B SideQuest:

### Modulo bestimmen
| Aufgabe     | Rechnung         | Ergebnis |
| ----------- | ---------------- | -------- |
| 37 (mod 5)  | 37 / 5 = 7 R 2   | 2        |
| 93 (mod 50) | 93 / 50 = 1 R 43 | 43       |
| 15 (mod 3)  | 15 / 3 = 5 R 0   | 0        |
| 43 (mod 5)  | 43 / 5 = 8 R 3   | 3        |

### Addition mit Modulo
| Aufgabe       | Schritt 1- Summieren | Schritt 2- Modulo-Rest | Ergebnis |
| ------------- | -------------------- | ---------------------- | -------- |
| 3+5 (mod 7)   | 8                    | 8 / 7 = R 1            | 1        |
| 2+2 (mod 15)  | 4                    | 4 / 15 = R 4           | 4        |
| 3+6 (mod 9)   | 9                    | 9 / 9 = R 0            | 0        |
| 17+23 (mod 9) | 40                   | 40 / 9 = R 4           | 4        |

### Subtraktion mit Modulo
| Aufgabe       | Schritt 1- Subtrahieren | Schritt 2- Modulo-Rest (oder Addition) | Ergebnis |
| ------------- | ----------------------- | -------------------------------------- | -------- |
| 16–23 (mod 5) | -7                      | -7 + (2 * 5) = 3                       | 3        |
| 3–6 (mod 9)   | -3                      | -3 + 9 = 6                             | 6        |
| 27–37 (mod 9) | -10                     | -10 + (2 * 9) = 8                      | 8        |
| 8–9 (mod 7)   | -1                      | -1 + 7 = 6                             | 6        |

### Multiplikation mit Modulo
| Aufgabe        | Schritt 1- Multiplizieren | Schritt 2- Modulo-Rest | Ergebnis |
| -------------- | ------------------------- | ---------------------- | -------- |
| 4 * 5 (mod 7)  | 20                        | 20 / 7 = R 6           | 6        |
| 20 * 2 (mod 4) | 40                        | 40 / 4 = R 0           | 0        |
| 3 * 7 (mod 6)  | 21                        | 21 / 6 = R 3           | 3        |
| 9 * 3 (mod 4)  | 27                        | 27 / 4 = R 3           | 3        |

## 114-7A SideQuest:

### 1. Symmetrische Verschlüsselung
Hierbei verwenden Sender & Empfänger denselben geheimen Schlüssel.
* Schlüsselanzahl: Ein Schlüssel (KEY) für alles.
* Funktionsweise:
    * Der Sender nutzt KEY zum Verschlüsseln.
    * Der Empfänger nutzt denselben KEY zum Entschlüsseln.
* Hauptvorteil: Sie ist sehr schnell & effizient (gut für grosse Datenmengen).
* Hauptnachteil: Der geheime Schlüssel KEY muss auf einem sicheren Weg zwischen Sender & Empfänger ausgetauscht werden.
* Bekannte Beispiele: AES (Advanced Encryption Standard).

### 2. Asymmetrische Verschlüsselung
Hierbei verwendet jeder Teilnehmer ein Paar aus einem öffentlichen & einem privaten Schlüssel.
* Schlüsselanzahl: Zwei Schlüssel (PubKey & PrivKey) pro Nutzer.
* Das Schlüsselpaar:
    * Öffentlicher Schlüssel (PubKey): Darf jeder kennen. Dient zum Verschlüsseln der Nachricht an den Besitzer.
    * Privater Schlüssel (PrivKey): Muss streng geheim bleiben. Dient zum Entschlüsseln der Nachricht.
* Funktionsweise:
    * Sender verschlüsselt mit dem öffentlichen Schlüssel des Empfängers.
    * Empfänger entschlüsselt mit seinem eigenen privaten Schlüssel.
* Hauptvorteil: Löst das Schlüsselverteilungsproblem, da der Verschlüsselungsschlüssel (PubKey) offen geteilt werden kann.
* Hauptnachteil: Sie ist viel langsamer als die symmetrische Verschlüsselung.
* Bekannte Beispiele: RSA (Rivest-Shamir-Adleman).

### Praktische Anwendung (Hybrid)

In der Praxis werden beide Verfahren kombiniert:
1.  Die langsame asymmetrische Methode wird nur dazu benutzt, einen schnellen, symmetrischen Sitzungsschlüssel sicher auszutauschen.
2.  Die schnelle symmetrische Methode wird dann benutzt, um die eigentlichen Daten zu verschlüsseln.

### SHA-Verfahren (Secure Hash Algorithm)

SHA-Verfahren sind Hash-Funktionen. Das bedeutet, sie nehmen beliebige Daten (wie Text, Dateien oder Passwörter) entgegen & erzeugen daraus eine feste, kurze Zeichenkette (den sogenannten Hashwert oder Digest).

#### 1. Grundprinzip

1.  Eingabe: Du gibst eine Nachricht beliebiger Länge ein (z.B. einen Satz oder ein 1 GB grosses Video).
2.  Berechnung: Die Daten werden durch eine komplexe mathematische Einweg-Funktion geschickt.
3.  Ausgabe: Es entsteht ein Hashwert von fester Länge in Form einer Hexadezimalzahl.

#### 2. Wichtige Eigenschaften

* Einbahnstrasse (Einwegfunktion): Aus dem Hashwert kann man die ursprüngliche Eingabe nicht wiederherstellen.
* Kleine Änderung, grosser Effekt: Ändert man nur ein einziges Bit in der Eingabe, ändert sich der gesamte Hashwert dramatisch.
* Kollisionssicherheit: Es ist extrem unwahrscheinlich, dass zwei unterschiedliche Eingaben denselben Hashwert erzeugen.

#### 3. Die verschiedenen SHA-Versionen

Die Zahl im Namen gibt die Länge des erzeugten Hashwertes in Bits an. Je länger der Hashwert, desto sicherer das Verfahren.

| Verfahren | Hash-Länge (Bits)        | Hash-Länge (Hex-Zeichen) | Status             | Kurzbeschreibung                                                                                                                                                                                       |
| --------- | ------------------------ | ------------------------ | ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| SHA-256   | 256                      | 64                       | Aktueller Standard | Teil der SHA-2-Familie. Wird häufig in Blockchain-Technologien (z.B. Bitcoin) & bei der Sicherung von TLS/SSL (HTTPS) verwendet. Bietet eine hohe Sicherheit.                                        |
| SHA-3     | Variabel (z.B. 256, 512) | Variabel                 | Neuester Standard  | Wurde als Nachfolger für die gesamte SHA-2-Familie entwickelt. Es basiert auf einer völlig anderen kryptografischen Struktur (Keccak-Algorithmus) & bietet eine verbesserte theoretische Sicherheit. |

## 114-7B

### Was ist Steganografie?
* Steganografie ist die Wissenschaft & Kunst des Verbergens von Informationen.
* Der Begriff stammt aus dem Griechischen & bedeutet wörtlich "geheimes Schreiben".
* Ziel ist es, nicht nur den Inhalt einer Nachricht unlesbar zu machen (wie bei der Kryptografie), sondern die Existenz der Nachricht selbst zu verbergen. 

### Wie funktioniert es?
Die gängigste Methode bei digitalen Bildern ist die LSB-Methode (Least Significant Bit):

* Digitale Bilder bestehen aus Pixeln, & jedes Pixel hat Farbwerte (z.B. Rot, Grün, Blau).
* Jeder Farbwert wird durch eine Reihe von Bits dargestellt (z.B. 8 Bit).
* Die Steganografie verändert das letzte Bit (das am wenigsten wichtige Bit, LSB) dieser Farbwerte.
* Eine Änderung des LSB hat kaum sichtbare Auswirkungen auf die Farbe des Pixels, da das menschliche Auge den minimalen Unterschied nicht wahrnehmen kann.
* Diese "unschuldigen" letzten Bits werden dann genutzt, um die geheime Botschaft binär zu speichern.

### Warum wird es verwendet?
* Zensurumgehung: Um die Überwachung durch Dritte zu umgehen, da nicht die verschlüsselte Natur der Daten, sondern die Daten selbst verborgen werden.
* Urheberrechtsschutz (Wasserzeichen): Unsichtbare Markierungen (digitale Wasserzeichen) in Bildern oder Musikdateien, um den Ursprung des Inhalts zu beweisen.
* Geheimkommunikation: Ermöglicht die Kommunikation zwischen zwei Parteien, ohne dass ein Dritter überhaupt Verdacht schöpft.

## 114-7C

### Theoretische Infos zur Aufgabe

**1. Warum E-Mails unsicher sind**
* Normale E-Mails sind wie Postkarten -> jeder Server dazwischen kann alles lesen.
* Risiko: Abfangen, Mitlesen, Manipulation.

### 2. Verschlüsselungsverfahren bei E-Mails

**Asymmetrische Verschlüsselung (Public-Key-Verfahren)**

Wird bei Mailverschlüsselung (PGP/GPG, S/MIME) genutzt.

Prinzip:
* Jeder hat 2 Schlüssel:
  * Public Key -> darf jeder haben
  * Private Key -> bleibt geheim
* Verschlüsseln erfolgt mit dem Public Key des Empfängers
* Entschlüsseln kann nur der Private Key

**Vorteile:**

* Kein geheimer Schlüsselaustausch notwendig
* Ermöglicht Signaturen (Authentizität + Integrität)
* Hohe Sicherheit (z.B. 2048-4096 Bit RSA)

### 3. Signatur vs. Verschlüsselung

Verschlüsseln:
-> Schützt den Inhalt
-> Nur der Empfänger kann lesen
-> Ziel: Vertraulichkeit

Signieren:
-> Beweist, dass die Nachricht wirklich von dir ist
-> Empfänger kann prüfen, ob die Datei verändert wurde
-> Ziel: Authentizität + Integrität

Wie funktioniert es?

* Signieren nutzt deinen privaten Schlüssel
* Empfänger überprüft mit deinem öffentlichen Schlüssel

### 4. GPG / OpenPGP / Gpg4Win

GPG (GnuPG)

* Open-Source Umsetzung von OpenPGP
* Wird verwendet, um Dateien/Mails zu verschlüsseln & zu signieren

Gpg4Win

* Windows-Paket, enthält:

  * Kleopatra -> Schlüsselverwaltung
  * GPG Core Tools

Einsatzgebiete:

* Verschlüsselte Mails (PGP/MIME)
* Sichere Dateiübertragung
* Software-Signaturen

### 5. Wann nutzt man was? (Praxisrelevant)

**PGP / GPG**

* Personenkommunikation
* Entwickler, Admins, Datenschutz

**S/MIME**

* Unternehmen
* Zertifikate über PKI (z.B. SwissSign)

### 6. Rechtliche Mindestanforderungen (Schweiz / DSGVO)

Für Datenübertragung über das Internet gelten heute meist:

* Mindestens 128-Bit symmetrisch (AES-128)
* Asymmetrisch: mindestens 2048 Bit RSA
* E-Mail-Transport: TLS 1.2 oder höher

Sensible Daten müssen Ende-zu-Ende verschlüsselt werden (PGP oder S/MIME).

### 7. Digitales Zertifikat - wozu?

Dient zur Identitätsbestätigung (z.B. einer Mailadresse oder Person).

Gewährleistet:

* Authentizität -> Absender ist echt
* Integrität -> Daten unverändert
* Vertrauen zwischen zwei Parteien

Beispiel: HTTPS-Zertifikate, Firmensignaturen, S/MIME.

### 8. Warum EduGame Mailverschlüsselung braucht

-> Lizenz-Key = sensibler Wert
-> Ohne Verschlüsselung könnten:

* Keys abgefangen werden
* Missbrauch / Weitergabe passieren
* Rechtliche Vorgaben verletzt werden (DSG/DSGVO)

Durch Verschlüsselung:
* Nur der richtige Schüler kann den Key lesen
* Signatur zeigt, dass die Mail nicht manipuliert wurde

