package com.pay.model;

import java.io.Serializable;

public class User implements Serializable {

	/**
	 * 用户信息
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String username;
	private String password;
	private String pay;
	private String realname;
	private String card_id;
	private String tel;
	private String father;
	private String left_son;
	private String right_son;
	private String level;
	private String place;
	private String key_path;
	private String valid;

	public String getValid() {
		return valid;
	}

	public void setValid(String valid) {
		this.valid = valid;
	}

	private String temps;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getCard_id() {
		return card_id;
	}

	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFather() {
		return father;
	}

	public void setFather(String father) {
		this.father = father;
	}

	public String getLeft_son() {
		return left_son;
	}

	public void setLeft_son(String left_son) {
		this.left_son = left_son;
	}

	public String getRight_son() {
		return right_son;
	}

	public void setRight_son(String right_son) {
		this.right_son = right_son;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getKey_path() {
		return key_path;
	}

	public void setKey_path(String key_path) {
		this.key_path = key_path;
	}

	public String getTemps() {
		return temps;
	}

	public void setTemps(String temps) {
		this.temps = temps;
	}

}
