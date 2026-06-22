### Zusammenfassung der Operatoren für die Prüfung:

| Operation          | Mathematisch    | Python   | Erklärung                         |
| ------------------ | --------------- | -------- | --------------------------------- |
| **Schnittmenge**   | $A \cap B$      | `A & B`  | Gemeinsame Elemente               |
| **Vereinigung**    | $A \cup B$      | `A \| B` | Alles zusammen                    |
| **Differenz**      | $A \setminus B$ | `A - B`  | Nur was in A, aber nicht in B ist |
| **Sym. Differenz** | $A \Delta B$    | `A ^ B`  | Alles ausser die Gemeinsamkeiten   |
| **Teilmenge**      | $A \subseteq B$ | `A <= B` | Ist A in B enthalten?             |

### 1. Definition von Mengen (Set)

Eine Menge wird in Python mit geschweiften Klammern `{}` definiert. Sie enthält jedes Element nur einmal und ist ungeordnet.

```python
# Definition
A = {1, 2, 3, 4}
B = {3, 4, 5, 6}

# Wichtig: Eine leere Menge erstellt man mit set(), nicht mit {} (das wäre ein Dictionary)
leere_menge = set()
```

### 2. Mengenoperationen & Venn-Logik

Hier sind die Operationen, die du für die Prüfung beherrschen musst, inklusive der Python-Operatoren:

```python
# --- 1. DURCHSCHNITT (Schnittmenge) ---
# Nur Elemente, die in BEIDEN Mengen sind
schnitt = A & B  # Ergebnis: {3, 4}

# --- 2. VEREINIGUNG (Vereinigungsmenge) ---
# Alle Elemente aus beiden Mengen (ohne Duplikate)
vereinigung = A | B  # Ergebnis: {1, 2, 3, 4, 5, 6}

# --- 3. DIFFERENZ (Differenzmenge) ---
# Elemente, die in A sind, aber NICHT in B
diff = A - B  # Ergebnis: {1, 2}

# --- 4. SYMMETRISCHE DIFFERENZ ---
# Elemente, die ENTWEDER in A oder in B sind, aber nicht in beiden
sym_diff = A ^ B  # Ergebnis: {1, 2, 5, 6}
```

### 3. Teilmengen & Relationen

In Python nutzt man Vergleichsoperatoren, um die Beziehung zwischen Mengen zu prüfen:

```python
X = {3, 5}
Y = {3, 5, 7}

# Teilmenge (Subset): Ist X in Y enthalten?
ist_teilmenge = X <= Y  # True (X kann auch gleich Y sein)

# Echte Teilmenge: Ist X in Y, aber Y hat mindestens ein Element mehr?
ist_echte_teilmenge = X < Y  # True

# Obermenge (Superset): Beinhaltet Y alle Elemente von X?
ist_obermenge = Y >= X  # True
```

### 4. Wichtige Zahlenmengen (Theorie)

In Python kannst du diese Mengen oft durch Typen oder Generatoren simulieren:

- **$\mathbb{N}$ (Natürliche Zahlen):** `0, 1, 2, 3...` (In Python: `int` positiv)
- **$\mathbb{Z}$ (Ganze Zahlen):** `...-2, -1, 0, 1, 2...` (In Python: `int`)
- **$\mathbb{Q}$ (Rationale Zahlen):** Brüche / Dezimalzahlen (In Python: `float` oder `fractions.Fraction`)
- **$\mathbb{R}$ (Reelle Zahlen):** Beinhaltet auch Wurzeln wie $\sqrt{2}$ oder $\pi$ (In Python: `float` / `math.pi`)
- $\mathbb{ABCDEFGHIJKLMNOPQRSTUVWXYZ}$