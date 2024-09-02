import java.util.Scanner;
public class A13{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("enter the sixe of the array");
		int n = sc.nextInt();
		int arr[] = new int[n];
		for(int i=0;i<n;i++){
			System.out.println("Enter number");
			arr[i] = sc.nextInt();
		}
		for(int i=0;i<n;i++){
			System.out.println(arr[i]);
		}
	}
}