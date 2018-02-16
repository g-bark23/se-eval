
public class FizzBuzz {
	private int count = 1;
	
	public void fizzBuzzMethod(){
		while(count < 101){
			if((count % 3) == 0 && (count % 5) == 0){
				System.out.println("Fizz Buzz");
				count++;
			}else if((count % 3) == 0){
				System.out.println("Fizz");
				count++;
			}else if ((count % 5) == 0){
				System.out.println("Buzz");
				count++;
			}else{
				System.out.println(count);
				count++;
			}
		}
	}

	public static void main(String[] args){
		FizzBuzz m = new FizzBuzz();
		m.fizzBuzzMethod();
	}
}