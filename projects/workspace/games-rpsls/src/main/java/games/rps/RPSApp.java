package games.rps;

/**
 * Die Klasse RPSApp enthält die main-Methode, um das "Rock, Paper, Scissors"-Spiel zu starten.
 * Sie erstellt ein RPSGame-Objekt und ruft dessen run-Methode auf, um das Spiel auszuführen.
 * <p>
 * Die main-Methode ist der Einstiegspunkt für die Ausführung des Programms.
 * 
 * @author Aleksandar Travanov
 * @version 1.0
 */
public class RPSApp {
    
    /**
     * Die main-Methode erstellt ein RPSGame-Objekt und ruft dessen run-Methode auf,
     * um das "Rock, Paper, Scissors"-Spiel zu starten.
     * 
     * @param args Die Befehlszeilenargumente,  welche nicht benötigt werden.
     */
    public static void main(String[] args) {
        RPSGame game = new RPSGame();
        game.run();
    }
    
    /**
     * Privater Dummy Konstruktor.
     */
    private RPSApp() {}
}

