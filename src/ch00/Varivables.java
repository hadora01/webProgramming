package ch00;

public class Varivables {
		//멤버 변수, 인스턴스 변수 
		int num1;
		
		//멤버 변수, 클래스 변수 
		static int num2;
		
		//매개변수 
		public void printName(String name) {
			//지역 변수 
			String prtMsg = name +"hello";
			System.out.println(prtMsg);
		}
		
		
		public static void main(String[] args) {
			//인스턴스 생성
			Varivables mc = new Varivables();
			//인스턴스 변수 사용
			mc.num1 = 100; //인스턴스 변수니까 인스턴스.변수 이렇게 참조해야한다. 
			//클래스 변수 사용
			Varivables.num2 = 50; //클래스 변수니까 인스턴스 참조없이 클래스. 변수 이렇게 참조한다. 
			
			//인자로 매개변수에 값을 전달
			mc.printName("김정하");
			
			System.out.printf("%d, %d",mc.num1, Varivables.num2);
			
		
		}

}
