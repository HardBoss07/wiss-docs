# Modul 114 - Codierungs-, Kompressions- und Verschlüsselungsverfahren einsetzen

## 114-1A - SideQuest:

* Kodierung:
  * Interpretation von binären Daten in spezifische Formate
  * Beispiele: UTF-8, HEX-Farbcodes, ASCII
  * Nützlich, um binäre Daten in ein für Menschen verständliches Format umzuwandeln
  * Ohne Kodierung müssten wir digital direkt mit 0 und 1 arbeiten
* Kompression:
  * Verkleinerung von Daten durch Ersetzen wiederkehrender Muster
  * Beispiele: ZIP, RAR, JPEG
  * Dadurch können selten verwendete Daten weniger Speicherplatz beanspruchen
  * Ohne Kompression wäre das Speichern grosser Datenmengen teurer und umständlicher
* Verschlüsselung:
  * Wandelt lesbare Daten in sogenannten Ciphertext um
  * Beispiele: HTTPS, PGP, AES
  * Mit Verschlüsselung kann sichergestellt werden, dass nur berechtigte Personen Zugriff auf die Daten haben
  * Ohne Verschlüsselung könnte jeder den Internetverkehr mitlesen, Dokumente verändern und die digitale Privatsphäre wäre praktisch nicht existent

## 114-1B SideQuest:

Im Alltag wird hauptsächlich das Dezimalsystem verwendet (0–9).

Das Binärsystem funktioniert nur mit 2 Zuständen (0, 1). Mit einer Aneinanderreihung dieser 2 Zustände kann man praktisch jeden gewünschten Zustand definieren.

Das Hexadezimalsystem funktioniert mit 16 Zuständen (0–9, A–F) und wird in der Informatik genutzt, da es lesbarer ist als Binär. Mit einer einstelligen Hex-Zahl kann eine vierstellige Binärzahl dargestellt werden.

Das Problem, nicht zu wissen, ob '10' eine Dezimal-, Binär- oder Hex-Zahl ist, löst man mit Präfixen:

* 0b = Binär
* 0x = Hex
* 0o = Oktal
* 0t = Tertiär
* kein Präfix = Dezimal

### Zahlensystem mit 3 Werten:

Um ein Zahlensystem mit 3 Werten zu entwickeln, nimmt man 3 verschiedene Zeichen. Ich mache es mir einfach und nehme 0, 1 und 2 mit dem Präfix 0t.

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
* Nachteil: Es gibt +0 und -0 (2 Darstellungen von 0).

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
|  0000 | +0              | 0                |
|  0001 | +1              | +1               |
|  0010 | +2              | +2               |
|  0011 | +3              | +3               |
|  0100 | +4              | +4               |
|  0101 | +5              | +5               |
|  0110 | +6              | +6               |
|  0111 | +7              | +7               |
|  1000 | -7              | -8               |
|  1001 | -6              | -7               |
|  1010 | -5              | -6               |
|  1011 | -4              | -5               |
|  1100 | -3              | -4               |
|  1101 | -2              | -3               |
|  1110 | -1              | -2               |
|  1111 | -0              | -1               |

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

* AND (UND-Verknüpfung): ergibt *wahr*, wenn alle Operanden wahr sind.

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

Huffman-Codes komprimieren Daten, indem **häufige Zeichen kurze Codes** und **seltene lange Codes** bekommen.
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
