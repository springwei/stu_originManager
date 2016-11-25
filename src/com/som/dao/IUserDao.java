package com.som.dao;

import com.som.entity.User;

public interface IUserDao {
	public User find(User user);
	public void add(User user);
}
