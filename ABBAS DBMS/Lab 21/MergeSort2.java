import java.util.Scanner;

public class MergeSort2 {
    public static void mergesort(int[] arr,int low,int high){
        if(low>high){
            int mid = (low+high)/2;
            mergesort(arr, low, mid);
            mergesort(arr, mid + 1, high);
    
            merge(arr, low, high, mid);
        }

    }
    public static void merge(int arr[],int low, int high, int mid) {
        
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a Size of Araay");
        int n = sc.nextInt();
        int low = 0;
        int high = 0;

        int arr[] = new int[n];
        System.out.println("Enter the elements of array");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
            high++;
        }
            
    }

}