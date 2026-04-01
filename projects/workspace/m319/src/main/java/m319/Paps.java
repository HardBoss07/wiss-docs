package m319;

public class Paps {

	public static void main(String[] args) {
		firstPap();
		secondPap();
		thirdPap();
		fourthPap();
		
		int[] numbers = {1, 2, 3, 4};
		int first = numbers[0];
		
		for  (int i = 0; i < numbers.length; i++) {
			System.out.println(numbers[i]);
		}
		
		int[][] map = {
				{1,2,3},
				{4,5,6},
				{7,8,9}
		};
		
		int[] test = map[0];
		
		for (int i=0; i < map.length; i++) {
			for (int j=0; j < map.length; j++) {
				System.out.println(map[j][i]);
			}
		}
		
		System.out.println(Math.pow(2, 3));
	}
	
	public static void firstPap() {
		int a = 3;
		int b = 5;
		
		int c = a + b;
	
		System.out.println(c);
	}
	
	public static void secondPap() {
		int a = 3;
		int b = 5;
		
		int c = a + b;
		
		if (c < 3) {
			c += 2;
		} else {
			c -= 1;
		}
		
		System.out.println(c);
	}
	
	public static void thirdPap() {
		int a = 3;
		int b = 5;
		
		int c = a + b;
		
		while (c > 3) {
			c -= 1;
		}
		
		c += 2;
		
		System.out.println(c);
	}
	
	public static void fourthPap() {
		int res = 0;
		int i = 0;
		
		int j = 0;
		
		while (i < 10) {
			j = 0;
			while (j < 10) {
				j++;
				res++;
			}
			i++;
		}
		
		System.out.println("i: " + i + ", j: " + j + ", res: " + res);
	}

}
