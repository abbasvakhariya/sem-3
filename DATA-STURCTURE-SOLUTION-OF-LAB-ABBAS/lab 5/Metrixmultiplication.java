import java.util.Scanner;
public class Metrixmultiplication {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Enter a matrix 1 no of row: ");
        int r1 = sc.nextInt();
        
        System.out.println("Enter a matrix 1 no of collum:: ");
        int c1 = sc.nextInt();

        int arr1[][] = new int[r1][c1];
        System.out.println("ENter a element");

        for(int i=0;i<r1;i++){

            for(int j=0;j<c1;j++){

                arr1[i][j] = sc.nextInt();
            }
        }
        System.out.println("for multification r2 =c1");
        int r2=c1;

        System.out.println("Enter a matrix 2 no of collum:: ");
        int c2 = sc.nextInt();


        int arr2[][] = new int[r2][c2];
        System.out.println("ENter a element");

        for(int i=0;i<r2;i++){

            for(int j=0;j<c2;j++){

                arr2[i][j] = sc.nextInt();
            }
        }
        int ans[][] = new int[r1][c2];
        for(int i=0;i<r1;i++){
            for(int j=0;j<c2;j++){
                ans[i][j]=0;
                for(int k=0;k<c1;k++){
                    ans[i][j] += arr1[i][k]*arr2[k][j];

                }

               
            }
        }
        System.out.println("Final answer is ");
        
        for(int i=0;i<r1;i++){

            for(int j=0;j<c2;j++){
                System.out.print(ans[i][j] +" ");
            }
            System.out.println(" ");
            }

    
}
}
