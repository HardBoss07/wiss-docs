package m319;

public class Numbers {

	public static void main(String[] args) {
		int[] numbers = { 1, 8, 45, 23, 12, 45, 138, 9, 43, 2, 8, 2, 17, 3, 9, 86, 9, 3, 486 };

		printSum(numbers);
		printSumWhile(numbers);

		System.out.println(decToBin(99));
		System.out.println(decToBin(8));
		System.out.println(decToBin(9));
		System.out.println(decToBin(69));

		System.out.println(decToBase(186, 2));
		System.out.println(decToBase(255, 16));
		System.out.println(decToBase(213, 36));

		System.out.println(isEven(1234235));
		System.out.println(isOdd(87653543));
		System.out.println(isOdd(9876543));
		System.out.println(isEven(2463534));
		System.out.println(isOdd(573442));
		System.out.println(isEven(23452));
		System.out.println(isOdd(23));
		System.out.println(isEven(7));
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

	public static String decToBin(int n) {
		if (n <= 0)
			return "0";

		String digits = "01";
		String res = "";
		int quotient = n;

		while (quotient > 0) {
			int remainder = quotient % 2;
			quotient = quotient / 2;
			res = digits.charAt(remainder) + res;
		}

		return res;
	}

	public static String decToBase(int n, int base) {
		if (n <= 0)
			return "0";

		String digits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String res = "";
		int quotient = n;

		while (quotient > 0) {
			int remainder = quotient % base;
			res = digits.charAt(remainder) + res;
			quotient = quotient / base;
		}

		return res;
	}

	public static boolean isEven(int n) {
		return n % 2 == 0;
	}

	public static boolean isOdd(int n) {
		return !isEven(n);
	}
}
