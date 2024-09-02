import java.util.Scanner;
class Employee_Details{
    int Employee_id;
    String name;
    String Desitgnation;
    double salary;
    
    public void Employee_Details(){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a Employee id");
        this.Employee_id =sc.nextInt();
        System.out.println("Enter a Employee name :");
        this.name = sc.next();
        System.out.println("Enter a Desitgnation :");
        this.Desitgnation= sc.next();
        System.out.println("Enter a salary");
        this.salary = sc.nextDouble();
    }
    public void display(){
        System.out.println(Employee_id);
        System.out.println(name);
        System.out.println(Desitgnation);
        System.out.println(salary);

    }
    }


public class Employee {
    public static void main(String[] args){

        Employee_Details emp1 = new Employee_Details();
        emp1.Employee_Details();
        emp1.display();
    }
}
