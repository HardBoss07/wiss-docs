package m319;

import java.util.Stack;

public class IterativeHanoi {

	static class Tower {
        Stack<Integer> rings = new Stack<>();
        String name;

        Tower(String name) {
            this.name = name;
        }
    }

    private static String repeatChar(String s, int count) {
        if (count <= 0) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < count; i++) {
            sb.append(s);
        }
        return sb.toString();
    }

    public static void solveHanoi(int n) throws InterruptedException {
        Tower[] poles = { 
            new Tower("Pole 1"), 
            new Tower("Pole 2"), 
            new Tower("Pole 3") 
        };
        
        int sourceIndex = 0, auxilliaryIndex = 1, destinationIndex = 2;
        if (n % 2 == 0) {
            auxilliaryIndex = 2;
            destinationIndex = 1;
        }

        for (int i = n; i >= 1; i--) {
            poles[0].rings.push(i);
        }

        render(poles, n, 0);

        long totalMoves = (long) Math.pow(2, n) - 1;

        for (int i = 1; i <= (int)totalMoves; i++) {
            //Thread.sleep(250); 
            
            if (i % 3 == 1) move(poles[sourceIndex], poles[destinationIndex]);
            else if (i % 3 == 2) move(poles[sourceIndex], poles[auxilliaryIndex]);
            else move(poles[auxilliaryIndex], poles[destinationIndex]);
            
            render(poles, n, i);
        }
        System.out.println("Puzzle Completed!");
    }

    private static void move(Tower a, Tower b) {
        if (b.rings.isEmpty() || (!a.rings.isEmpty() && a.rings.peek() < b.rings.peek())) {
            b.rings.push(a.rings.pop());
        } else {
            a.rings.push(b.rings.pop());
        }
    }

    private static void render(Tower[] poles, int n, int currentMove) {
        System.out.print("\033[H\033[2J");
        System.out.flush();
        
        System.out.println("Move: " + currentMove);
        System.out.println();

        int columnWidth = (n * 2) + 4;

        for (int i = n; i >= 0; i--) {
            StringBuilder line = new StringBuilder();
            for (Tower p : poles) {
                String visual;
                if (i < p.rings.size()) {
                    int size = p.rings.get(i);
                    String blocks = repeatChar("=", size * 2);
                    visual = "[" + blocks + "]";
                } else {
                    visual = "|";
                }
                
                int padding = (columnWidth - visual.length()) / 2;
                line.append(repeatChar(" ", padding))
                    .append(visual)
                    .append(repeatChar(" ", columnWidth - visual.length() - padding));
            }
            System.out.println(line.toString());
        }
        
        System.out.println(repeatChar("-", columnWidth * 3));
        System.out.print(centerString("Pole 1", columnWidth));
        System.out.print(centerString("Pole 2", columnWidth));
        System.out.print(centerString("Pole 3", columnWidth));
        System.out.println("\n");
    }

    private static String centerString(String s, int width) {
        int padding = (width - s.length()) / 2;
        return repeatChar(" ", padding) + s + repeatChar(" ", width - s.length() - padding);
    }
    
    public static void main(String[] args) throws InterruptedException {
        int n = 10;
        solveHanoi(n);
    }
}