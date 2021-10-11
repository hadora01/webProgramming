package ch00;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;

public class CollectionTest {
	public static void main(String[] args) {
		 //create a new Hashset and add data
		Collection<String> c1 = new HashSet<>();
		c1.add("one");
		
		//create a new List with two values
		Collection<String> c2 = Arrays.asList("three","four");
		Collection<String> c3 = Collections.singleton("five");
		
		//convert collection to array
		Object[] converted1 = c1.toArray();
		// print all data in collection using for loop
		for(String s : c1) {
			System.out.println(s);
		}
		//access and print all data in the array which converted from collection
		for (int i = 0; i < converted1.length; i++) {
			System.out.println(converted1[i]);
		}
		//get Iterator object from collection and access the data
		
	}
}
