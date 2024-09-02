import java.util.Scanner;
public class L_1_A{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the radius of the circle");
		double r = 0;
		r = sc.nextDouble();
		double area = 0;
		area = Math.PI*r*r;
		System.out.println("Area of the circle is "+area);
	}
}