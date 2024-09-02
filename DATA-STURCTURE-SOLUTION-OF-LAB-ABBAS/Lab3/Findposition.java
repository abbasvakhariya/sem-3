import java.util.Scanner;
public class Findposition{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int[] a = new int[5];
        for(int i=0;i<5;i++){
            a[i] = sc.nextInt();
        }
        for(int i=0;i<5;i++){
            System.out.println(a[i]);
        }
         int max = a[0];
         int min = a[0];
         int maxindex = a[0];
         int minindex = a[0];

        for(int i=0;i<5;i++){
            max = (a[i]>=max)?a[i]:max;
        }
        for(int i=0;i<5;i++){
            min = (a[i]<=min)?a[i]:min;
        }
        for(int i=0;i<5;i++){
            maxindex = (a[i]>=max)?i:maxindex;
        }
        for(int i=0;i<5;i++){
            minindex = (a[i]<=min)?i:minindex;
        }
        System.out.println("Max number  is :  "+ max);
        System.out.println("min number  is :  " +min);
        System.out.println("Max number position is :  " +maxindex);
        System.out.println("Min number position is :  " +minindex);
        
        

     
    }
}