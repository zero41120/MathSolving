/*
 * The prime factors of 13195 are 5, 7, 13 and 29.
 * What is the largest prime factor of the number 600851475143 ?
 */
public class Largest_prime_factor {
	
	public static void main(String[] s) {
		for (long l = 0, p = 1, j, i = 0; i++ < 600851475143L;) {
			if ((600851475143L % i == 0 ? i : 0) != 0) {
				for (j = 2, p = 1; j < i; p = i % j++ == 0 ? 0 : p);System.out.println(l = p == 1 ? i : l);
			}
		}
	}
	
}
