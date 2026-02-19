package m319;

public class ArithmeticOperations {

	public static void main(String[] args) {
		int sum = add(5,1);
		
		System.out.println(sum);

	}
	
	public static int add(int a, int b) {
		return a + b;
	}

	public static int sub(int a, int b) {
		return a - b;
	}
	
	public static int mul(int a, int b) {
		return a * b;
	}
	
	public static int div(int a, int b) {
		return a / b;
	}
	
	public static int mod(int a, int b) {
		return a % b;
	}

}
