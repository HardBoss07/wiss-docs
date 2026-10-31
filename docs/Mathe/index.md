# Mathe

# Semester 1

## Lernziele für 17.04.2026

- Mengenlehre
  - Mit Python lösen
  - Multiple Choice auch

## Lektionen

| Datum      | Thema             | Notizen       |
| ---------- | ----------------- | ------------- |
| 2026-02-20 | Jupyter Lab Intro | Keine Notizen |
| 2026-02-27 | Python Intro      | Keine Notizen |
| 2026-03-06 | Python Intro      | Keine Notizen |

## Notizen vom 29.05.2026

[Link zum Skript](./python/funktionen/tag-1.py)
[Link zum Skript](./python/funktionen/tag-2.py)

Überprüfung ob der Punkt P auf der Funtion liegt:

- Funktion: $y = 2x + 5$
- Punkt: $P(1|3)$

Lösen durch einsetzen:

$$
3 = 2 \cdot 1 + 5 \\
3 = 2 + 5 \\
3 = 7 \\
\Rightarrow Falsch: 3 \neq 7
$$

$P(1|?), Q(?|2)$ sollen auf $g : y = 2x + 1$ liegen.

$$
y = 2 \cdot 1 + 1 \\
y = 2 + 1 \\
y = 3 \\
\Rightarrow P(1|3)
$$

$$
2 = 2x + 1 \\
1 = 2x \\
0.5 = x \\
\Rightarrow Q(0.5|2)
$$

Funktion: $y = 2x - 1$
Gesucht: $x$ wo $y = 0$

$$
0 = 2x -1 \\
1 = 2x \\
0.5 = x \\
$$

Lineare Gleichungssysteme:

$$
f(x) = 3x + 5 \\
g(x) = 2x - 4 \\

3x + 5 = 2x - 4 \\
3x - 2x = -4 - 5 \\
x = -9 \\
$$

Einsetzen in f:

$$
y = f(-9) = (3 \cdot -9) + 5 \\
y = -27 + 5 \\
y = -22 \\
$$

Schnittpunkt von $f$ und $g$: $S(-9|-22)$

## Notizen vom 05.06.2026

[Link zum Skript](./python/funktionen/tag-3.py)

Generelle Quadratische Funktion: $y = ax^2 + bx + c$

Generelle Lösungsformel (Mitternachtsformel):
$$ x\_{1,2}=\frac{-b\pm\sqrt{b^2-4ac}}{2a}$$

$a$ beschreibt die Öffnung und Streckung der Parabel
$b$ beschreibt die Steigung im $y$-Achsenabschnitt
$c$ beschreibt den $y$-Achsenabschnitt

### Die wichtigsten Punkte und wie sie berechnet werden:

- **Schnittpunkt mit der $y$-Achse**
  Wird berechnet, indem man $x = 0$ in die Funktion einsetzt. Der Punkt lautet immer:

$$S_y(0 \ | \ c)$$

- **Nullstellen (Schnittpunkte mit der $x$-Achse)**
  Werden berechnet, indem man die Funktion gleich Null setzt ($y = 0$). Man löst die Gleichung mit der **Mitternachtsformel**:

$$x_{1,2} = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

- **Scheitelpunkt (Extremwert der Parabel)**
  Der höchste oder tiefste Punkt $S(x_s \ | \ y_s)$ lässt sich direkt aus den Koeffizienten berechnen:

$$x_s = -\frac{b}{2a}$$
$$y_s = c - \frac{b^2}{4a}$$

## Notizen vom 12.06.2026

[Link zum Skript](./python/funktionen/tag-4.py)

$$y=2x^2-3x-4$$

1. $a=2$, $b=-3$, $d=-4$
2. Schnittpunkt mit der $Y$-Achse ist $= d$ also $-4$
3. Schnittpunkt mit der $X$-Achse:
   $$ x\_{1,2}=\frac{-b\pm\sqrt{b^2-4ac}}{2a}$$
   $$ x\_{1,2}=\frac{-(-3)\pm\sqrt{(-3)^2-4\cdot2\cdot(-4)}}{2\cdot2}$$
   $$ x\_{1,2}=\frac{3\pm\sqrt{9+32}}{4}$$
   $$ x\_{1,2}=\frac{3\pm\sqrt{41}}{4}$$
   $$ x_1=\frac{3-\sqrt{41}}{4}$$
   $$ x_2=\frac{3+\sqrt{41}}{4}$$

$$N_1\left(\frac{3 + \sqrt{41}}{4} \;\middle|\; 0\right)$$
$$N_2\left(\frac{3 - \sqrt{41}}{4} \;\middle|\; 0\right)$$
$N_1(2.35 \mid 0)$ (nur wenn man die Wurzel auflöst)
$N_2(-0.85 \mid 0)$ (nur wenn man die Wurzel auflöst)

Ich habe 2 Funktionen:

- $y=x^2+2x$
- $y=2x+4$Um die Schnittpunkte zweier Funktionen zu berechnen, setzt man die beiden Funktionsgleichungen **gleich**. Das bedeutet, wir suchen die Punkte, an denen beide $Y$-Werte für dasselbe $X$ identisch sind.

Hier ist der Schritt-für-Schritt-Weg:

### 1. Gleichungen gleichsetzen

$$x^2 + 2x = 2x + 4$$

### 2. Gleichung nach null auflösen

Wir bringen alle Terme auf die linke Seite, indem wir auf beiden Seiten $2x$ und $4$ subtrahieren:

$$x^2 + 2x - 2x - 4 = 0$$

Da sich $+2x$ und $-2x$ genau aufheben, vereinfacht sich die Gleichung zu:

$$x^2 - 4 = 0$$

### 3. $X$-Werte berechnen

Diese Gleichung können wir direkt durch Umstellen lösen (oder alternativ über die dritte binomische Formel):

$$x^2 = 4$$

Wenn wir nun die Wurzel ziehen, erhalten wir zwei Lösungen (eine positive und eine negative):

- $x_1 = 2$
- $x_2 = -2$

### 4. Zugehörige $Y$-Werte berechnen

Um die vollständigen Koordinaten der Schnittpunkte zu erhalten, setzen wir die $X$-Werte in **eine der beiden ursprünglichen Gleichungen** ein. Die lineare Gleichung ($y = 2x + 4$) ist dafür meistens etwas einfacher:

- **Für $x_1 = 2$:**

$$y_1 = 2 \cdot (2) + 4 = 4 + 4 = 8$$

$\rightarrow$ Erster Schnittpunkt: **$S_1(2 \mid 8)$**

- **Für $x_2 = -2$:**

$$y_2 = 2 \cdot (-2) + 4 = -4 + 4 = 0$$

$\rightarrow$ Zweiter Schnittpunkt: **$S_2(-2 \mid 0)$**

### Ergebnis

Die beiden Funktionen schneiden sich in den Punkten **$S_1(2 \mid 8)$** und **$S_2(-2 \mid 0)$**.

## Notizen vom 26.06.2026

[Link zum Skript](./python/funktionen/tag-5.py)

In der Mathematik betrachten wir eine Funktion $f: A \to B$, wobei $A$ die Definitionsmenge und $B$ die Wertemenge ist.

### 1. Injektivität (Eindeutigkeit)

Eine Funktion ist **injektiv**, wenn jedem Element aus der Zielmenge $B$ **höchstens ein** Element aus der Definitionsmenge $A$ zugeordnet wird.

- **Logik:** Wenn $f(x_1) = f(x_2)$, dann muss $x_1 = x_2$ gelten.
- **Visuell:** Kein "y-Wert" wird von zwei verschiedenen "x-Werten" getroffen (keine horizontalen Linien schneiden den Graphen mehr als einmal).

### 2. Surjektivität (Vollständigkeit)

Eine Funktion ist **surjektiv**, wenn jedes Element aus der Zielmenge $B$ **mindestens einmal** als Funktionswert erreicht wird.

- **Logik:** Für jedes $y \in B$ gibt es mindestens ein $x \in A$ mit $f(x) = y$.
- **Visuell:** Der gesamte Bereich der Zielmenge $B$ wird abgedeckt; es gibt keine "leeren" Stellen in der Zielmenge.

### 3. Bijektivität (Eindeutige Umkehrbarkeit)

Eine Funktion ist **bijektiv**, wenn sie **sowohl injektiv als auch surjektiv** ist.

- **Logik:** Jedem Element aus $A$ wird genau ein Element aus $B$ zugeordnet und umgekehrt. Es besteht eine perfekte "Eins-zu-Eins-Beziehung".
- **Konsequenz:** Nur bijektive Funktionen besitzen eine eindeutige Umkehrfunktion $f^{-1}$.

| Funktion      | Injektiv | Surjektiv | Bijektiv |
| ------------- | -------- | --------- | -------- |
| $y = x + 1$   | Ja       | Ja        | Ja       |
| $y = 5$       | Nein     | Nein      | Nein     |
| $y = x^2$     | Nein     | Nein      | Nein     |
| $y = x^3$     | Ja       | Ja        | Ja       |
| $y = \sin(x)$ | Nein     | Nein      | Nein     |

# Semester 2

am anfang einfach vieles über boolean algebra

## Notizen vom 11.09.2026

**Zahlensysteme**

Was wir können müssen:

- bin
- dec
- hex
- duo
- oct
  diese alle in einander umwandeln

binäre addition durchführen mit carry
bitwise operatiors wie and or xor usw verstehen und anwenden
wissen, wie negative zahlen im computer mithile des zweierkomplements dargestellt werden
subtraktion durch umwandlung in zweierkomplement-addition lösen

```text
0b01011100 = 92
0b00100111 = 39
0b11100001 = 225
```

## Notizen vom 18.09.2026

## Notizen vom 25.09.2026

### Binäraddition

```text
  01001101
+ 00110011
----------
  10000000
```

```text
  11000101
+ 10011000
----------
 101011101
```

### Subtraktion mit Zweierkomplement

1. 1100 - 1001
   - Zweierkomplement von 1001: 0110 + 1 = 0111

```text
  1100
+ 0111
------
(1)0011  =>  0011
```

2. 10011110 - 01010100
   - Zweierkomplement von 01010100: 10101011 + 1 = 10101100

```text
  10011110
+ 10101100
----------
(1)01001010  =>  0100 1010
```

### Bitwise:

Gegeben:
A = 10101100
B = 11110000

**Pos = Position von Links.**

| Pos | A   | B   | AND | OR  | XOR |
| --- | --- | --- | --- | --- | --- |
| 1   | 1   | 1   | 1   | 1   | 0   |
| 2   | 0   | 1   | 0   | 1   | 1   |
| 3   | 1   | 1   | 1   | 1   | 0   |
| 4   | 0   | 1   | 0   | 1   | 1   |
| 5   | 1   | 0   | 0   | 1   | 1   |
| 6   | 1   | 0   | 0   | 1   | 1   |
| 7   | 0   | 0   | 0   | 0   | 0   |
| 8   | 0   | 0   | 0   | 0   | 0   |

Lösung AND = 10100000

Lösung OR = 11111100

Lösung XOR = 01011100

### Dezimal zu Binär zu Bitwise

A: 5 = 0101
B: 3 = 0011

| Pos | A   | B   | XOR |
| --- | --- | --- | --- |
| 1   | 0   | 0   | 0   |
| 2   | 1   | 0   | 1   |
| 3   | 0   | 1   | 1   |
| 4   | 1   | 1   | 0   |

Lösung XOR in bin = 0110
Lösung XOR in dec = 6

A: 5 = 0101
B: 3 = 0011

| Pos | A   | B   | NAND |
| --- | --- | --- | ---- |
| 1   | 0   | 0   | 1    |
| 2   | 1   | 0   | 1    |
| 3   | 0   | 1   | 1    |
| 4   | 1   | 1   | 0    |

Lösung NAND in bin = 1110
Lösung NAND in dec = 14

## Notizen vom 30.10.2026

### Die Seiten im rechtwinkligen Dreieck

- **Hypotenuse ($H$):** Die längste Seite im rechtwinkligen Dreieck. Sie liegt immer direkt gegenüber dem rechten Winkel.
- **Ankathete ($A$):** Die Kathete, die am gewählten Winkel $\alpha$ anliegt (zusammen mit der Hypotenuse bildet sie diesen Winkel).
- **Gegenkathete ($G$):** Die Kathete, die dem gewählten Winkel $\alpha$ direkt gegenüberliegt.

### Die drei Grundfunktionen

$$\sin(\alpha) = \frac{\text{Gegenkathete}}{\text{Hypotenuse}} = \frac{G}{H}$$
$$\cos(\alpha) = \frac{\text{Ankathete}}{\text{Hypotenuse}} = \frac{A}{H}$$
$$\tan(\alpha) = \frac{\text{Gegenkathete}}{\text{Ankathete}} = \frac{G}{A}$$

**Eselsbrücke zum Merken:** $GAGA$ $H$ühner$H$of$A$G
$\rightarrow$ Schreibst du die Buchstaben als Brüche untereinander, erhältst du genau die Reihenfolge für Sinus, Kosinus, Tangens und Kotangens:
$$\frac{G}{H} \quad \frac{A}{H} \quad \frac{G}{A} \quad \frac{A}{G}$$

### 1. Dreieck

```text
 |\
 |b\
 |  \
 |   \
e|    \f
 |     \
 |    a \
 L_______\
    d
```

#### Für Winkel $\alpha$ (unten rechts):

- **Gegenkathete:** $e$ (liegt gegenüber von $a$)
- **Ankathete:** $d$ (liegt an $a$ an)
- **Hypotenuse:** $f$

$$\sin(a) = \frac{e}{f}$$
$$\cos(a) = \frac{d}{f}$$
$$\tan(a) = \frac{e}{d}$$

#### Für Winkel $\beta$ (oben):

- **Gegenkathete:** $d$ (liegt gegenüber von $b$)
- **Ankathete:** $e$ (liegt an $b$ an)
- **Hypotenuse:** $f$

$$\sin(b) = \frac{d}{f}$$
$$\cos(b) = \frac{e}{f}$$
$$\tan(b) = \frac{d}{e}$$

### 2. Dreieck

```text
 |\
 |b\
 |  \
 |   \
l|    \n
 |     \
 |    a \
 L_______\
    m
```

#### Für Winkel $\alpha$ (unten rechts):

- **Gegenkathete:** $i$ (liegt gegenüber von $a$)
- **Ankathete:** $m$ (liegt an $a$ an)
- **Hypotenuse:** $n$

$$\sin(a) = \frac{\text{Gegenkathete}}{\text{Hypotenuse}} = \frac{l}{n}$$
$$\cos(a) = \frac{\text{Ankathete}}{\text{Hypotenuse}} = \frac{m}{n}$$
$$\tan(a) = \frac{\text{Gegenkathete}}{\text{Ankathete}} = \frac{l}{m}$$

#### Für Winkel $\beta$ (oben):

- **Gegenkathete:** $m$ (liegt gegenüber von $b$)
- **Ankathete:** $i$ (liegt an $b$ an)
- **Hypotenuse:** $n$

$$\sin(b) = \frac{\text{Gegenkathete}}{\text{Hypotenuse}} = \frac{m}{n}$$
$$\cos(b) = \frac{\text{Ankathete}}{\text{Hypotenuse}} = \frac{l}{n}$$
$$\tan(b) = \frac{\text{Gegenkathete}}{\text{Ankathete}} = \frac{m}{l}$$
