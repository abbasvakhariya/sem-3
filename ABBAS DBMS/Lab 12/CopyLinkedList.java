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

    public void InsertLAst(int data) {
        Node newNode = new Node(data);

        if (first == null) {
            first = newNode;
            return;

        }
        Node last = first;
        while (last.link != null) {
            last = last.link;

        }
        last.link = newNode;

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
            copylist.InsertLAst(temp.info);
            temp = temp.link;

        }
        return copylist;
    }
}

public class CopyLinkedList {
    public static void main(String[] args) {
        LinkedlistDemo ln = new LinkedlistDemo();

        ln.InsertLAst(10);
        ln.InsertLAst(20);
        ln.InsertLAst(30);
        ln.InsertLAst(40);
        ln.diaply();
        LinkedlistDemo demo = ln.Copy();
        demo.diaply();

    }
}
