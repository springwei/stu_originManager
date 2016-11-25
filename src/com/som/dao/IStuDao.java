package com.som.dao;

import java.util.List;

import com.som.entity.Student;

public interface IStuDao {
	public Student findById(int id);

	public List<Student> findByName(String name);

	public List<Student> findByOrigin(String origin);

	public List<Student> findAll();

	public void add(Student stu);

	public void deleteById(int id);

	public void update(Student stu);

}
