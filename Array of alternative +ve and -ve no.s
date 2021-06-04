//Array of alternative +ve and -ve no.s
import java.util.*;
public class Solution {
	static void rearrange(int arr[], int n) {
		
		int i=-1;
		for(int j=0;j<n;j++) {
			
			if(arr[j]<0) {	
				i++;
				int temp = arr[j];
				arr[j] = arr[i];
				arr[i] = temp;
			}
		}
		
		int pos = i+1;
		int neg = 0;
		
		while(pos<n && neg<pos && arr[neg]<0) {
			
			int temp = arr[pos];
			arr[pos] = arr[neg];
			arr[neg] = temp;
			pos++;
			neg+=2;
		}
		
    }
	static void printArray(int arr[], int n)
    {
        for (int i = 0; i < n; i++)
            System.out.print(arr[i] + "   ");
    }
	
	public static void main(String[] args) {
		int arr[] = {-1, 2, -3, 4, 5, 6, -7, 8, 9};
        int n = arr.length;
        rearrange(arr,n);
        
        printArray(arr,n);
   	}

}
