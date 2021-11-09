package function;


public class RVDeduplication {

	public static void main(String[] args) {
		String a1 = "1";
		String a2 = "2";
		String a3 = "3";
		String a4 = "4";
		String a5 = "5";
		
		String a6 = "2";
		String[] arr = {a1, a2, a3, a4, a5};

		for (int i = 0; i < arr.length-1; i++) {
			if(arr[i].equals(a6)) {
				for (int j = i; j < arr.length-1; j++) {
					arr[j] = arr[j+1];
				}
				arr[arr.length-1] = a6;
			}
		}
			
		
		for (int i = 0; i < arr.length; i++) {
			System.out.println(arr[i]);
		}
	}

}
