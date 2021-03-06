package com.pay.interfaces;

import java.util.HashMap;
import java.util.List;

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

	public void updateBankByUsername(HashMap<String, String> params);

	public void updatePasswordByUsername(HashMap<String, String> params);

	public void updatePayByUsername(HashMap<String, String> params);

	public void updateBindingByUsername(HashMap<String, String> params);

	public void updateLevelByUsername(HashMap<String, String> params);

	public void updateWalletK_coinByUsername(HashMap<String, String> params);

	public List<User> queryUserByLeader(String leader,String username);
}
