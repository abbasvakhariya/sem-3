class Node {
    int info;
    Node link;

    public Node(int data) {
        this.info = data;
        this.link = null;
    }
}

class LinkedlistDemo {

    public Node first = null;

    public void Insertfirst(int data) {
        Node newNode = new Node(data);

        if (first == null) {
            first = newNode;
            return;

        }
        Node last = first;
        Node temp = first;
        first = newNode;
        first.link = temp;

    }

    public void diaply() {
        Node temp = first;
        while (temp != null) {
            System.out.println(temp.info);
            temp = temp.link;

        }
    }

    public LinkedlistDemo Copy() {
        LinkedlistDemo copylist = new LinkedlistDemo();
        Node temp = first;
        while (temp != null) {
            copylist.Insertfirst(temp.info);
            temp = temp.link;

        }
        return copylist;
    }
}

public class RevercLinkedList {
    public static void main(String[] args) {
        LinkedlistDemo ln = new LinkedlistDemo();

        ln.Insertfirst(10);
        ln.Insertfirst(20);
        ln.Insertfirst(30);
        ln.Insertfirst(40);
        ln.diaply();
        LinkedlistDemo demo = ln.Copy();
        demo.diaply();

    }
}
