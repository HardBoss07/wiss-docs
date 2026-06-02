# Math Syntax Reference

## 1. Inline vs. Display

- **Inline:** Use single `$`: $E = mc^2$
- **Display:** Use double `$$`:
  $$a^2 + b^2 = c^2$$

## 2. Basic Arithmetic

- **Fractions:** $\frac{numerator}{denominator}$
- **Roots:** $\sqrt{x}$ or $\sqrt[3]{y}$
- **Multiplication:** $a \times b$ or $a \cdot b$
- **Division:** $a \div b$

## 3. Subscripts & Superscripts

- **Superscript:** $x^{n+1}$
- **Subscript:** $H_{2}O$
- **Both:** $A_{i,j}^{2}$

## 4. Greek Letters

- **Lowercase:** $\alpha, \beta, \gamma, \delta, \pi, \sigma$
- **Uppercase:** $\Gamma, \Delta, \Omega, \Sigma$

## 5. Calculus & Summations

- **Summation:** $\sum_{i=1}^{n} i$
- **Integral:** $\int_{a}^{b} x^2 \,dx$
- **Limit:** $\lim_{x \to 0} \frac{\sin x}{x}$
- **Partial Derivative:** $\frac{\partial f}{\partial x}$

## 6. Matrices & Vectors

- **Matrix:**

  $$
  \begin{pmatrix}
  1 & 0 \\
  0 & 1
  \end{pmatrix}
  $$

- **Vector:** $\vec{v}$ or $\mathbf{u}$

## 7. Logic & Sets

- **Sets:** $\mathbb{R}, \mathbb{Z}, \in, \subset, \emptyset$
- **Logic:** $\forall, \exists, \neg, \implies, \iff$

## 8. Sizing Brackets

Use `\left` and `\right` to make brackets scale with the content:

$$
\left( \frac{1}{2^{n}} \right)
$$

## 9. Functions & Graph Plotting

### Math Notation (LaTeX)

- **Function Definition:** $f: \mathbb{R} \to \mathbb{R}, \quad x \mapsto f(x)$
- **Piecewise Function (Fallunterscheidung):**
  $$
  f(x) =
  \begin{cases}
  x^2 & \text{if } x \ge 0 \\
  -x & \text{if } x < 0
  \end{cases}
  $$
- **Intervals:** $x \in [0, \infty)$ (closed), $x \in (a, b)$ (open)
- **Asymptotes / Tendency:** $f(x) \to \infty \quad \text{for } x \to \infty$

### Live Plotting in Markdown Preview Enhanced

MPE kann über Codeblöcke direkt interaktive Graphen rendern. Kopiere diese Blöcke in dein Dokument:

#### A. Plotting via Plotly (JavaScript / Schnell & Interaktiv)

Füge einen `js-plotly`-Block hinzu, um mathematische Funktionen direkt zu zeichnen:

```javascript {cmd=true element="<div id='plot1'></div>"}
const xValues = [];
const yValues = [];
for (let x = -5; x <= 5; x += 0.1) {
  xValues.push(x);
  yValues.push(Math.pow(x, 2)); // Funktion: f(x) = x^2
}

const trace = {
  x: xValues,
  y: yValues,
  type: "scatter",
  mode: "lines",
  name: "f(x) = x²",
};
Plotly.newPlot("plot1", [trace], { title: "Parabel Plot", margin: { t: 40 } });
```

# Markdown Mathe Cheat-Sheet

## 1. Grundrechenarten & Algebra

| Beschreibung            | Code          | Gerendert     |
| :---------------------- | :------------ | :------------ |
| Bruch                   | `\frac{a}{b}` | $\frac{a}{b}$ |
| Wurzel                  | `\sqrt{x}`    | $\sqrt{x}$    |
| n-te Wurzel             | `\sqrt[n]{x}` | $\sqrt[n]{x}$ |
| Hochgestellt / Exponent | `x^2`         | $x^2$         |
| Tiefgestellt / Index    | `x_i`         | $x_i$         |
| Malzeichen              | `\cdot`       | $\cdot$       |
| Kreuzprodukt            | `\times`      | $\times$      |
| Geteiltzeichen          | `\div`        | $\div$        |
| Plusminus / Minusplus   | `\pm` / `\mp` | $\pm$ / $\mp$ |

## 2. Relationen & Ungleichungen

| Beschreibung            | Code            | Gerendert       |
| :---------------------- | :-------------- | :-------------- |
| Ungleich                | `\neq`          | $\neq$          |
| Ungefähr gleich         | `\approx`       | $\approx$       |
| Entspricht              | `\hat=`         | $\hat=$         |
| Kleiner / Größer gleich | `\leq` / `\geq` | $\leq$ / $\geq$ |
| Proportional zu         | `\propto`       | $\propto$       |
| Identisch               | `\equiv`        | $\equiv$        |

## 3. Pfeile & Logik

| Beschreibung                  | Code                          | Gerendert                    |
| :---------------------------- | :---------------------------- | :--------------------------- |
| Pfeil rechts / links          | `\rightarrow` / `\leftarrow`  | $\rightarrow$ / $\leftarrow$ |
| Kurzform Pfeil rechts         | `\to`                         | $\to$                        |
| Folgepfeil (daraus folgt)     | `\Rightarrow`                 | $\Rightarrow$                |
| Äquivalenz (genau dann, wenn) | `\Leftrightarrow` oder `\iff` | $\Leftrightarrow$ / $\iff$   |
| Und / Oder                    | `\land` / `\lor`              | $\land$ / $\lor$             |

## 4. Mengenlehre

| Beschreibung                    | Code                       | Gerendert                  |
| :------------------------------ | :------------------------- | :------------------------- |
| Element von / Nicht Element von | `\in` / `\notin`           | $\in$ / $\notin$           |
| Teilmenge                       | `\subset` oder `\subseteq` | $\subset$ / $\subseteq$    |
| Schnittmenge (Und)              | `\cap`                     | $\cap$                     |
| Vereinigungsmenge (Oder)        | `\cup`                     | $\cup$                     |
| Leere Menge                     | `\emptyset`                | $\emptyset$                |
| Zahlenmengen (R, N, Z, Q)       | `\mathbb{R}`, `\mathbb{N}` | $\mathbb{R}$, $\mathbb{N}$ |

## 5. Analysis (Grenzwerte, Integrale, Summen)

| Beschreibung        | Code                    | Gerendert               |
| :------------------ | :---------------------- | :---------------------- |
| Unendlich           | `\infty`                | $\infty$                |
| Limes (Grenzwert)   | `\lim_{x \to 0}`        | $\lim_{x \to 0}$        |
| Integral            | `\int_{a}^{b} x^2 \,dx` | $\int_{a}^{b} x^2 \,dx$ |
| Summe               | `\sum_{i=1}^{n} i`      | $\sum_{i=1}^{n} i$      |
| Produkt             | `\prod_{i=1}^{n} i`     | $\prod_{i=1}^{n} i$     |
| Partielle Ableitung | `\partial`              | $\partial$              |

## 6. Griechisches Alphabet (Auswahl)

_Tipp: Für Großbuchstaben einfach den ersten Buchstaben groß schreiben (z.B. `\Gamma` statt `\gamma`)._
| Beschreibung | Code | Gerendert |
| :--- | :--- | :--- |
| Alpha, Beta, Gamma | `\alpha`, `\beta`, `\gamma` | $\alpha$, $\beta$, $\gamma$ |
| Delta (Differenz) | `\Delta`, `\delta` | $\Delta$, $\delta$ |
| Pi, Sigma, Omega | `\pi`, `\sigma`, `\omega` | $\pi$, $\sigma$, $\omega$ |
| Phi, Theta, Lambda | `\phi`, `\theta`, `\lambda` | $\phi$, $\theta$, $\lambda$ |

## 7. Akzente & Vektoren

| Beschreibung                | Code                  | Gerendert             |
| :-------------------------- | :-------------------- | :-------------------- |
| Vektorpfeil                 | `\vec{a}`             | $\vec{a}$             |
| Dach (Winkel/Hut)           | `\hat{a}`             | $\hat{a}$             |
| Strich (Mittelwert)         | `\bar{x}`             | $\bar{x}$             |
| Punkt (Ableitung nach Zeit) | `\dot{x}`, `\ddot{x}` | $\dot{x}$, $\ddot{x}$ |

## 8. Klammern (die mitwachsen)

Wenn du große Brüche hast, passen sich normale Klammern `()` nicht an. Nutze `\left(` und `\right)`:

- Feste, kleine Klammern: `( \frac{1}{2} )`
- Mitwachsende Klammern: `\left( \frac{1}{2} \right)`

## 9. Matrizen & Gleichungssysteme

Für Matrizen nutzt man eine sogenannte "Umgebung" (begin und end). Das Kaufmanns-Und `&` trennt Spalten, der Doppel-Backslash `\\` trennt Zeilen:

$$
\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}
$$

**Code:**

```latex
\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}
```
