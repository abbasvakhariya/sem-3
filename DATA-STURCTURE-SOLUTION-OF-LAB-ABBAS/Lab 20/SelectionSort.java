import java.util.Scanner;

public class SelectionSort {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a Size of Array");
        int n = sc.nextInt();
        int arr[] = new int[n];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        for (int i = 0; i < n - 1; i++) {
            int Min_index = i;
            for (int j = i + 1; j < n; j++) {
                if (arr[j] < arr[Min_index]) {
                    Min_index = j;
                }

            }
            if (Min_index != i) {
                int temp = arr[i];
                arr[i] = arr[Min_index];
                arr[Min_index] = temp;
            }
        }
        System.out.println("After Sorting");
        for (int i = 0; i < n; i++) {
            System.out.println(arr[i]);
        }
    }

}
