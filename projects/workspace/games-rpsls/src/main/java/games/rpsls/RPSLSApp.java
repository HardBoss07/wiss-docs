package games.rpsls;

/**
 * Die Klasse RPSLSApp enthält die main-Methode, um das "Rock, Paper, Scissors, Lizard, Spock"-Spiel zu starten.
 * Sie erstellt ein RPSLSGame-Objekt und ruft dessen run-Methode auf, um das Spiel auszuführen.
 * 
 * Die main-Methode ist der Einstiegspunkt für die Ausführung des Programms.
 * 
 * @author Aleksandar Travanov
 * @version 1.0
 */
public class RPSLSApp {
    
    /**
     * Die main-Methode erstellt ein RPSLSGame-Objekt und ruft dessen run-Methode auf,
     * um das "Rock, Paper, Scissors, Lizard, Spock"-Spiel zu starten.
     * 
     * @param args Die Befehlszeilenargumente, welche nicht benötigt werden.
     */
    public static void main(String[] args) {
        RPSLSGame game = new RPSLSGame();
        game.run();
    }
    
    /**
     * Privater Dummy Konstruktor.
     */
    private RPSLSApp() {}
}
