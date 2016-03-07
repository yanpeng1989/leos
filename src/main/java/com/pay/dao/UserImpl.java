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

	// 插入新用户
	@Override
	public void insertUser(User user) {
		sqlSessionTemplate.insert("insertUser", user);
	}

	// 基于用户登录名查询用户
	@Override
	public HashMap<String, Object> queryUserByUsername(String username) {
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		return sqlSessionTemplate.selectOne("queryUserByUsername", params);
	}

	// 向父节点右侧插入孩子
	@Override
	public void updateUserRightByusername(String username, String right_son) {
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		params.put("right_son", right_son);
		sqlSessionTemplate.update("updateUserRightByusername", params);
	}

	// 向父节点左侧插入孩子
	@Override
	public void updateUserLeftByusername(String username, String left_son) {
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		params.put("left_son", left_son);
		sqlSessionTemplate.update("updateUserLeftByusername", params);
	}

	// 注册用户时，添加钱包信息
	@Override
	public void insertWallet(String username) {
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		sqlSessionTemplate.insert("insertWallet", params);
	}

	// 更新补充银行卡信息
	@Override
	public void updateBankByUsername(HashMap<String, String> params) {
		sqlSessionTemplate.update("updateBankByUsername", params);
	}
}
