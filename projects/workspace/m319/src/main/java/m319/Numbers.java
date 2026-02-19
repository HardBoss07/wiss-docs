package m319;

public class Numbers {

	public static void main(String[] args) {
		int[] numbers = {1, 8, 45, 23, 12, 45, 138, 9, 43, 2, 8, 2, 17, 3, 9, 86, 9, 3, 486};
		
		printSum(numbers);
		printSumWhile(numbers);
	}
	
	public static void printSumWhile(int[] numbers) {
		int sum = 0;
		int i = 0;
		
		while (i < numbers.length) {
			sum += numbers[i];
			i++;
		}
		
		System.out.println("Die Summe ist: " + sum);
	}

	public static void printSum(int[] numbers) {
		int sum = 0;
		
		for (int n : numbers) {
			sum += n;
		}
		
		System.out.println("Die Summe ist: " + sum);
	}
}
