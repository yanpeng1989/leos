package com.pay.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pay.interfaces.UserInterface;
import com.pay.model.Bank;
import com.pay.model.User;
import com.pay.model.Wallet;

@Repository
public class UserImpl implements UserInterface {
	@Autowired
	public SqlSessionTemplate sqlSessionTemplate;

	// 用户登陆
	@Override
	public User queryUserByPassword(String username, String password) {
		HashMap<String, String> parameter = new HashMap<String, String>();
		parameter.put("username", username);
		parameter.put("password", password);
		User user = sqlSessionTemplate.selectOne("queryUserByPassword", parameter);
		return user;
	}

	// 用户钱包信息
	@Override
	public Wallet queryWalletByUsername(String username) {
		HashMap<String, String> parameter = new HashMap<String, String>();
		parameter.put("username", username);
		Wallet wallet = sqlSessionTemplate.selectOne("queryWalletByUsername", parameter);
		return wallet;
	}

	// 用户银行卡信息
	@Override
	public Bank queryBankByUsername(String username) {
		HashMap<String, String> parameter = new HashMap<String, String>();
		parameter.put("username", username);
		Bank bank = sqlSessionTemplate.selectOne("queryBankByUsername", parameter);
		return bank;
	}
}
