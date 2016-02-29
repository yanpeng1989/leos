package com.pay.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pay.service.UserService;

@Controller
public class HomeController {
	@Autowired
	public UserService userService;

	@RequestMapping(value = "index")
	public String index(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "user")
	public String user(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "user";
		}
	}

	@RequestMapping(value = "password")
	public String password(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "password";
		}
	}

	@RequestMapping(value = "binding")
	public String binding(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "binding";
		}
	}

	@RequestMapping(value = "update")
	public String update(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "update";
		}
	}

	@RequestMapping(value = "numbership")
	public String numbership(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "numbership";
		}
	}

	@RequestMapping(value = "recommend-map")
	public String recommend_map(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "recommend-map";
		}
	}

	@RequestMapping(value = "recommend-register")
	public String recommend_register(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "recommend-register";
		}
	}

	@RequestMapping(value = "recommend")
	public String recommend(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "recommend";
		}
	}

	@RequestMapping(value = "bonus")
	public String bonus(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "bonus";
		}
	}

	@RequestMapping(value = "pair")
	public String pair(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "pair";
		}
	}

	@RequestMapping(value = "send")
	public String send(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "send";
		}
	}

	@RequestMapping(value = "coin-status")
	public String coin_status(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "coin-status";
		}
	}

	@RequestMapping(value = "coin-trade")
	public String coin_trade(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "coin-trade";
		}
	}

	@RequestMapping(value = "coin-trade-status")
	public String coin_trade_status(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "coin-trade-status";
		}
	}

	@RequestMapping(value = "coin-purchase")
	public String coin_purchase(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "coin-purchase";
		}
	}

	@RequestMapping(value = "coin-sell")
	public String coin_sell(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "coin-sell";
		}
	}

	@RequestMapping(value = "k-trade-status")
	public String k_trade_status(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "k-trade-status";
		}
	}

	@RequestMapping(value = "k-purchase")
	public String k_purchase(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "k-purchase";
		}
	}

	@RequestMapping(value = "k-sell")
	public String k_sell(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "k-sell";
		}
	}

	@RequestMapping(value = "active-coin-transfer")
	public String active_coin_transfer(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "active-coin-transfer";
		}
	}

	@RequestMapping(value = "custody-coin-transfer")
	public String custody_coin_transfer(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "custody-coin-transfer";
		}
	}

	@RequestMapping(value = "coin-to-active")
	public String coin_to_active(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "coin-to-active";
		}
	}

	@RequestMapping(value = "note")
	public String note(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "note";
		}
	}

	@RequestMapping(value = "log")
	public String log(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "log";
		}
	}

	@RequestMapping(value = "faq")
	public String faq(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "faq";
		}
	}

	@RequestMapping(value = "login")
	public String login(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			model.addAttribute("realname", realname);
			return "login";
		} else {
			return "login";
		}
	}

	@RequestMapping(value = "test")
	public String test(HttpSession session, Model model) {
		return "test";
	}

}
