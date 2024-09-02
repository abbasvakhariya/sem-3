import java.util.Scanner;
public class A15{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter number");
		int n = sc.nextInt();
		int sum=0;
		for(int i=1;i<=n;i++){
			sum+=i;
		}
		float avg = sum/n;
		System.out.println(avg);
	}
}