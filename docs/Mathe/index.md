# Mathe

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
