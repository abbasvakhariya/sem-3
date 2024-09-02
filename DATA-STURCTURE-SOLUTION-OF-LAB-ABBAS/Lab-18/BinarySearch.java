import java.util.Scanner;

public class BinarySearch {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a size:");
        int size = sc.nextInt();

        int arr[] = new int[size];


        for(int i=0;i<size;i++){

            System.out.println("Enter value of arr["+i+"]");
            arr[i] = sc.nextInt();

        }

        int middle=0;
        int left=0;
        int right=size-1;

        System.out.println("Enter value:");
        int value= sc.nextInt();
        
   
        while(left<right){
        
            middle = (right+left)/2;
        
            if(arr[middle]==value){

                System.out.println("index is "+middle);
                break;
    
            }
        else if(arr[middle]>value){

            right= middle-1;

        }
        else if(arr[middle]<value){
            left=middle+1;
          

        }
        else
        {
            System.out.println("Not found");
        }
        
    }
    }
}
