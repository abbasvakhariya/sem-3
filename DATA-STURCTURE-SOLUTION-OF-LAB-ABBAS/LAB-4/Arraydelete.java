import java.util.Scanner;
public class Arraydelete{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        int n;
        System.out.println("Enter a Size Of Araay : ");
        n = sc.nextInt();

        int arr[] = new int[n];
         for(int i=0; i<n; i++){
            System.out.println("Enter number + "+i+ ":");
            arr[i] = sc.nextInt();
           
    }
     int ans[] = new int[n];
    for(int i=0;i<arr.length;i++){
        for(int j= i+1;j<arr.length;j++){
            
            if(arr[i]==arr[j]){
                n=n-1;
                ans[i] = arr[i];
                i=i+1;

            }
            else if(arr[i]!=arr[j]){
                ans[i] = arr[i];
            }
        }
    }
    for(int i=0; i<n; i++){
            System.out.println(ans[i]);
    }
    }
}        
    

    

