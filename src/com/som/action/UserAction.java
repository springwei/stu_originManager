package com.som.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.som.entity.User;
import com.som.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserAction {
	@Resource
	private UserService userService;
	@RequestMapping(value="/checkLogin")
	public String checkLogin(User user){
		if(userService.checkLogin(user)){
			return "/stu/findAllStus.action";
		}
		else{
			return "/login.jsp";
		}		
	}
	@RequestMapping(value="/register")
	public String register(User user){
		userService.register(user);
		return "/login.jsp";
	}
}
