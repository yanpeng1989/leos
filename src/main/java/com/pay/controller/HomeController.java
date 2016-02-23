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

}
