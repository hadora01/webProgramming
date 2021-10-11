package ch00;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class MapListTest {
 //map,list 는 함께 종종 사용, 성적목록을 list, 학생이름을 키로 하는 map 
	public static void main(String[] args) {
			List<Integer> s1 = Arrays.asList(95,89,90);
			List<Integer> s2 = Arrays.asList(87,22,35);
			
			Map<String, List<Integer>> student = new HashMap<>();
			
			student.put("김정하", s1);
			student.put("김정우", s2);
			
			Scanner scan = new Scanner(System.in);
			System.out.println("성적이 궁금한 학생이름을 입력하세요");
			String input = scan.next();
			
			int total =  0;
			for(int i:student.get(input)) {
				total = total+i;
			}
			System.out.printf("이름:%s 총점:%d",input,total);
	
	}
}
