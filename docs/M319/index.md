# Modul 319

## 2026-02-18 Notizen:

Zeilen immer mit ';' beenden;

| Keyword  | Beschreibung                                     | Beispielwert                       |
| -------- | ------------------------------------------------ | ---------------------------------- |
| int      | Ganzzahl                                         | int i = 15;                        |
| double   | Gleitkommazahl                                   | double = 12.5;                     |
| boolean  | Wahr oder Falsch                                 | boolean b = true;                  |
| String   | Zeichenkette                                     | String text = "Hello World";       |
| void     | Methode ohne Rückgabewert                        | void Methode() {}                  |
| public   | Macht eine Methode von überall ausführbar        | public void Methode2() {}          |
| static   | Methode muss nicht einer Klasse zugehören        | static void Mehtode3() {}          |
| main     | Einstiegspunkt in das Programm                   | static void main(String[] args) {} |
| class    | Benutzt man zum eine neue Klasse definieren      | public class HelloWorld {}         |
| if       | Abfragen ob ein Wert ein gewisses Kriterium hat  | if (a <= 100) {}                   |
| else     | Wird ausgeführt wenn Kriterium nicht erfüllt ist | else {}                            |
| for      | Macht einen for Loop über definierten Iterator   | for (int i = 0; i <= 5; i++)       |
| String[] | Einen Array von Strings (Zeichenketten)          | String[] a = {"1", "2"};           |

[Link zur Skriptdatei 1](/projects/workspace/m319/src/main/java/m319/HelloWorld.java)
[Link zur Skriptdatei 2](/projects/workspace/m319/src/main/java/m319/PrintNames.java)

## 2026-02-25 Notizen:

### Aufgabe 1:

a) 
Mit diesem System kann man die bereits eingeführe Version der Addition nicht ausführen, da es 2 Werte für 0 gibt (+0 und -0). Deshalb ist es schlecht.

b)
| Binär | Dezimal |
| ----- | ------- |
| 000   | 0       |
| 001   | 1       |
| 010   | 2       |
| 011   | 3       |
| 100   | -4      |
| 101   | -3      |
| 110   | -2      |
| 111   | -1      |

c) 
A - B = A + (Zweierkomplement von B)

**Zum Zweierkomplement erstellen:**
1. Positive Zahl invertieren (alle 0 werden 1 und alle 1 werden 0)
2. 1 addieren

1. B Invertieren (0 <-> 1)
2. +1 Addieren (ergibt -B)
3. Mit A addieren
4. Übertrag ausserhalb der Bitlänge verferwen

