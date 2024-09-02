import java.util.Scanner;
class ArrayObject{
    public static void main(String[] args){
        Student_Detail[] arr = new Student_Detail[2];
        for(int i=0;i<2;i++){
            arr[i] = new Student_Detail();
            arr[i].Details();
        }
        for(int i=0;i<2;i++){
            arr[i].display();
        }
        
    }
    }
    class Student_Detail{
        int Enrollment_No;
        String Name;
        int Semester;
        double CPI;
        public void Details(){
            Scanner sc = new Scanner(System.in);

            System.out.println("Enter a Enrollment_No");
            this.Enrollment_No =sc.nextInt();
            System.out.println("Enter a Name");
            this.Name =sc.next();
            System.out.println("Enter a Semester");
            this.Semester =sc.nextInt();
            System.out.println("Enter a CPI");
            this.CPI =sc.nextDouble();

            System.out.println("----------------------------------------------------");
           

        }
        public void display(){
            System.out.println("Enrollment_No :" +Enrollment_No);
            System.out.println("Name :"+ Name);
            System.out.println("Semester :"+Semester);
            System.out.println("CPI :"+CPI);
        }
    }
