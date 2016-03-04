/* If we list all the natural numbers below 10 that are multiples of 3 or 5,
 * we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of
 * all the multiples of 3 or 5 below 1000. */

public class Multiples_of_3_and_5 {

	public static void main(String[] s) {
		int a = 0, i = 0;
		while (++i < 1000) a += i % 3 == 0 || i % 5 == 0 ? i : 0;
		System.out.print(a);
		// 233168
	}
}
