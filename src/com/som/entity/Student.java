package com.som.entity;

public class Student {
	private Integer id;
	private String name;
	private String origin;
	
	

	public Student() {
	
	}

	public Student(Integer id, String name, String origin) {
		this.id = id;
		this.name = name;
		this.origin = origin;
	}

	public Integer getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getOrigin() {
		return origin;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

}
