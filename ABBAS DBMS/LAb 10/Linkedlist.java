 

public class Linkedlist {
    class Node{
        int info;
        Node link;

        public Node(int data){
            this.info = data;
            this.link = null;
        }
    }
    public Node first = null;

    public void InsertFirst(int data){
        Node newNode = new Node(data);

        if(first==null){
            first=newNode;
            return;

        }
        Node temp = first;
        first = newNode;
        first.link = temp;


    }
    public void InsertLAst(int data){
        Node newNode = new Node(data);

        if(first==null){
            first=newNode;
            return;

        }
        Node last = first;
        while(last.link!= null){
            last = last.link;


        }
        last.link = newNode;
        

    }

    public void InsertOrder(int data){
        Node newNode = new Node(data);

        if(first == null || newNode.info <= first.info){
            newNode.link = first;
            first = newNode;
            return;
        }
        Node save = first;
        while (save.link != null && newNode.info >= save.link.info) {
            save = save.link;
        }
        newNode.link = save.link;
        save.link = newNode;

    }
    public void deleteNode(int data){
        if(first==null){
            System.out.println("empty");
            return;

        }
        Node save = first, prev = null;
        if(save.info == data){
            first = save.link;
            return;
        }
        while(save !=null && save.info!= data){
            prev = save;
            save = save.link;

        }
        if(save==null){
            System.out.println("Node not found");
            return;

        }
        prev.link = save.link;
        



    }
    public void diaply(){
        Node temp = first;
        while (temp != null) {
            System.out.println(temp.info);
            temp = temp.link;
            
        }
    }        

    public static void main(String[] args) {
        Linkedlist ln = new Linkedlist();
        ln.InsertFirst(6);
        ln.InsertFirst(5);
        ln.InsertLAst(10);
        ln.InsertOrder(7);
        ln.deleteNode(10);
        ln.diaply();

        
    }
   
    
}
