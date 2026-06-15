import matplotlib.pyplot as plt

# --- 1. Die universelle Subplot-Funktion ---
def plotte_funktion(ax, funktion, titel, x_label='x-Achse', y_label='y-Achse', x_min=-5, x_max=5, y_min=-5, y_max=5, farbe='blue', marker='o'):
    """
    Zeichnet eine mathematische Funktion auf ein spezifisches Subplot-Achsenobjekt (ax).
    """
    # x-Werte generieren
    x_werte = list(range(x_min, x_max + 1))
    
    # y-Werte berechnen
    y_werte = [funktion(x) for x in x_werte]

    # Auf der übergebenen Achse (ax) zeichnen
    ax.plot(x_werte, y_werte, marker=marker, color=farbe, linestyle='-', linewidth=2)

    # Beschriftungen für dieses spezifische Subplot setzen
    ax.set_title(titel, fontsize=12, fontweight='bold')
    ax.set_xlabel(x_label, fontsize=10)
    ax.set_ylabel(y_label, fontsize=10)
    ax.grid(True, linestyle='--', alpha=0.6)

    # Nulllinien hervorheben
    ax.axhline(0, color='black', linewidth=1.2)
    ax.axvline(0, color='black', linewidth=1.2)

    # Achsen fest begrenzen
    ax.set_xlim(x_min, x_max)
    ax.set_ylim(y_min, y_max)
    
    # Seitenverhältnis exakt auf 1:1 (quadratisch) setzen
    ax.set_aspect('equal')

    # Achsenticks anpassen (x und y)
    ax.set_xticks(list(range(x_min, x_max + 1)))
    ax.set_yticks(list(range(y_min, y_max + 1)))


# --- 2. Deine mathematischen Funktionen ---
def func1(x):
    return 2 * x - 3

def func2(x):
    return -2 * x + 4


# --- 3. Das Hauptprogramm (Erstellung der Subplots) ---

# Fenstergrösse angepasst: 10x5 ist perfekt für zwei quadratische Plots nebeneinander
fig, axes = plt.subplots(1, 2, figsize=(10, 5))

# Ersten Subplot befüllen (Index 0)
plotte_funktion(
    ax=axes[0], 
    funktion=func1, 
    titel='Lineare Funktion: y = 2x - 3', 
    farbe='blue', 
    marker='o',
    x_min=-5,  
    x_max=5,
    y_min=-5,  
    y_max=5    
)

# Zweiten Subplot befüllen (Index 1)
plotte_funktion(
    ax=axes[1], 
    funktion=func2, 
    titel='Lineare Funktion: y = -2x + 4', 
    farbe='orange', 
    marker='s', # Quadratischer Marker
    x_min=-5,  
    x_max=5,
    y_min=-5,  # KORREKTUR: Explizit mitgegeben für saubere Übergabe
    y_max=5    # KORREKTUR: Explizit mitgegeben für saubere Übergabe
)

# KORREKTUR: Die Zeile "axes[1].axis('off')" wurde entfernt, damit der zweite Graph sichtbar ist!

# Verhindert, dass sich die Beschriftungen der Achsen überschneiden
plt.tight_layout()

# Das fertige Fenster anzeigen
plt.show()
