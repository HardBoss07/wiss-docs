import math
from datetime import time

# ==========
# 2026-02-20
# ==========

print("IFZ-Klasse")
print("Wie lautet ihr Code?")
print(2 + 3)

ist_wahr = True
ist_falsch = False
print(ist_wahr)
print(ist_falsch)

numbs = [5, -1, 3, 6, 0, -4, 0]
print(numbs)
print(sorted(numbs))
print(sum(numbs))

# Pythagoras
a = 3
b = 4
c = math.sqrt(math.pow(a, 2) + math.pow(b, 2))
print("Mit a =", a, ", und b =", b, ", ist c =", c)

# Taxifahr berechnen
km = 15
tarif = 2.1
grundTarif = 4.8

if km >= 5:
    tarif = 1.9

preis = km * tarif + grundTarif
print("Totalkosten A:", preis)

# ==========
# 2026-02-27
# ==========

# Komplexe Taxifahr berechnen
km = 15
grund_tarif = 4.8

aktuelle_zeit = time(12, 30) 
start_zeit = time(11, 30)
end_zeit = time(14, 0)

if start_zeit <= aktuelle_zeit <= end_zeit:
    tarif = 2.9
    print("Mittagstarif aktiv")
else:
    tarif = 2.1
    print("Normaltarif aktiv")

preis = km * tarif + grund_tarif
print("Totalkosten B:", preis)

# Wiederholungen
fluggesellschaft = "Bingoair"
print("Die " + fluggesellschaft + ", ist erst seit 3 Jahren im Einsatz. " + fluggesellschaft + ", verfügt über 25 Maschinen des Typus A320." + fluggesellschaft + ", ist hauptsächlich im Charterbereich tätig")

# Booleans & Vergleiche

zahl = 20
print(10 <= zahl <= 20)

# Methoden

def hypo(a,b):
    return (a**2 + b**2)**0.5 # **0.5 = math.sqrt()
print(hypo(12, 24))

# Pizzabestellung
bestellungen = [
    ("Meier", 1),
    ("Rossi", 2),
    ("Hansen", 5),
    ("Dupont", 2),
    ("Gonzales", 1),
    ("Hürlimann", 4)
]

preis_einzel = 14
preis_rabatt = 12.75

print("--- Abrechnung Pizzaservice ---")

# Loop über die Bestellungen
for name, anzahl in bestellungen:
    # Logik für den Rabatt
    if anzahl >= 3:
        total = anzahl * preis_rabatt
    else:
        total = anzahl * preis_einzel
    
    # Ausgabe pro Person (auf 2 Dezimalstellen gerundet)
    print(f"{name:10} | Anzahl: {anzahl:2} | Total: {total:>6.2f} CHF")

# ==========
# 2026-03-06
# ==========

p_einzel = 14
p_rabatt = 12.75

# print("Wie viele Pizzen möchten Sie bestellen?")
# anzahl = int(input())
# if anzahl >= 3:
#     total = anzahl * p_rabatt
# else:
#     total = anzahl * p_einzel
# print(f"Der Totalpreis beträgt: {total:.2f} CHF")

# ==========
# 2026-03-20
# ==========

a = {1, 2, 3, 4}
b = {3, 4, 5, 6}

# Schnittmenge
print(a & b)

# Vereinsmenge
ergebnis = a | b

print(ergebnis)
# 
# first  = {2,4,6,8}
# second = {6,7,8,9}
# third  = {8,9,10}
# 
# ergebnis2 = first | second | third
# 
# print(ergebnis2)
 
# Differenzmenge
print(a - b)

# ==========
# 2026-04-10
# ==========

A = {3, 5, 7, 12, 14, 17, 19, 23}
B = {3, 5, 17}
C = {12, 14, 17, 24}
D = {5, 7, 19}
E = {7, 12, 19}

# Teilmenge (c_ | <=): Y beinhaltet alle Elemente von X oder beide sind identisch.
# Echte Teilmenge (c | <): Y beinhaltet alle Elemente von X, ist aber nicht identisch mit X. (X ist also "echt kleiner" als Y)

# B ist echte Teilmenge von A (B < A)
resA = B < A    # True

# C ist Teilmenge von A (C <= A)
resB = C <= A   # False

# E ist echte Teilmenge von A (E < A)
resC = E < A    # True

# B ist echte Teilmenge von C (B < C)
resD = B < C    # False

# E ist echte Teilmenge von C (E < C)
resE = E < C    # False

# Ausgabe der Ergebnisse
print(f"{resA=}, {resB=}, {resC=}, {resD=}, {resE=}")

# Kurze Übersicht der Python-Operatoren:
# `|` (Pipe): Vereinigung
# `&` (Ampersand): Schnittmenge
# `-` (Minus): Differenz
# `^` (Caret): Symmetrische Differenz

A = {1,2,3}
B = {2,3,4}

# Vereinungsmenge von A & B
res1 = A | B

# Schnittmenge von A & B
res2 = A & B

# Differenz von A & B
res3 = A - B

# Symmetrische Differenz
res4 = A ^ B

print(f"{res1=}, {res2=}, {res3=}, {res4=}")