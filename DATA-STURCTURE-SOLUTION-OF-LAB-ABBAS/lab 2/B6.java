import java.util.Scanner;
public class B6{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
			System.out.println("Enter base");
			int base = sc.nextInt();
			System.out.println("Enter power");
			int power = sc.nextInt();
			int ans = 1;
			for(int i = 1; i <= power; i++){
					ans*=base;
			}
			System.out.println(base+" raised to"+power+"="+ans);
	}
}