

import java.util.Scanner;
import java.util.Stack;

public class EvaluationPrefix{
    public static void main(String[] args){

        Stack<Integer> stk = new Stack<>();
        Scanner sc = new Scanner(System .in);
        System.out.println("Enter the infix String : ");
        String temp = sc.next();

        int top = 0;
        int value = temp.length();
        
        temp = " "+temp;
        

        while (temp.charAt(value)!= ' ' ) {
            
            if(Character.isDigit(temp.charAt(value))){
                stk.push(Integer.parseInt(""+temp.charAt(value)));

                value--;
            }
            else{
                int oprand1 = stk.pop();
                    int oprand2 = stk.pop();

                if(temp.charAt(value)=='+'){
                    
                    int ans = 0;
                    ans = oprand1 + oprand2;
                    stk.push(ans);
                }
                else if(temp.charAt(value)=='-'){
                    
                    int ans = 0;
                    ans = oprand1 - oprand2;
                    stk.push(ans);
                }
                else if(temp.charAt(value)=='*'){
                    
                    int ans = 0;
                    ans = oprand1 * oprand2;
                    stk.push(ans);
                }
                else if(temp.charAt(value)=='/'){
                    
                    int ans = 0;
                    ans = oprand1 / oprand2;
                    stk.push(ans);
                }
                else if(temp.charAt(value)=='^'){
                    
                    int ans = 0;
                    ans = oprand1 ^ oprand2;
                    stk.push(ans);
                }
                else{
                    System.out.println("Invalid String");
                }
                value--;
                


            }
            
        }
        System.out.println(stk.pop());

    }
}