package m319;

/**
 * Die Klasse {@code RomanNumerals} bietet Hilfsmethoden zur Konvertierung
 * zwischen römischen Zahlen und dezimalen Ganzzahlen.
 */
public class RomanNumerals {

    // Zentrale Definition der Werte für bessere Wartbarkeit
    private static final int[] VALUES = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    private static final String[] SYMBOLS = {"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"};

    public static void main(String[] args) {
        String rom = "MMMCDXCIX";
        int dec = 2026;

        System.out.println(rom + " -> " + romanToDec(rom));
        System.out.println(dec + " -> " + decToRoman(dec));
    }

    /**
     * Konvertiert eine römische Zahl (String) in eine dezimale Ganzzahl.
     * @param s Die zu konvertierende römische Zahl.
     * @return Der dezimale Wert der Zahl.
     */
    public static int romanToDec(String s) {
        int res = 0;
        int prevValue = 0;

        for (int i = s.length() - 1; i >= 0; i--) {
            int currentValue = getVal(s.charAt(i));

            if (currentValue < prevValue) {
                res -= currentValue;
            } else {
                res += currentValue;
            }
            prevValue = currentValue;
        }
        return res;
    }

    /**
     * Hilfsmethode zur Bestimmung des Wertes eines einzelnen römischen Zeichens.
     * @param c Das römische Schriftzeichen.
     * @return Der zugehörige ganzzahlige Wert.
     */
    private static int getVal(char c) {
        switch (c) {
            case 'I': return 1;
            case 'V': return 5;
            case 'X': return 10;
            case 'L': return 50;
            case 'C': return 100;
            case 'D': return 500;
            case 'M': return 1000;
            default: return 0;
        }
    }

    /**
     * Konvertiert eine dezimale Ganzzahl in eine römische Zahl.
     * @param number Die positive Ganzzahl, die konvertiert werden soll.
     * @return Die Darstellung als römische Zahl (String).
     */
    public static String decToRoman(int number) {
        StringBuilder res = new StringBuilder();

        for (int i = 0; i < VALUES.length; i++) {
            while (number >= VALUES[i]) {
                number -= VALUES[i];
                res.append(SYMBOLS[i]);
            }
        }

        return res.toString();
    }
}