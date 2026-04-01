package m319;

public class Vorbereitung {

	public static void main(String[] args) {
		int a = factorial(5);
		int b = factorial(6);
		
		int result = a * b;
		
		System.out.println(result);
	}
	
	public static int factorial(int number) {
		int result = 1;
		
		while(number != 0) {
			result *= number;
			number--;
		}
		
		return result;
	}

}
