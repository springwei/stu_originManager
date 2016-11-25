package com.som.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.som.entity.Student;
import com.som.service.StuService;

@Controller
@RequestMapping(value = "/stu")
public class StuAction {
	@Resource
	private StuService stuService;

	@RequestMapping(value = "/findStuById")
	public String findStuById(Model model,int id) {
		List<Student> stus = new ArrayList<Student>();
		Student stu = stuService.findStuById(id);
		stus.add(stu);
		model.addAttribute("stus",stus);
		return "/findRes.jsp";
	}
	
	@RequestMapping(value = "/findStuById1")
	public String findStuById1(Model model,int id) {
		Student stu = stuService.findStuById(id);
		model.addAttribute("stu",stu);
		return "/editStu.jsp";
	}
	
	@RequestMapping(value="/findStuByName")
	public String findStuByName(Model model,String name){
		List<Student> stus = stuService.findStuByName(name);
		model.addAttribute("stus",stus);
		return "/findRes.jsp";
		
	}
	
	@RequestMapping(value="/findStuByOrigin")
	public String findStuByOrigin(Model model,String origin){
		List<Student> stus = stuService.findStuByOrigin(origin);
		model.addAttribute("stus",stus);
		return "/findRes.jsp";
		
	}
	
	@RequestMapping(value="/findAllStus")
	public String findAllStus(Model model){
		List<Student> stus = stuService.findAllStus();
		model.addAttribute("stus",stus);
		return "/stu_list.jsp";
	}
	
	@RequestMapping(value="/addStu")
	public String addStu(Student stu){
		stuService.addStu(stu);
		return "forward:/stu/findAllStus.action";
		
	}
	
	@RequestMapping(value="/deleteStuById")
	public String deleteStuById(int id){
		stuService.deleteStuById(id);
		return "forward:/stu/findAllStus.action";
		
	}
	
	@RequestMapping(value="/updateStu")
	public String updateStu(Student stu){
		stuService.updateStu(stu);
		return "forward:/stu/findAllStus.action";
	}

	@RequestMapping(value="/outExcell")
	public String outExcell(Model model){
		List<Student> stus = stuService.findAllStus();
		model.addAttribute("stus",stus);
		return "/excell.jsp";
	}
	
}
