import java.util.Scanner;

public class LinearSearch {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a size of Array:");
        int size = sc.nextInt();

        int arr[]=new int[size];
        int index=-1;

        

        for(int i=0;i<size;i++){

            System.out.println("Enter value of a["+i+"]");
            arr[i]=sc.nextInt();
        }

        System.out.println("Enter val for searching:");
        int search = sc.nextInt();

        for(int i=0;i<size;i++){

            if(arr[i]==search){
                index=i;
                System.out.println("index is "+index);
                break;
            }
        }

        if(index==-1){

            System.out.println("Value not found");
        }
    }
}