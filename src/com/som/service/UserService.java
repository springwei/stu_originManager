package com.som.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.som.dao.IUserDao;
import com.som.entity.User;

@Service
public class UserService {
	@Resource
	IUserDao userDao;
	
	public boolean checkLogin(User user){
		if(userDao.find(user)!=null){
			return true;
		}
		else{
			return false;
		}		
	}
	
	public void register(User user){
		userDao.add(user);
	}
}
