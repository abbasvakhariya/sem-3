
public class BinerySerchTree {
    public static void main(String[] args) {
        BST bs = new BST();
        bs.insert(5);
        bs.insert(10);

    }
}

class TreeNode {
    int key;
    TreeNode left;
    TreeNode right;

    public TreeNode(int value) {
        this.key = value;
        this.left = null;
        this.right = null;
    }
}

class BST {
    TreeNode root;

    public BST() {
        root = null;
    }

    void insert(int value) {
        root = insertRecord(root, value);
    }

    public TreeNode insertRecord(TreeNode root, int value) {
        if (root == null) {
            root = new TreeNode(value);
            return root;
        }
        if (value < root.key) {
            root.left = insertRecord(root.left, value);
        } else if (value > root.key) {
            root.right = insertRecord(root.right, value);
        }
        return root;
    }
}
