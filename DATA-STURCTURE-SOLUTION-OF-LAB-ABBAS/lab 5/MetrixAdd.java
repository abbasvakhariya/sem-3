
import java.util.Scanner;

public class MetrixAdd {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Enter the row: ");
        int r = sc.nextInt();
        System.out.println("Enter the collum: ");
        int c = sc.nextInt();

        int arr1[][] = new int[r][c];

        for(int i=0;i<r;i++){

            for(int j=0;j<c;j++){

                arr1[i][j] = sc.nextInt();
            }
        }
        System.out.print("Second Value");

        int arr2[][] = new int[r][c];

        for(int i=0;i<r;i++){

            for(int j=0;j<c;j++){

                arr2[i][j] = sc.nextInt();
            }
        }

        int ans[][] = new int[r][c];

        for(int i=0;i<r;i++){
            for(int j=0;j<c;j++){

                ans[i][j] = arr1[i][j]+arr2[i][j];
            }
        }
        for(int i=0;i<r;i++){

        for(int j=0;j<c;j++){
            System.out.print(ans[i][j] +" ");
        }
        System.out.println(" ");
        }

    }
    
}
