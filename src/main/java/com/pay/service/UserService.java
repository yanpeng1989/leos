package com.pay.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pay.dao.UserImpl;
import com.pay.model.User;

@Service
public class UserService {
	@Autowired
	public UserImpl userImpl;

	public HashMap<String, String> queryUserByPassword(String username, String password) {
		HashMap<String, String> result = new HashMap<String, String>();
		User user = userImpl.queryUserByPassword(username, password);
		if (user != null) {
			result.put("username", user.getUsername());
			result.put("realname", user.getRealname());
			result.put("valid", user.getValid());
			result.put("password", user.getPassword());
			return result;
		} else {
			return result;
		}
	}
}
