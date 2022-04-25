package study;

public class Person {
	private int id = 20191004;
	private String name = "홍길순";
	
	public Person() {} //기본생성자 만들어야한다. 필수
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

}
