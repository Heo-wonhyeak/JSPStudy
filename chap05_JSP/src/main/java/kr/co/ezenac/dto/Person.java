package kr.co.ezenac.dto;
/*
 DTO(Data Transfer Object) : 데이터 전송 객
 	- 데이터를 저장하거나 전송하는데 쓰이는 객체
 	- 데이터만 가지고 있는 객체라 하여 값 객체(VO ,Value Object)라고도 함
 */
public class Person {
	private String name;
	private int age;
	
	public Person() {
		
	}

	public Person(String name, int age) {
		this.name = name;
		this.age = age;
		
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}	
	
}
