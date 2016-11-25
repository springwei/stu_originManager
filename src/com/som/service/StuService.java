package com.som.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.som.dao.IStuDao;
import com.som.entity.Student;

@Service
public class StuService {
	@Resource
	private IStuDao stuDao;
	
	public Student findStuById(int id){
		return stuDao.findById(id);
	}
	
	public List<Student> findStuByName(String name){
		return stuDao.findByName(name);
	}
	
	public List<Student> findStuByOrigin(String origin){
		return stuDao.findByOrigin(origin);
	}
	
	public List<Student> findAllStus(){
		return stuDao.findAll();
	}
	
	
	
	public void addStu(Student stu){
		stuDao.add(stu);
	}
	
	public void deleteStuById(int id){
		stuDao.deleteById(id);
	}
	
	public void updateStu(Student stu){
		stuDao.update(stu);
	}
	
}
