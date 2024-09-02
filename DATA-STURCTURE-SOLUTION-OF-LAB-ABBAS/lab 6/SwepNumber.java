import java.util.Scanner;

public class SwepNumber{
  public static void main(String[] args){
    Swap();

}
static void Swap(){
    Scanner sc = new Scanner(System.in);
    int a,b;
    System.out.println("Enter a First Number");
    a = sc.nextInt();
    System.out.println("Enter a Second Number");
    b = sc.nextInt();

    int temp = a;
    a = b;
    b = temp;

    System.out.println("First Number After Swap :"+a);
    System.out.println("Second Number After Swap :"+b);

}
}