package com.pay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "index")
	public String index() {
		return "index";
	}

	@RequestMapping(value = "user")
	public String user() {
		return "user";
	}

	@RequestMapping(value = "password")
	public String password() {
		return "password";
	}

	@RequestMapping(value = "binding")
	public String binding() {
		return "binding";
	}

	@RequestMapping(value = "update")
	public String update() {
		return "update";
	}

	@RequestMapping(value = "numbership")
	public String numbership() {
		return "numbership";
	}

	@RequestMapping(value = "recommend-register")
	public String recommend_register() {
		return "recommend-register";
	}

	@RequestMapping(value = "recommend")
	public String recommend() {
		return "recommend";
	}

	@RequestMapping(value = "bonus")
	public String bonus() {
		return "bonus";
	}

	@RequestMapping(value = "pair")
	public String pair() {
		return "pair";
	}

	@RequestMapping(value = "send")
	public String send() {
		return "send";
	}

	@RequestMapping(value = "coin-status")
	public String coin_status() {
		return "coin-status";
	}

	@RequestMapping(value = "coin-trade")
	public String coin_trade() {
		return "coin-trade";
	}

	@RequestMapping(value = "coin-trade-status")
	public String coin_trade_status() {
		return "coin-trade-status";
	}

	@RequestMapping(value = "coin-purchase")
	public String coin_purchase() {
		return "coin-purchase";
	}

	@RequestMapping(value = "coin-sell")
	public String coin_sell() {
		return "coin-sell";
	}

	@RequestMapping(value = "k-trade-status")
	public String k_trade_status() {
		return "k-trade-status";
	}

	@RequestMapping(value = "k-purchase")
	public String k_purchase() {
		return "k-purchase";
	}

	@RequestMapping(value = "k-sell")
	public String k_sell() {
		return "k-sell";
	}

	@RequestMapping(value = "active-coin-transfer")
	public String active_coin_transfer() {
		return "active-coin-transfer";
	}

	@RequestMapping(value = "custody-coin-transfer")
	public String custody_coin_transfer() {
		return "custody-coin-transfer";
	}

	@RequestMapping(value = "coin-to-active")
	public String coin_to_active() {
		return "coin-to-active";
	}

	@RequestMapping(value = "note")
	public String note() {
		return "note";
	}

	@RequestMapping(value = "log")
	public String log() {
		return "log";
	}

	@RequestMapping(value = "faq")
	public String faq() {
		return "faq";
	}
	@RequestMapping(value = "login")
	public String login() {
		return "login";
	}

}
