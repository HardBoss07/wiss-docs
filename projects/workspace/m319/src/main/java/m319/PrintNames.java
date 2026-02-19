package m319;

public class PrintNames {

    public static void main(String[] args) {
        String[] names = {
            "Peter",
            "Hans",
            "Susi",
            "Rolf",
            "Urs",
            "Heidi"
        };
        
        String firstLetter = "H";

        print(names, firstLetter);

        // String name1 = "Peter";
        // String name2 = "Hans";
        // String name3 = "Susi";
        // String name4 = "Rolf";
        // String name5 = "Urs";
        
        // System.out.println(name1);
        // System.out.println(name2);
        // System.out.println(name3);
        // System.out.println(name4);
        // System.out.println(name5);
    }
    
    public static void print(String[] names, String firstLetter) {
    	for (int i = 0; i < names.length; i++) {
        	if (names[i].startsWith(firstLetter)) {
                System.out.println(names[i]);
        	}
        	else {
        		System.out.println(names[i] + " begint nicht mit " + firstLetter);
        	}
    	}
    }
}
