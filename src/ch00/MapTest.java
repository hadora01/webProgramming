package ch00;

import java.util.HashMap;
import java.util.Map;



public class MapTest {
	public static void main(String[] args) {
		HashMap <String,String> map = new HashMap<>();
		map.put("1","iphone1");
		map.put("2","ipone2");
		
		System.out.println(map.get("2"));
		
		for(Map.Entry<String, String> entry: map.entrySet()) {
			System.out.printf("%s %s\n", entry.getKey(),entry.getValue());
		}
		
	}

}
