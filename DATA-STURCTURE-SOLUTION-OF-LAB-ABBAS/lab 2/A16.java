import java.util.Scanner;
public class A16{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the size of the array");
		int n = sc.nextInt();
		int arr[] = new int[n];
		for(int i=0;i<n;i++){
			System.out.println("Enter number");
			arr[i] = sc.nextInt();
		}
		int maxnum = arr[0];
		int minnum = arr[0];
		for(int i=1;i<arr.length;i++){
			if(arr[i]>arr[0]){
				maxnum = arr[i];
			}
		}
		for(int i=1;i<arr.length;i++){
			if(arr[i]<arr[0]){
				minnum = arr[i];
			}
		}
		System.out.println("maxnum :"+maxnum);
		System.out.println("minnum :"+minnum);
	}
}