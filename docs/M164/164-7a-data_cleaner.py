import csv
import os
from datetime import datetime

# Pfade
BASE_PATH = r'C:\Schule\wiss-docs\docs\M164\csv'
# Alle generierten Dateien einbeziehen
FILES = [
    'import_thema.csv', 'import_teilnehmer.csv', 'import_adresse.csv', 
    'import_spiel.csv', 'import_location.csv', 'import_team.csv', 
    'import_teammitglieder.csv', 'import_durchfuehrung.csv', 'import_ergebnis.csv'
]
LOG_MD = os.path.join(BASE_PATH, 'fehler_log.md')

def clean_data():
    all_errors = []
    seen_usernames = set()
    seen_emails = set()
    seen_teamnames = set()

    for filename in FILES:
        file_path = os.path.join(BASE_PATH, filename)
        clean_file_path = os.path.join(BASE_PATH, 'cleaned_' + filename)
        
        if not os.path.exists(file_path):
            continue

        cleaned_rows = []
        
        with open(file_path, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            fieldnames = reader.fieldnames
            
            for row in reader:
                is_valid = True
                error_msg = ""

                # --- VALIDIERUNG TEILNEHMER ---
                if filename == 'import_teilnehmer.csv':
                    uname = row['username']
                    email = row['email'].strip()
                    try:
                        alter_val = int(row['spieler_alter'])
                        if alter_val < 0 or alter_val > 120:
                            is_valid, error_msg = False, f"Alter ausserhalb Bereich: {row['spieler_alter']}"
                    except ValueError:
                        is_valid, error_msg = False, f"Alter ist keine Zahl: '{row['spieler_alter']}'"

                    if is_valid and (not email or "@" not in email):
                        is_valid, error_msg = False, f"E-Mail ungültig: '{email}'"
                    
                    if is_valid:
                        if uname in seen_usernames:
                            is_valid, error_msg = False, f"Duplikat Username: '{uname}'"
                        elif email in seen_emails:
                            is_valid, error_msg = False, f"Duplikat E-Mail: '{email}'"
                        else:
                            seen_usernames.add(uname)
                            seen_emails.add(email)

                # --- VALIDIERUNG SPIEL ---
                elif filename == 'import_spiel.csv':
                    try:
                        datetime.strptime(row['einfuehrungsdatum'], '%Y-%m-%d')
                    except:
                        is_valid, error_msg = False, f"Datumsfehler: {row['einfuehrungsdatum']}"
                    
                    if is_valid:
                        if row['infrastruktur_bedarf'] not in ['basic', 'normal', 'full']:
                            is_valid, error_msg = False, f"Enum-Fehler: {row['infrastruktur_bedarf']}"
                        try:
                            if float(row['kosten']) < 0: raise ValueError
                        except:
                            is_valid, error_msg = False, f"Kostenfehler: {row['kosten']}"

                # --- VALIDIERUNG TEAM ---
                elif filename == 'import_team.csv':
                    tname = row['teamname'].strip()
                    if not tname:
                        is_valid, error_msg = False, "Teamname ist leer."
                    elif tname in seen_teamnames:
                        is_valid, error_msg = False, f"Duplikat Teamname: '{tname}'"
                    else:
                        seen_teamnames.add(tname)

                # --- VALIDIERUNG ERGEBNIS (Logik: Entweder Team ODER Teilnehmer) ---
                elif filename == 'import_ergebnis.csv':
                    t_id = row['teilnehmer_id'].strip()
                    team_id = row['team_id'].strip()
                    if t_id and team_id:
                        is_valid, error_msg = False, "Beide IDs (Teilnehmer & Team) gesetzt - nur eine erlaubt."
                    elif not t_id and not team_id:
                        is_valid, error_msg = False, "Weder Teilnehmer noch Team ID gesetzt."

                # --- ALLGEMEINE VALIDIERUNG FÜR FREMDSCHLÜSSEL (Basic Check) ---
                # Prüft, ob Pflicht-ID-Felder nicht leer sind
                for key in row:
                    if (key.endswith('_id') or key == 'punktestand') and not row[key].strip() and is_valid:
                        # Ausnahme für ergebnis (bereits oben geprüft)
                        if filename == 'import_ergebnis.csv' and key in ['teilnehmer_id', 'team_id']:
                            continue
                        is_valid, error_msg = False, f"Pflichtfeld {key} ist leer."

                if is_valid:
                    cleaned_rows.append(row)
                else:
                    all_errors.append({
                        "Datei": filename,
                        "ID": list(row.values())[0],
                        "Fehler": error_msg
                    })

        # Bereinigte CSV schreiben
        with open(clean_file_path, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(cleaned_rows)

    return all_errors

def write_markdown_log(errors):
    with open(LOG_MD, 'w', encoding='utf-8') as f:
        f.write("# Fehlerprotokoll der Datenbereinigung\n\n")
        f.write("| Datei | Datensatz ID | Fehlerbeschreibung |\n")
        f.write("| --- | --- | --- |\n")
        for err in errors:
            f.write(f"| {err['Datei']} | {err['ID']} | {err['Fehler']} |\n")

# Start
errors = clean_data()
write_markdown_log(errors)
print(f"Bereinigung fertig. {len(errors)} Einträge im Fehler-Log dokumentiert.")