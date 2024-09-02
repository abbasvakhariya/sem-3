import java.util.Scanner;
public class L_1_E{
	static int fact(int n){
		int ans = 1;
		if(n==1){
			return 1;
		}else{
			return ans=n*fact(n-1);
		}
	}
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter a number : ");
		int n = sc.nextInt();
		int ans = fact(n);
		System.out.println(n+"!="+ans);
	}
	
}