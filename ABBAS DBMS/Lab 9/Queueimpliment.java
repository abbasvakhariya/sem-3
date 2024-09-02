import java.util.Scanner;
public class Queueimpliment{
    
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        Queueimpliment Qm = new Queueimpliment();
       
        Qm.Enqueue();
        
     
        // int[] Queue = new int[n]; 
        // for(int i=0; i<n;i++){
        //     Queue[i] = sc.nextInt();

        // }
        // System.out.println("Enter the index to delete element: ");
        // int index = sc.nextInt();

        // int ans[] = new int[n];

        // for(int i=0;i<index;i++){
        //     ans[i] = Queue[i];

        // }
        // for(int i=index+1; i<n;i++){
        //     ans[i] = Queue[i];

        // }
        // for(int i=0; i<ans.length;i++){
        //     System.out.println(ans[i]);
        // }
    }
    static class Queue{
        int front = -1;
        int rear = -1;
        int size;
        int[] Queue;

        Queue(){

            Scanner sc = new Scanner(System.in);
        System.out.println("Enter a size of Queue");
        size = sc.nextInt();
        Queue = new int[size];
        }
        void Enqueue(int n){
            if(rear>size){
                System.out.println("Queue Overflow .");
    
            }
            else{
                rear = rear+1;
               if(front==-1){
                front++;
               }
               Queue[rear] = n;
                
            }
        }
    } 
    
}