# Modul 122 - Abläufe mit einer Skriptsprache automatisieren (Bash-Programmierung)

> Befehl um gesamten Script Ordner zur VM hochladen:
> scp -r "C:/Schule/wiss-docs/docs/M122/scripts" student@10.159.191.251:/home/student/

> Zum Bash Skripte ausführen:
> chmod +x script_name.sh

## 122-2A SideQuest:

1. Finde heraus, wie dein Arbeitsverzeichnis unmittelbar nach der Anmeldung heisst.

2. Erstelle im aktuellen Arbeitsverzeichnis nachfolgende Unterverzeichnisse:
   "privat", "skripts" und "diverses".
   Mit welchem Befehl kontrollierst du, ob die Verzeichnisse tatsächlich erstellt wurden? Aus der Liste muss ersichtlich sein, dass die gesuchten "Objekte" Verzeichnisse sind.

3. Wechsle in das Verzeichnis "privat" und erstelle eine neue leere Datei "meinedatei" mit dem Befehl touch meinedatei.
   </br>[2A-3.sh](./scripts/2A-3.sh)
   </br>A) Welche Berechtigungen hast du als Besitzer dieser Datei?
   </br>B) Welche Gruppe darf mit dieser Datei arbeiten?
   </br>C) Was dürfen die Mitglieder dieser Gruppe damit anfangen?
   </br>D) Welche Berechtigung haben alle anderen Leute?

4. Führe die Arbeiten unbedingt in der vorgegebenen Reihenfolge aus:
   </br>[2A-6.sh](./scripts/2A-6.sh)
   </br>A) Erstelle in deinem Verzeichnis 2 Unterverzeichnisse "quelle" und "ziel".
   </br>B) Erstelle im "quelle" 5 leere Dateien "doku1", "doku2", "doku3", "doku4" und "doku5".
   </br>C) Lösche nun die Dateien "doku1" und "doku2".
   </br>D) Lösche die Datei "doku3". Die von dir ausgewählte Befehlszeile soll diesmal interaktiv, vor der Löschung einer Datei nach einer Bestätigung verlangen. Tipp: Manpages!
   </br>E) Nenne "doku4" und "doku5" in "dokument4" und "dokument5" um.
   </br>F) Verschiebe die Dateien "dokument4" und "dokument5" ins Verzeichnis "ziel".

5. Dateien suchen und finden
   </br>[2A-7.sh](./scripts/2A-7.sh)
   </br>A) Wo befindet sich die Datei mit dem Namen unseres Computers? Je nach Distribution heisst sie HOSTNAME oder hostname
   Um Fehlermeldungen zu vermeiden (keine Berechtigungen als student1 bestimmte Verzeichnisse durchzusuchen), füge am Schluss Ihrer Befehlszeile an:

```bash
$ Ihre Befehlszeile 2>/dev/null
```

</br>B) Liste alle Dateien auf, die mit dem Begriff ssh anfangen.
</br>C) Finde heraus, welche Dateien im /home/student1 heute geändert wurden.
</br>D) Finde heraus, ob andere Shells als die Bash auf deinem System installiert sind. Nenne mindestens 4 davon. Verwende den Befehl find und danach die manpages, um dich zu vergewissern, dass die aufgelisteten Dateien wirklich Shells sind.

## 122-2B SideQuest:

### 1. Inhalt einer Datei betrachten

Es gibt drei wichtige Befehle, je nachdem wie groß die Datei ist:

- `cat dateiname`: Zeigt den kompletten Inhalt sofort an (gut für kurze Dateien).
- `less dateiname`: Öffnet die Datei in einer Ansicht, in der du mit den Pfeiltasten scrollen kannst (beenden mit der Taste Q).
- `head -n 10 dateiname`: Zeigt nur die ersten 10 Zeilen an.

### 2. Inhalt einer Datei bearbeiten

In der Konsole nutzt man dafür Texteditoren. Der einfachste für den Einstieg ist Nano:

- Befehl: `nano dateiname`
- Speichern: `Strg + O`, dann `Enter`.
- Beenden: `Strg + X`.

### 3. Begriff in einer Datei suchen

Dafür nutzt man das mächtige Werkzeug `grep`:

- Befehl: `grep "Suchbegriff" dateiname`
- Tipp: Wenn du wissen willst, in welcher Zeile der Begriff steht, nutze `grep -n "Suchbegriff" dateiname`.

### 4. Die Kommandos `ps`, `top` und `kill`

Diese Befehle dienen dazu, laufende Programme (Prozesse) zu überwachen und zu steuern.
| Befehl | Erklärung |
| ------ | --------------------------------------------------------------------------------------------------------------------------------------- |
| ps | Zeigt eine Momentaufnahme der aktuell laufenden Prozesse an. Mit `ps aux` siehst du alle Prozesse aller Benutzer. |
| top | Öffnet eine Live-Ansicht (wie der Windows Task-Manager). Du siehst, welches Programm wie viel CPU oder RAM verbraucht. (Beenden mit Q). |
| kill | Beendet einen Prozess. Du musst die Prozess-ID (PID) angeben, die du bei `ps` oder `top` findest. Beispiel: `kill 1234`. |

## 122-4A SideQuest:

## 2. quadrat.sh

```bash
$ ./4A/quadrat.sh 
Von welcher Zahl möchtest du das Quadrat errechnen?
12
12 hoch 2 = 144
```

### 3. systeminfo.sh

```bash
$ ./4A/systeminfo.sh
Name des Computers: Matteo-Lenovo
Heimverzeichnis: /c/Users/matte
Aktuelles Verzeichnis: /c/Schule/wiss-docs/docs/M122/scripts
Benutzername: matte
```

### 4. quadrat2.sh

```bash
$ ./4A/quadrat2.sh
 hoch 2 = 0

$ ./4A/quadrat2.sh 12
12 hoch 2 = 144

$ ./4A/quadrat2.sh 12 4
12 hoch 2 = 144
```

## 5. quadrat3.sh

```bash
$ ./4A/quadrat3.sh
Von welcher Zahl möchtest du das Quadrat errechnen?
14
14 hoch 2 = 196

$ ./4A/quadrat3.sh 3
3 hoch 2 = 9
```