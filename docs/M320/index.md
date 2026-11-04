# Modul 320 - Objektorientiert programmieren

# Prüfung: Modul 1 bis 5 - Objektorientierte Programmierung mit Java

### Frage 1 (2 Punkte)

Welche Aussage ist richtig?  
_Wählen Sie höchstens 4 Optionen aus._

- [x] Ein Objekt ist eine Instanz einer Klasse
- [x] Eine Klasse beschreibt Zustand und Verhalten; daraus können mehrere Objekte mit eigenem Zustand entstehen.
- [ ] Eine Referenzvariable speichert stets eine unabhängige Kopie aller Objektfelder.
- [ ] Zwei Objekte derselben Klasse müssen immer die gleichen Attribute aufweisen

### Frage 2 (2 Punkte)

Welche Aussage ist richtig?  
_Wählen Sie höchstens 4 Optionen aus._

- [x] Die Datei der öffentlichen Klasse muss Fighter.java heissen.
- [ ] maxHealth ist nach UpperCamelCase benannt.
- [x] package ordnet die Klasse einem Package zu; import kann einen Typ aus einem anderen Package unter seinem kurzen Namen bekannt machen.
- [ ] Produktionsklassen liegen in Maven üblicherweise unter src/test/java.

### Frage 3 (2 Punkte)

Im Modell ist `Warrior` eine Kämpferart. Ein Kämpfer verwendet ein Angriffsobjekt für seine Angriffe. Welche Aussagen passen?  
_Wählen Sie höchstens 4 Optionen aus._

- [ ] Ein Angriffsobjekt ist deshalb eine Unterklasse von Fighter
- [x] Warrior zu Fighter ist eine Ist-ein-Beziehung.
- [ ] Jede Hat-ein-Beziehung muss mit extends umgesetzt werden.
- [x] Die Zusammenarbeit zwischen Kämpfer und Angriffsobjekt kann durch Komposition modelliert werden.

### Frage 4 (2 Punkte)

Ordne einen vollständigen Red-Green-Refactor-Zyklus. Beginne mit dem Test für ein noch fehlendes Verhalten.

1. Einen fehlschlagenden Test für das noch fehlende Verhalten schreiben (Red)
2. Den minimalen Produktionscode schreiben, bis der Test besteht (Green)
3. Den Code aufräumen und strukturieren, ohne das Verhalten zu ändern (Refactor)

### Frage 5 (2 Punkte)

Welches Java-Schlüsselwort fehlt? Gib nur das Schlüsselwort ein.

```java
package ch.wiss.arena.domain;

public class Fighter {

  private int maxHealth;

  public Fighter(int maxHealth) {
    this.maxHealth = maxHealth;
  }
}
```

**Antwort:** `this`

### Frage 6 (2 Punkte)

Welches Java-Schlüsselwort fehlt? Gib nur das Schlüsselwort ein.

```java
interface AttackStrategy {
  void performOn(Fighter target);
}

class TrainingAttack implements AttackStrategy {

  @Override
  public void performOn(Fighter target) {}
}
```

**Antwort:** `implements`

### Frage 7 (2 Punkte)

```java
abstract class Fighter {

  private final String name;

  public Fighter(String name) {
    this.name = name;
  }

  public String name() {
    return name;
  }
}

class Warrior extends Fighter {

  Warrior(String name) {
    super(name);
  }
}
```

Welche Aussagen sind richtig?

_Wählen Sie höchstens 4 Optionen aus._

- [ ] new Fighter("Aria") ist erlaubt, weil die Klasse Fighter einen öffentlichen Konstruktor besitzt.
- [x] super(name) ruft den Konstruktor der direkten Basisklasse auf.
- [ ] Warrior kann in einer eigenen Methode direkt this.name lesen weil Warrior eine Unterklasse von Fighter ist.
- [x] Fighter f = new Warrior("Aria") ist eine zulässige Deklaration mit Initialisierung.

### Frage 8 (2 Punkte)

`Attack`, `MagicAttack` und `TrainingAttack` implementieren `AttackStrategy`. `Fighter` speichert eine über den Konstruktor erhaltene `AttackStrategy` und ruft nur deren `performOn(...)` auf. Welche Aussagen sind richtig?

_Wählen Sie höchstens 4 Optionen aus._

- [x] Ein MagicAttack-Objekt kann an diesen Konstruktor übergeben werden.
- [x] Fighter benötigt für die Delegation keine Kenntnis der privaten Felder der Implementierung.
- [ ] Neue Implementierungen erfordern immer eine Änderung von Fighter.attack(...).
- [x] Innerhalb der Methode performOn(...) könnte man mit instanceof feststellen, ob die Klasse TrainingAttack übergeben wurde.

### Frage 9 (2 Punkte)

Ordne die ausdrücklich aufeinander aufbauenden Schritte. Beginne mit der Analyse der vorhandenen Zusammenarbeit.

1. Feststellen, dass Fighter von Attack nur performOn(Fighter target) benötigt.
2. Das Interface AttackStrategy mit genau diesem Methodenvertrag deklarieren.
3. Die bestehende Klasse Attack dieses nun vorhandene Interface implementieren lassen.
4. Feld und Konstruktorparameter von Fighter auf AttackStrategy umstellen; danach die bestehenden Verhaltenstests ausführen.

### Frage 10 (2 Punkte)

Welche einzelne Zeile wird ausgegeben? Die Ausgabe enthält keine Leerzeichen.

```java
class Counter {

  int value;

  Counter(int value) {
    this.value = value;
  }
}

// Anweisungen in einer passenden Methode:
Counter a = new Counter(10);

Counter b = a;

Counter c = new Counter(10);

b.value = 4;

System.out.println((a == b) + ":" + (a == c) + ":" + c.value);
```

**Antwort:** `true:false:10`

### Frage 11 (2 Punkte)

Welcher Text wird ausgegeben?

```java
abstract class Fighter {

  public String role() {
    return "Fighter";
  }
}

class Mage extends Fighter {

  @Override
  public String role() {
    return "Mage";
  }

  public String role(String language) {
    return "Magier";
  }
}

// Anweisungen in einer passenden Methode:
Fighter fighter = new Mage();

System.out.println(fighter.role());
```

**Antwort:** `Mage`

### Frage 12 (2 Punkte)

`Fighter` beginnt mit 100 Lebenspunkten. Schaden muss bei 0 begrenzt werden. Die aktuelle Implementierung und der Test ist unten aufgeführt. Welche Änderung erfüllt die Regel und die ursprüngliche Testabsicht?

- [ ] Im Test 0 durch -30 ersetzen.
- [x] Die Schadenszuweisung durch health = Math.max(0, health - damage); ersetzen.
- [ ] Den Schadenswert im Test auf 100 reduzieren und die Implementierung unverändert lassen.
- [ ] Im Test assertEquals(fighter.currentHealth(), fighter.currentHealth()); verwenden.

### Frage 13 (2 Punkte)

Welche Aussage ist richtig?

- [ ] Die Ausgabe ist Magier, weil jede gleichnamige Methode aufgerufen werden kann.
- [ ] Der Code kompiliert nicht, weil Methoden nicht überladen werden dürfen.
- [ ] Der Compiler ergänzt automatisch ein Argument für language.
- [x] Die Ausgabe ist Fighter; die andere Parameterliste bewirkt keine Überschreibung von role().

### Frage 14 (2 Punkte)

```java
class Arena {

  private final List<Fighter> participants = new ArrayList<>();

  public void addParticipant(Fighter f) {
    participants.add(f);
  }

  public List<Fighter> participants() {
    return List.copyOf(participants);
  }
}

Arena arena = new Arena();

Fighter aria = new Fighter("Aria", 100);

arena.addParticipant(aria);

List<Fighter> saved = arena.participants();

arena.addParticipant(new Fighter("Borin", 100));

saved.get(0).takeDamage(20);
```

Welche Aussagen sind danach richtig?

_Wählen Sie höchstens 4 Optionen aus._

- [ ] saved.size() ist 2.
- [ ] Das final-Feld verhindert jedes Hinzufügen zur internen Liste.
- [x] saved.size() ist 1.
- [ ] aria.currentHealth() bleibt 100, weil die Kämpferobjekte der Liste saved kopiert wurden.

### Frage 15 (2 Punkte)

Mehrere Kämpferarten teilen Namen, Lebenspunkte und validierte Schadensverarbeitung. Angriffsarten benötigen einen gemeinsamen Vertrag, aber keinen gemeinsamen Objektzustand. Rüstung soll unabhängig von der Kämpferart wählbar sein. Welche Entscheidungen passen?

_Wählen Sie höchstens 3 Optionen aus._

- [x] Gemeinsamen Kämpferzustand und Grundverhalten in einer abstrakten Klasse Fighter bündeln.
- [x] Für jede Kombination aus Kämpferart, Angriff und Rüstung keine eigene Unterklasse verlangen.
- [x] Angriff über ein Interface und Rüstung als zusammenarbeitendes Objekt modellieren.

### Frage 16 (2 Punkte)

Ein neuer konkreter `Fighter` beginnt mit den angegebenen Lebenspunkten. `takeDamage(20)` zieht 20 ab. Die unten aufgeführte Vorbereitung steht fest.

```java
Fighter first = new Fighter("Aria", 100);

Fighter second = new Fighter("Borin", 80);

Fighter selected;
```

Ordne alle Zeilen: zuerst den unveränderten Zustand von `first` über `selected` prüfen, danach `second` über `selected` verändern und das Ergebnis prüfen.

1. `selected = first;`
2. `assertEquals(100, selected.currentHealth());`
3. `selected = second;`
4. `selected.takeDamage(20);`
5. `assertEquals(60, second.currentHealth());`

### Frage 17 (2 Punkte)

Welche einzelne Zeile wird ausgegeben? Die Ausgabe enthält keine Leerzeichen.

```java
class Fighter {

  private final int maxHealth;
  private int health;

  Fighter(int maxHealth) {
    this.maxHealth = maxHealth;
    health = maxHealth;
  }

  void takeDamage(int damage) {
    if (damage < 0) throw new IllegalArgumentException();
    health = Math.max(0, health - damage);
  }

  void heal(int amount) {
    if (amount < 0) throw new IllegalArgumentException();
    health = Math.min(maxHealth, health + amount);
  }

  int currentHealth() {
    return health;
  }
}

// Anweisungen in einer passenden Methode:
Fighter a = new Fighter(100);

Fighter b = a;

a.takeDamage(70);

b.heal(90);

a.takeDamage(130);

System.out.println(a.currentHealth() + ":" + b.currentHealth());
```

**Antwort:** `0:0`

### Frage 18 (2 Punkte)

Welche einzelne Zeile wird ausgegeben? Die Ausgabe enthält keine Leerzeichen.

```java
class Fighter {

  private int health = 100;

  public void takeDamage(int damage) {
    health = Math.max(0, health - damage);
  }

  public int currentHealth() {
    return health;
  }
}

interface AttackStrategy {
  void performOn(Fighter target);
}

class WeaponAttack implements AttackStrategy {

  public void performOn(Fighter target) {
    target.takeDamage(20);
  }
}

class MagicAttack implements AttackStrategy {

  public void performOn(Fighter target) {
    target.takeDamage(15 + 10);
  }
}

// Anweisungen in einer passenden Methode:
AttackStrategy[] strategies = { new WeaponAttack(), new MagicAttack() };

Fighter target = new Fighter();

for (AttackStrategy strategy : strategies) {
  strategy.performOn(target);
}

System.out.println(strategies.length + ":" + target.currentHealth());
```

**Antwort:** `2:55`

### Frage 19 (2 Punkte)

`WeaponAttack` und `MagicAttack` implementieren bereits `AttackStrategy` mit `void performOn(Fighter target)`. Bisher speichert `Fighter` ein `WeaponAttack`-Feld, erhält diese konkrete Klasse im Konstruktor und ruft in `attack(target)` deren `performOn(target)` auf. Die Anwendung soll beide Strategien beim Erzeugen eines Kämpfers wählen können. Welche Änderung erfüllt das Ziel vollständig?

_Wählen Sie höchstens 3 Optionen aus._

- [ ] Den Konstruktorparameter auf AttackStrategy ändern und die übergebene Referenz unverändert im bisherigen Feld vom Typ WeaponAttack speichern.
- [ ] Im Konstruktor die übergebene Strategie ignorieren und immer new WeaponAttack(...) erzeugen.
- [ ] Für jede Strategie eine instanceof-Verzweigung in Fighter.attack(...) hinzufügen und das konkrete Feld beibehalten.

_(Hinweis: Keine der gezeigten Optionen ist korrekt - 0 Optionen auswählen!)_

### Frage 20 (2 Punkte)

```java
abstract class Fighter {

  public String role() {
    return "Fighter";
  }
}

class Mage extends Fighter {

  @Override
  public String role() {
    return "Mage";
  }

  public String role(String language) {
    return "Magier";
  }
}

// Deklaration in einer passenden Methode:
Fighter fighter = new Mage();
```

Beurteile die folgenden möglichen Aufrufe jeweils unabhängig voneinander.

_Wählen Sie höchstens 4 Optionen aus._

- [x] fighter.role() ist zulässig und liefert Mage.
- [ ] fighter.role("de") ist zulässig, weil der konkrete Objekttyp die Methode besitzt
- [ ] @Override vor role(String language) wäre korrekt, weil der Methodenname übereinstimmt.
- [ ] Nach Fighter fighter= new Fighter(); ist fighter.role() zulässig und liefert Fighter.

### Frage 21 (2 Punkte)

Die Regel lautet: Eine Arena akzeptiert weder `null` noch zwei Teilnehmer mit gleichem Namen. `findByName(name)` liefert bei einem Treffer das vorhandene Objekt, sonst `null`. Die aktuelle Implementierung ist unten aufgeführt. Die interne Liste ist privat. Alle genannten Kämpfer sind gültige konkrete Objekte.

```java
public void addParticipant(Fighter participant) {
  if (participant == null) throw new IllegalArgumentException();
  participants.add(participant);
}
```

Welche Aussagen sind richtig?

_Wählen Sie höchstens 4 Optionen aus._

- [ ] Der bestehende null-Test beweist auch die Eindeutigkeit der Namen.
- [x] Ein Test, der nach einem ersten Aria einen zweiten Kämpfer namens Aria hinzufügt und dabei IllegalArgumentException erwartet, deckt die fehlende Regel auf.
- [x] Vor participants.add(...) muss zusätzlich ein vorhandener Treffer für participant.name() zurückgewiesen werden.
- [ ] Die Rückgabe von List.copyOf(participants) in einer anderen Methode verhindert bereits doppelte Namen beim Hinzufügen.
