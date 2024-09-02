import java.util.Scanner;

public class Average{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int m,n;
        System.out.println("Enter a nuber : ");
        n = sc.nextInt();
        int sum=0;
        for(int i=0;i<=n;i++){
            sum+=i;
        }
        System.out.println("Average is : "+(double)sum/n);
    }
}

