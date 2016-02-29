package com.pay.interfaces;

import com.pay.model.User;

public interface UserInterface {
	public User queryUserByPassword(String username, String password);
}
