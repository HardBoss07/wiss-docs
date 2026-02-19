package games.simple;


import java.util.Random;
import java.util.Scanner;

/**
 * Die abstrakte Klasse SimpleGame stellt einen Rahmen für die Implementierung
 * einfacher Spiele bereit (wie z.B Schere, Stein, Papier), bei denen ein Spieler gegen einen Computer antritt.
 * Sie enthält Methoden für Spieler- und Computerzüge, Punktevergabe und
 * Überprüfung des Spielendes.
 *
 * @author Aleksandar Travanov
 * @version 1.0
 */
public abstract class SimpleGame implements Runnable {
	int scorePlayer;
	int scoreComputer;
	Scanner scanner;
	Random random;
	String[] moves;
	int[][] scoreMatrix;

	/**
	 * Konstruiert ein SimpleGame-Objekt und initialisiert die Spieler- und
	 * Computerpunkte, den Scanner für die Benutzereingabe, den
	 * Zufallszahlengenerator, das Array der Züge und die Punktematrix.
	 */
	public SimpleGame() {
		scorePlayer = 0;
		scoreComputer = 0;
		scanner = new Scanner(System.in);
		random = new Random();
		moves = initMoves();
		scoreMatrix = initScoreMatrix();
	}

	/**
	 * Abstrakte Methode, die von Subklassen implementiert werden muss, um die
	 * Punktematrix zu initialisieren.
	 * 
	 * Die Punktematrix regelt die Zuordnung von Punkten abhängig von den Zügen des
	 * Spielers und des Computers in einem Spiel mit drei möglichen Zügen. 
	 * <p>
	 * Es gelten die folgenden Regeln:
	 * 
	 * <ol>
	 *   <li>Der Zeilenindex der Matrix repräsentiert den Zug des Spielers.</li>
	 *   <li>Der Spaltenindex der Matrix repräsentiert den Zug des Computers.</li>
	 *   <li>Falls der Zug des Spielers gewinnt, wird eine 1 eingetragen.</li>
	 *   <li>Falls der Zug des Computers gewinnt, wird eine -1 eingetragen.</li>
	 *   <li>Falls die Züge gleich stark sind, wird eine 0 eingetragen.</li>
	 * </ol>
	 * <p>
	 * Bemerkung: Für ein Spiel mit drei möglichen Zügen wird eine 3x3 Matrix
	 * benötigt.
	 * 
	 * @return Die initialisierte Punktematrix.
	 * */

	public abstract int[][] initScoreMatrix();

	/**
	 * Abstrakte Methode, die von Subklassen implementiert werden muss, um das Array
	 * der möglichen Züge zu initialisieren.
	 *
	 * @return Das Array der möglichen Züge.
	 */
	public abstract String[] initMoves();

	/**
	 * Ruft den Zug des Spielers ab, indem die aktuellen Punktestände angezeigt und
	 * der Benutzer zur Eingabe aufgefordert wird.
	 * 
	 * @return Der Zug des Spielers als Zeichenkette.
	 */
	public String movePlayer() {
		System.out.printf("Punktestand Spieler: %d Punktestand Computer: %d \n", scorePlayer, scoreComputer);
		System.out.println();
		String infoMoves = moves[0];

		for (int i = 1; i < moves.length; i++) {
			infoMoves = infoMoves + "," + moves[i];
		}
		System.out.printf("Geben Sie Ihren Zug ein (%s) oder 'exit', um das Spiel zu beenden:%n", infoMoves);
		return scanner.nextLine().toLowerCase();
	}

	/**
	 * Generiert einen zufälligen Zug für den Computer und zeigt ihn an.
	 *
	 * @return Der Zug des Computers als Zeichenkette.
	 */
	public String moveComputer() {
		int index = random.nextInt(0, moves.length);
		System.out.printf("Computer spielt %s%n", moves[index]);
		return moves[index];
	}

	/**
	 * Führt die Spielschleife aus, die es dem Spieler ermöglicht, Züge zu machen,
	 * bis das Spiel vorbei ist. Zeigt den Gewinner oder ein Unentschieden an, wenn
	 * das Spiel endet.
	 */
	@Override
	public void run() {
		while (true) {
			String move = movePlayer();
			if (move.equals("bye") || move.equals("exit")) {
				System.out.println("Auf Wiedersehen");
				break;
			}
			int indPlayer = indexOfMove(move);
			if (indPlayer == -1) {
				System.out.println("Ungültiger Zug, bitte geben Sie Ihren Zug erneut ein");
				continue;
			}

			String computerMove = moveComputer();
			int indComputer = indexOfMove(computerMove);

			calculateScore(indPlayer, indComputer);

			if (isGameOver()) {
				if (scorePlayer > scoreComputer) {
					System.out.println("Herzlichen Glückwunsch, Sie sind der Gewinner");
				} else if (scoreComputer > scorePlayer) {
					System.out.println("Schade, der Computer hat gewonnen");
				} else {
					System.out.println("Das Spiel endet unentschieden");
				}
				break;
			}
		}
	}

	/**
	 * Überprüft, ob das Spiel vorbei ist, indem die Punktestände betrachtet werden.
	 *
	 * @return true, wenn das Spiel vorbei ist, andernfalls false.
	 */
	private boolean isGameOver() {
		return (scorePlayer == 3 || scoreComputer == 3);
	}

	/**
	 * Aktualisiert die Punktestände basierend auf den Zügen des Spielers und des
	 * Computers.
	 *
	 * @param indPlayer   Der Index des Zugs des Spielers im Array der Züge.
	 * @param indComputer Der Index des Zugs des Computers im Array der Züge.
	 */
	private void calculateScore(int indPlayer, int indComputer) {
		int score = scoreMatrix[indPlayer][indComputer];

		if (score > 0) {
			scorePlayer++;
		}
		if (score < 0) {
			scoreComputer++;
		}
	}

	/**
	 * Sucht den Index eines gegebenen Zugs im Array der Züge.
	 *
	 * @param move Der zu suchende Zug.
	 * @return Der Index des Zugs, wenn gefunden, ansonsten -1.
	 */
	private int indexOfMove(String move) {
		for (int i = 0; i < moves.length; i++) {
			if (move.equals(moves[i])) {
				return i;
			}
		}
		return -1;
	}
}
