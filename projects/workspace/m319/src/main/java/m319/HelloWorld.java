package m319;

public class HelloWorld {

	public static void main(String[] args) {
	    // Typ = String
	    // Variable: Name ist frei wählbar, hier text
	    //Wert: Hello World!, Zeichenkette immer mit Hochkommas
	    // Befehl mit ; abgeschlossen

		String text = "Hello World!";

	    // Befehl für ausgabe auf Konsole
		System.out.println(text);

	    // Das Gleiche mit ganzen Zahlen: int
		int i = 15;
		System.out.println(i);
		
	    // Das Gleiche mit  Gleitkommazahlen: double
	    double d = 12.5;
		System.out.println(d);
		
	    // Das Gleiche mit Wahr oder Falsch: boolean, kann auch true sein
	    boolean b = false;
		System.out.println(b);
		
		// Eigenen Befehl aufrufen
		printHello();
		
		// Methode mit Parameter aufrufen
		String name = "Peter";
		printHelloName(name);
	}
	
	// Wir definieren einen eigenen Befehl (= Methode)
	public static void printHello() {
		String text = "Hello";
		System.out.println(text);
	}
	
	// Methode mit Parameter
	public static void printHelloName(String name) {
		String text = "Hello " + name;
		System.out.println(text);
	}

}
