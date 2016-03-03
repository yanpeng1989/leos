package com.pay.interfaces;

import java.util.HashMap;

import com.pay.model.Bank;
import com.pay.model.User;
import com.pay.model.Wallet;

public interface UserInterface {
	public User queryUserByPassword(String username, String password);

	public Wallet queryWalletByUsername(String username);

	public Bank queryBankByUsername(String username);

	public void insertUser(User user);

	public HashMap<String, Object> queryUserByUsername(String username);

	public void updateUserRightByusername(String username, String right_som);

	public void updateUserLeftByusername(String username, String left_som);

	public void insertWallet(String username);
}
