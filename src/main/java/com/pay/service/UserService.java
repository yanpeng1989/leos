package com.pay.service;

import java.util.Calendar;
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

	// 查询资金信息
	public HashMap<String, Object> queryBankByUsername(String username) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		Bank bank = userImpl.queryBankByUsername(username);
		result.put("a_coin", bank.getBank_name());
		result.put("c_coin", bank.getName());
		result.put("cpm_coin", bank.getBank_id());
		return result;
	}

	// 检测此节点是否可以放置孩子
	public HashMap<String, Object> queryUserByUsername(String father) {
		return userImpl.queryUserByUsername(father);
	}

	// 推荐注册用户
	public String insertUser(HashMap<String, String> params) {
		String username = params.get("username");
		HashMap<String, Object> detection = userImpl.queryUserByUsername(username);
		if (detection == null ? false : detection.size() > 0) {
			return "exit";
		} else {
			Calendar calendar = Calendar.getInstance();
			String head = Long.toString(calendar.getTimeInMillis());
			String id = head;
			String level = params.get("level");
			String recommend_username = params.get("recommend_username");
			String father = params.get("father");
			String place = params.get("place");
			String password = params.get("password_1");
			String pay = params.get("pay_1");
			String realname = params.get("realname");
			String card_id = params.get("card_id");
			String tel = params.get("tel");
			// 基于父节点计算出子节点ID
			String position = params.get("position");
			HashMap<String, Object> leader = userImpl.queryUserByUsername(father);
			HashMap<String, Object> recommend = userImpl.queryUserByUsername(recommend_username);
			String leader_id = leader.get("id").toString();
			if (leader_id.length() > 13) {
				int tail = Integer.parseInt(leader_id.substring(13, leader_id.length()));
				if (position.equals("left")) {
					id = head + Integer.toString(tail * 2);
				} else {
					id = head + Integer.toString(tail * 2 + 1);
				}
			}
			User new_user = new User();
			new_user.setId(id);
			new_user.setCard_id(card_id);
			new_user.setFather(father);
			if (String.valueOf(recommend.get("key")).equals("null")) {
				new_user.setKey_path(id);
			} else {
				new_user.setKey_path(String.valueOf(recommend.get("key")) + ";" + id);
			}
			new_user.setPlace("亚太");
			new_user.setPassword(password);
			new_user.setPay(pay);
			new_user.setRealname(realname);
			new_user.setLevel(level);
			new_user.setTel(tel);
			new_user.setUsername(username);
			new_user.setPlace(place);
			new_user.setValid("有效");
			new_user.setLeft_son("");
			new_user.setRight_son("");
			userImpl.insertUser(new_user);
			userImpl.insertWallet(username);
			if (position.equals("左侧")) {
				userImpl.updateUserLeftByusername(father, username);
			} else {
				userImpl.updateUserRightByusername(father, username);
			}
			return "success";
		}
	}
}
