import matplotlib.pyplot as plt

# --- 1. Die universelle Subplot-Funktion ---
def createSubplot(ax, preis_funktion, titel, x_label='Menge (in kg)', y_label='Preis (in CHF)', max_kg=10, farbe='blue', marker='o'):
    """
    Zeichnet eine Preisfunktion auf ein spezifisches Subplot-Achsenobjekt (ax).
    """
    # Daten generieren
    kilogramm = list(range(0, max_kg + 1))
    preise = [preis_funktion(kg) for kg in kilogramm]

    # Auf der übergebenen Achse (ax) zeichnen
    ax.plot(kilogramm, preise, marker=marker, color=farbe, linestyle='-', linewidth=2)

    # Beschriftungen für dieses spezifische Subplot setzen (wichtig: 'set_' Präfix verwenden)
    ax.set_title(titel, fontsize=12, fontweight='bold')
    ax.set_xlabel(x_label, fontsize=10)
    ax.set_ylabel(y_label, fontsize=10)
    ax.grid(True, linestyle='--', alpha=0.6)

    # Achsenticks optimieren
    ax.set_xticks(kilogramm)


# --- 2. Deine verschiedenen Preis-Funktionen ---
def tomatenPreis(kg):
    return kg * 2

def bioErdbeerPreis(kg):
    return kg * 4.5


# --- 3. Das Hauptprogramm (Erstellung der Subplots) ---

# Erstellt ein Fenster mit 1 Zeile und 2 Spalten (nebeneinander)
# fig = das Gesamtfenster, axes = ein Array mit den einzelnen Subplots (axes[0] und axes[1])
fig, axes = plt.subplots(1, 2, figsize=(14, 5))

# Ersten Subplot befüllen (Index 0)
createSubplot(
    ax=axes[0], 
    preis_funktion=tomatenPreis, 
    titel='Tomaten (Standard)', 
    farbe='red', 
    marker='o'
)

# Zweiten Subplot befüllen (Index 1)
createSubplot(
    ax=axes[1], 
    preis_funktion=bioErdbeerPreis, 
    titel='Bio-Erdbeeren (Premium)', 
    farbe='darkred', 
    marker='s', # Quadratischer Marker
    max_kg=8    # Eigene Reichweite für diesen Graphen
)

# Verhindert, dass sich die Beschriftungen der Achsen überschneiden
plt.tight_layout()

# Das fertige Fenster mit beiden Graphen anzeigen
plt.show()