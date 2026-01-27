1. **Dateiendung**: Vergiss `.sh` nicht.
2. **Berechtigungen**: `chmod +x` ist immer der erste Schritt.
3. **Anführungszeichen**: Nutze `"$VARIABLE"`, um Probleme mit Leerzeichen in Pfaden zu vermeiden.
4. **Shebang**: `#!/bin/bash` muss in der allerersten Zeile stehen.

### 1.1 Verzeichnisstruktur & Navigation

- `/etc`: Systemkonfiguration (z.B. `/etc/services`, `/etc/passwd`).
- `/home/student`: Dein Arbeitsverzeichnis (`~`).
- `$PATH`: Verzeichnisse, in denen die Shell nach Befehlen sucht.
- `$USER`: Aktueller Benutzername.
- `history`: Zeigt die letzten Befehle an (mit `!Nummer` wiederholen).
- `Tab-Taste`: Autovervollständigung für Pfade und Befehle.
- `/` : Root-Verzeichnis (Wurzel).
- `/home` : Benutzerverzeichnisse.
- `~` : Kürzel für das Home-Verzeichnis des aktuellen Users.
- `.` : Aktuelles Verzeichnis; `..` : Übergeordnetes Verzeichnis.

| Befehl     | Beschreibung                                           | Beispiel               |
| ---------- | ------------------------------------------------------ | ---------------------- |
| `pwd`      | Zeigt aktuelles Verzeichnis an                         | `pwd`                  |
| `ls -la`   | Listet alle Dateien (auch versteckte) mit Details      | `ls -l /etc`           |
| `cd`       | Verzeichnis wechseln                                   | `cd ~/scripts`         |
| `mkdir -p` | Erstellt Ordner (und Elternordner falls nötig)         | `mkdir -p backup/2026` |
| `touch`    | Erstellt leere Datei                                   | `touch meinedatei`     |
| `rm -rf`   | Löscht Dateien/Ordner (Vorsicht: rekursiv & erzwingen) | `rm -f temp.txt`       |
| `cp / mv`  | Kopieren / Verschieben (oder Umbenennen)               | `mv alt.sh neu.sh`     |

- ### 2.1 Umleitungen & Pipes

- `>` : Leitet Ausgabe in Datei um (überschreibt).
- `>>` : Hängt Ausgabe an Datei an.
- `|` (Pipe) : Übergibt die Ausgabe von Befehl A als Eingabe an Befehl B.
- `2>/dev/null` : Unterdrückt Fehlermeldungen (leitet sie ins "Nichts").
- `&> file`: Sowohl Standardausgabe als auch Fehler in eine Datei leiten.

### 2.2 Die "Power-Tools" (grep, sort, cut)

- **grep**: Filtert Zeilen.
- `grep "^#"`: Zeilen, die mit # beginnen.
- `grep -i`: Ignoriert Gross-/Kleinschreibung.

- **cut**: Schneidet Spalten aus.
- `cut -d ':' -f 1`: Trenner ist `:`, nimm das 1. Feld.

- **sort**:
- `sort -n`: Numerisch.
- `sort -r`: Rückwärts.

- **uniq -c**: Zählt doppelte Zeilen (vorher sortieren!).

### 1. Optionen für `read` und `echo` (Interaktion)

Diese Parameter verändern, wie der Befehl mit dem Benutzer kommuniziert.

| Befehl    | Bedeutung                                                   | Praxis-Beispiel              |
| --------- | ----------------------------------------------------------- | ---------------------------- |
| `read -p` | **Prompt**: Zeigt einen Text direkt vor der Eingabe an.     | `read -p "Name: " USER`      |
| `read -r` | **Raw**: Backslashes werden nicht interpretiert (Standard). | `read -r PFAD`               |
| `read -s` | **Silent**: Eingabe ist unsichtbar (für Passwörter).        | `read -s PASS`               |
| `echo -e` | **Enable**: Aktiviert Steuerzeichen wie `\n` oder `\t`.     | `echo -e "Zeile 1\nZeile 2"` |
| `echo -n` | **No Newline**: Kein Zeilenumbruch am Ende.                 | `echo -n "Warten..."`        |

### 2.3 Fehlersuche

- `bash -x script.sh`: Debug-Modus (zeigt jeden Schritt der Ausführung an).
- `exit 1`: Skript mit Fehlerstatus beenden (0 = OK).

## 3: Ablaufsteuerung & Operatoren

### 3.1 Datei-Tests (Essentiell)

| Parameter       | Bedeutung                                                           | Logik im Skript                   |
| --------------- | ------------------------------------------------------------------- | --------------------------------- |
| `[ -e $DATEI ]` | **Exists**: Prüft, ob die Datei oder das Verzeichnis existiert.     | `if [ -e "$FILE" ]; then...`      |
| `[ -f $DATEI ]` | **File**: Prüft, ob es eine _reguläre Datei_ ist (kein Ordner).     | `if [ -f "skript.sh" ]; then...`  |
| `[ -d $DATEI ]` | **Directory**: Prüft, ob es ein _Verzeichnis_ (Ordner) ist.         | `if [ -d "/etc" ]; then...`       |
| `[ -r $DATEI ]` | **Readable**: Prüft, ob du _Leserechte_ hast.                       | `if [ -r "geheim.txt" ]; then...` |
| `[ -w $DATEI ]` | **Writable**: Prüft, ob du _Schreibrechte_ hast.                    | `if [ -w "log.txt" ]; then...`    |
| `[ -x $DATEI ]` | **Executable**: Prüft, ob die Datei _ausführbar_ ist.               | `if [ -x "run.sh" ]; then...`     |
| `[ -s $DATEI ]` | **Size**: Prüft, ob die Datei _größer als 0 Byte_ ist (nicht leer). | `if [ -s "daten.csv" ]; then...`  |

### 3.2 Vergleichsoperatoren

- **Zahlen**: `-eq` (gleich), `-ne` (ungleich), `-gt` (>), `-lt` (<), `-ge` (>=), `-le` (<=).
- **Strings**: `==` (gleich), `!=` (ungleich), `-z` (String ist leer).
- **Dateien**: `-e` (existiert), `-f` (ist Datei), `-d` (ist Ordner).

### 3.3 Das Menü (`select` oder `case`)

```bash
read -p "Wahl: " WAHL
case $WAHL in
    1) ./backup.sh ;;
    q|Q) exit 0 ;;
    *) echo "Ungültig" ;;
esac
```

## 4: Automatisierung & Zeitsteuerung

### 4.1 Crontab-Syntax

Editor öffnen mit `crontab -e`. Format: `Min Std Tag Mon Wochentag Befehl`.

- `0 3 * * * /path/script.sh` : Täglich um 03:00 Uhr.
- `*`: Jedes (Minute, Stunde...).
- `*/15`: Alle 15 (z.B. Minuten).
- `1-5`: Wochentage (Mo-Fr).
- **Wichtig**: Cron kennt dein `$PATH` nicht. Nutze immer absolute Pfade: `/home/student/skript.sh`.

### 4.2 Prozess-Management

- `top`: Live-Ansicht der CPU/RAM Last.
- `ps -ef | grep bash`: Findet die Prozess-ID (PID) deines Skripts.
- `kill -9 PID`: Schiesst den Prozess sofort ab.
- `df -h`: Zeigt freien Festplattenspeicher (menschlich lesbar).

### 4.3 Wichtige Skript-Muster (aus deinen Files)

- **Lock-Datei (5B.sh)**: Verhindert Mehrfachausführung.
  `if [ -e /tmp/lock ]; then exit 1; else touch /tmp/lock; fi`
- **Header-Extraktion (6A.sh)**:
  `grep "^# Beschreibung:" "$FILE" | cut -d ':' -f 2-`
- **Automatisches Sortieren (7A.sh)**:
  `datum=$(stat -c %y "$file" | cut -f1 -d ' ')` -> Erstellt Ordner basierend auf Dateidatum.

## 5: Das "Alles-in-Einem" Beispiel-Skript

```bash
#!/bin/bash
# Programm:         allesfürprüfung.sh
# Beschreibung:     DETAILLIERTE_BESCHREIBUNG
# Aufruf:           ./allesfürprüfung.sh [PARAMETER]
# Optionen:         -
# Parameter:        $1: ...
# Autor:            Matteo Bosshard
# Version:          0.1.0
# Datum:            2026-01-27
# Aenderung:        Ersterstellung
# Aenderungsdatum:  2026-01-27

# 1. Parameterprüfung
if [ $# -lt 1 ]; then
    echo "Fehler: Mindestens 1 Ordnername als Parameter angeben!"
    exit 1
fi

ORDNER=$1
LOG="check.log"

# 2. Verzeichnisprüfung & Erstellung (mkdir -p)
if [ ! -d "$ORDNER" ]; then
    echo "Ordner existiert nicht. Erstelle $ORDNER..."
    mkdir -p "$ORDNER"
fi

# 3. Schleife über Dateien und Rechnen (For-Loop & Mathe)
echo "Analysiere Dateien in $ORDNER..."
ZAEHLER=0

for DATEI in "$ORDNER"/*; do
    if [ -f "$DATEI" ]; then
        # Dateigrösse in KB extrahieren (mit awk/cut)
        GROESSE=$(du -k "$DATEI" | cut -f1)

        if [ $GROESSE -gt 10 ]; then
            echo "$(date): $DATEI ist gross ($GROESSE KB)" >> $LOG
        fi
        ZAEHLER=$((ZAEHLER + 1))
    fi
done

# 4. Benutzereingabe & Case (Interaktion)
echo "Es wurden $ZAEHLER Dateien gefunden."
read -p "Soll das Log angezeigt werden? (j/n): " ANTWORT

case $ANTWORT in
    j|J|y|Y)
        cat $LOG | sort -r | less
        ;;
    *)
        echo "Skript beendet."
        ;;
esac

exit 0
```

## 6: Programmablaufplan (PAP) & Logik

In der Prüfung musst du oft Symbole zuordnen:

- **Oval/Abgerundet**: Start / Ende des Programms.
- **Rechteck**: Prozess / Verarbeitung (z.B. `Zahl = Zahl + 1`).
- **Raute**: Entscheidung / Bedingung (`if` - hat immer zwei Ausgänge: Ja/Nein).
- **Parallelogramm**: Ein- und Ausgabe (`read` oder `echo`).

**Logische Verknüpfungen in `[ ]`:**

- `-a`: UND (beide müssen wahr sein).
- `-o`: ODER (eines muss wahr sein).
- `!`: NICHT (kehrt die Bedingung um).

![PAP1](./PAP/pap1.png){width=50%}
![PAP2](./PAP/pap2.png){width=50%}
![PAP3](./PAP/pap3.png){width=50%}
![PAP4](./PAP/pap4.png){width=50%}
