import csv
import random
import os
from datetime import datetime, timedelta

# Konfiguration
RECORD_COUNT = 100
CORRUPTION_CHANCE = 0.25 
BASE_PATH = r'C:\Schule\wiss-docs\docs\M164\csv'
os.makedirs(BASE_PATH, exist_ok=True)

TOPICS = ['Mathe', 'Physik', 'Sprache', 'Geographie', 'Informatik', 'Biologie', 'Geschichte']
STREETS = ['Bahnhofstrasse', 'Hauptstrasse', 'Schulweg', 'Postgasse', 'Rennweg', 'Lindenhof', 'Kirchgasse']
CITIES = ['Zürich', 'Bern', 'Basel', 'Luzern', 'Winterthur', 'St. Gallen', 'Lugano']

def create_csv(filename, fieldnames, data):
    full_path = os.path.join(BASE_PATH, filename)
    with open(full_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(data)
    print(f"Datei '{filename}' wurde erstellt mit {len(data)} Zeilen.")

# --- 1. THEMA ---
themen_data = [{"thema_id": i, "bezeichnung": t} for i, t in enumerate(TOPICS, 1)]
create_csv('import_thema.csv', ['thema_id', 'bezeichnung'], themen_data)

# --- 2. TEILNEHMER (Dein Code) ---
teilnehmer_data = []
for i in range(1, RECORD_COUNT + 1):
    corrupt = random.random() < CORRUPTION_CHANCE
    vorname = random.choice(['Max', 'Anna', 'Lukas', 'Sarah', 'Tim', 'Elena', 'Beat', 'Julia'])
    nachname = random.choice(['Müller', 'Schmid', 'Meier', 'Keller', 'Weber', 'Huber', 'Suter'])
    row = {
        "teilnehmer_id": i, "username": f"user_{i}", "vorname": vorname, "nachname": nachname,
        "spieler_alter": random.randint(5, 70), "email": f"{vorname.lower()}.{nachname.lower()}@edugames.ch",
        "telefon": f"07{random.randint(6,9)} {random.randint(100,999)} {random.randint(10,99)}"
    }
    if corrupt:
        error_type = random.choice(['missing_email', 'invalid_age', 'missing_name', 'duplicate_username'])
        if error_type == 'missing_email': row['email'] = ""
        if error_type == 'invalid_age': row['spieler_alter'] = random.choice([-10, 250, "unbekannt"])
        if error_type == 'missing_name': row['nachname'] = None
        if error_type == 'duplicate_username': row['username'] = "user_00"
    teilnehmer_data.append(row)
create_csv('import_teilnehmer.csv', ['teilnehmer_id', 'username', 'vorname', 'nachname', 'spieler_alter', 'email', 'telefon'], teilnehmer_data)

# --- 3. SPIEL (Dein Code) ---
spiele_data = []
for i in range(1, 41):
    corrupt = random.random() < CORRUPTION_CHANCE
    row = {
        "spiel_id": i, "name": f"Game {random.choice(['Quest', 'Adventure', 'Battle', 'Master'])} {i}",
        "beschreibung_de": "Spannendes Lernspiel.", "beschreibung_en": "Exciting educational game.",
        "infrastruktur_bedarf": random.choice(['basic', 'normal', 'full']),
        "teambildung_moeglich": random.choice([0, 1]), "kosten": round(random.uniform(10.0, 100.0), 2),
        "einfuehrungsdatum": (datetime.now() - timedelta(days=random.randint(0, 1000))).date(),
        "thema_id": random.randint(1, len(TOPICS))
    }
    if corrupt:
        error_type = random.choice(['invalid_enum', 'negative_cost', 'invalid_date', 'wrong_type'])
        if error_type == 'invalid_enum': row['infrastruktur_bedarf'] = "High-End-PC"
        if error_type == 'negative_cost': row['kosten'] = -50.00
        if error_type == 'invalid_date': row['einfuehrungsdatum'] = "00.00.2024"
        if error_type == 'wrong_type': row['kosten'] = "gratis"
    spiele_data.append(row)
create_csv('import_spiel.csv', ['spiel_id', 'name', 'beschreibung_de', 'beschreibung_en', 'infrastruktur_bedarf', 'teambildung_moeglich', 'kosten', 'einfuehrungsdatum', 'thema_id'], spiele_data)

# --- 4. ADRESSE (Dein Code) ---
adressen_data = []
for i in range(1, 21):
    row = {"adresse_id": i, "strasse": random.choice(STREETS), "hausnummer": str(random.randint(1, 100)),
           "plz": str(random.randint(1000, 9999)), "ort": random.choice(CITIES), "land": "Schweiz"}
    if random.random() < 0.1: row['plz'] = ""
    adressen_data.append(row)
create_csv('import_adresse.csv', ['adresse_id', 'strasse', 'hausnummer', 'plz', 'ort', 'land'], adressen_data)

# --- 5. LOCATION (Ergänzung) ---
location_data = []
for i in range(1, 11):
    location_data.append({
        "location_id": i, "name": f"Standort {random.choice(['Nord', 'Süd', 'Mitte'])} {i}",
        "infrastruktur_vorhanden": random.choice(['basic', 'normal', 'full']),
        "adresse_id": random.randint(1, 20)
    })
create_csv('import_location.csv', ['location_id', 'name', 'infrastruktur_vorhanden', 'adresse_id'], location_data)

# --- 6. TEAM (Ergänzung) ---
team_data = [{"team_id": i, "teamname": f"Team_{i}"} for i in range(1, 11)]
create_csv('import_team.csv', ['team_id', 'teamname'], team_data)

# --- 7. TEAMMITGLIEDER (Ergänzung) ---
# Jeder Teilnehmer aus den ersten 30 wird zufällig einem Team zugewiesen
tm_data = [{"team_id": random.randint(1, 10), "teilnehmer_id": i} for i in range(1, 31)]
create_csv('import_teammitglieder.csv', ['team_id', 'teilnehmer_id'], tm_data)

# --- 8. DURCHFUEHRUNG (Ergänzung) ---
durch_data = []
for i in range(1, 21):
    durch_data.append({
        "durchfuehrung_id": i, "datum": (datetime.now() + timedelta(days=i)).date(),
        "spiel_id": random.randint(1, 40), "location_id": random.randint(1, 10)
    })
create_csv('import_durchfuehrung.csv', ['durchfuehrung_id', 'datum', 'spiel_id', 'location_id'], durch_data)

# --- 9. ERGEBNIS (Ergänzung) ---
ergebnis_data = []
for i in range(1, 51):
    is_team = random.choice([True, False])
    ergebnis_data.append({
        "ergebnis_id": i, "punktestand": random.randint(0, 1000), "durchfuehrung_id": random.randint(1, 20),
        "teilnehmer_id": random.randint(1, 100) if not is_team else "", # Leer für Team-Spiel
        "team_id": random.randint(1, 10) if is_team else ""            # Leer für Einzel-Spiel
    })
create_csv('import_ergebnis.csv', ['ergebnis_id', 'punktestand', 'durchfuehrung_id', 'teilnehmer_id', 'team_id'], ergebnis_data)