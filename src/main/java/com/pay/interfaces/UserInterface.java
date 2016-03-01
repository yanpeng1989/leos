package com.pay.interfaces;

import com.pay.model.User;
import com.pay.model.Wallet;

public interface UserInterface {
	public User queryUserByPassword(String username, String password);
	public Wallet queryWalletByUsername(String username);
}
