package com.pay.model;

import java.io.Serializable;

public class Bank implements Serializable {
	/**
	 * 用户银行卡信息
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String name;
	private String bank_id;
	private String bank_name;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBank_id() {
		return bank_id;
	}

	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
	}

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

}
