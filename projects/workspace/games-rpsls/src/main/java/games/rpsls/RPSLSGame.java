package games.rpsls;

import games.simple.SimpleGame;

/**
 * Die Klasse RPSLSGame implementiert das Spiel "Rock, Paper, Scissors, Lizard, Spock"
 * (Stein, Papier, Schere, Echse, Spock), indem sie von der abstrakten Klasse SimpleGame erbt.
 * Sie enthält die Initialisierungsmethoden für die Punktematrix und die möglichen Züge des Spiels.
 *
 * @author Aleksandar Travanov
 * @version 1.0
 */
public class RPSLSGame extends SimpleGame {

    /**
     * Konstruktor für ein RPSLSGame-Objekt. Ruft den Konstruktor der Elternklasse auf.
     */
    public RPSLSGame() {
        super();
    }

    /**
     * Initialisiert die Punktematrix für das "Rock, Paper, Scissors, Lizard, Spock"-Spiel.
     * Die Matrix gibt an, wie Punkte zwischen Spieler und Computer vergeben werden,
     * abhängig von den gespielten Zügen.
     *
     * @return Die initialisierte Punktematrix.
     */
    @Override
    public int[][] initScoreMatrix() {
        return new int[][] {
        	{0,-1,1,-1,1},
        	{1,0,-1,1,-1},
        	{-1,1,0,-1,1},
        	{1,-1,1,0,-1},
        	{-1,1,-1,1,0},
        };
    }

    /**
     * Initialisiert die möglichen Züge für das "Rock, Paper, Scissors, Lizard, Spock"-Spiel.
     *
     * @return Das Array der möglichen Züge: {"rock", "paper", "scissors", "lizard", "spock"}.
     */
    @Override
    public String[] initMoves() {
        return new String[] {"rock", "paper", "scissors", "spock", "lizard"};
    }
}

