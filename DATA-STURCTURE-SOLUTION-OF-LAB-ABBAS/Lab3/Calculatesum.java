import java.util.Scanner;

public class Calculatesum{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int m,n;
        System.out.println("Enter a nuber from start : ");
        m = sc.nextInt();
        System.out.println("Enter a number to end ");
        n = sc.nextInt();
        int sum = 0;
        for(int i=m;i<=n;i++){
            sum+=i;
            
        }
        System.out.println("Ans is : "+sum);
    }
}

