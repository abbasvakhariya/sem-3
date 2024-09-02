import java.util.Scanner;
public class InsertArray{
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter size of Array =");
        int n = sc.nextInt();

        int arr[] = new int [n];

        for(int i=0; i<n; i++){
            System.out.println("Enter number + "+i+ ":");
            arr[i] = sc.nextInt();
        }

        int newArr[] = new int[n+1];
        int location = 0;

        do{
            System.out.println("Enter the index where you want to add number :");
            location = sc.nextInt();
        }
        while(location>n);

        System.out.println("Enter the number that you want to add :");
        int num = sc.nextInt();

        for(int i=0; i<=(location-1); i++){
            newArr [i] = arr[i];
        }

        newArr[location] = num;

        for(int i=(location+1); i<newArr.length; i++){
            newArr[i] = arr[i-1];
        }

        System.out.println("Update Array");

        for(int i=0;i<newArr.length;i++){ 
			System.out.println("\n"+newArr[i]);
        }
    }
}