package ch00;

public class Methods {
	String name; // 인스턴스 변수 
	
	public Methods() {
		name = "김정하";
		System.out.printf("#생성자:%s\n",name);
	}
	
	void printName() {
		System.out.printf("#printname: %s\n",name);
	}
	//인자가 하나인 메서드 (메서드 오버로딩), 인자 값이 출력됨
	void printName(String name) {
		System.out.printf("#printName(String name): %s\n",name);
	}
	//가변인자를 사용한 메서드 가변인자: 인자의 수가 유동적인 메서드 , String...msg 이게 가변인자 
	void printName(String...name) {
		System.out.printf("#printNames(String...name)");
		for(String s:name) {
			System.out.print(s);
		}
	} 
	int calc(int num1, int num2) {
		return num1+num2;
	}
	public static void main(String[] args) {
		Methods m = new Methods();
		m.printName();
		m.printName("김정연");
		m.printName("김정하","김정연","김재홍");
		System.out.printf("calc(int num1, intnum2): %d",m.calc(20,50));
	}
}
