import java.util.Scanner;
public class B8{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter a number");
		int n = sc.nextInt();
		int cnt = 0;
		for(int i=2;i<=(n/2);i++){
			if(n%i==0){
				cnt++;
			}
		}
		if(cnt!=0){
			System.out.println("Not prime");
		}else{
			System.out.println("prime");
		}
	}
}