package com.pay.model;

import java.io.Serializable;

public class Wallet implements Serializable {
	/**
	 * 钱包
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private double sum_bonus;
	private double k_coin;
	private double a_coin;
	private double e_coin;
	private double c_coin;
	private double cpm_coin;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public double getSum_bonus() {
		return sum_bonus;
	}

	public void setSum_bonus(double sum_bonus) {
		this.sum_bonus = sum_bonus;
	}

	public double getK_coin() {
		return k_coin;
	}

	public void setK_coin(double k_coin) {
		this.k_coin = k_coin;
	}

	public double getA_coin() {
		return a_coin;
	}

	public void setA_coin(double a_coin) {
		this.a_coin = a_coin;
	}

	public double getE_coin() {
		return e_coin;
	}

	public void setE_coin(double e_coin) {
		this.e_coin = e_coin;
	}

	public double getC_coin() {
		return c_coin;
	}

	public void setC_coin(double c_coin) {
		this.c_coin = c_coin;
	}

	public double getCpm_coin() {
		return cpm_coin;
	}

	public void setCpm_coin(double cpm_coin) {
		this.cpm_coin = cpm_coin;
	}

}
