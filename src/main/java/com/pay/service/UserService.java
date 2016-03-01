package com.pay.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pay.dao.UserImpl;
import com.pay.model.Bank;
import com.pay.model.User;
import com.pay.model.Wallet;

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
			result.put("level", user.getLevel());
			result.put("password", user.getPassword());
			return result;
		} else {
			return result;
		}
	}

	public HashMap<String, Object> queryWalletByUsername(String username) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		Wallet wallet = userImpl.queryWalletByUsername(username);
		result.put("a_coin", wallet.getA_coin());
		result.put("c_coin", wallet.getC_coin());
		result.put("cpm_coin", wallet.getCpm_coin());
		result.put("e_coin", wallet.getE_coin());
		result.put("k_coin", wallet.getK_coin());
		result.put("sum_bonus", wallet.getSum_bonus());
		return result;
	}

	public HashMap<String, Object> queryBankByUsername(String username) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		Bank bank = userImpl.queryBankByUsername(username);
		result.put("a_coin", bank.getBank_name());
		result.put("c_coin", bank.getName());
		result.put("cpm_coin", bank.getBank_id());
		return result;
	}
}
