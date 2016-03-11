package com.pay.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pay.model.User;
import com.pay.service.NewsService;
import com.pay.service.UserService;

@Controller
public class HomeController {
	@Autowired
	public UserService userService;
	@Autowired
	public NewsService newsService;

	@RequestMapping(value = "index")
	public String index(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			model.addAttribute("wallet", userService.queryWalletByUsername(username));
			model.addAttribute("news", newsService.queryNewsByLimit());
			return "index";
		}
	}

	@RequestMapping(value = "user")
	public String user(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			model.addAttribute("user", userService.queryUserByUsername(username));
			model.addAttribute("bank", userService.queryBankByUsername(username));
			return "user";
		}
	}

	@RequestMapping(value = "password")
	public String password(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "password";
		}
	}

	@RequestMapping(value = "binding")
	public String binding(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			model.addAttribute("binding", userService.getListBindingByUsername(username));
			return "binding";
		}
	}

	@RequestMapping(value = "update")
	public String update(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			HashMap<String, Object> user = userService.queryUserByUsername(username);
			String level = String.valueOf(user.get("level"));
			model.addAttribute("level", level);
			model.addAttribute("wallet", userService.queryWalletByUsername(username));
			return "update";
		}
	}

	@RequestMapping(value = "numbership")
	public String numbership(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "numbership";
		}
	}

	@RequestMapping(value = "recommend-map")
	public String recommend_map(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "recommend-map";
		}
	}

	@RequestMapping(value = "recommend-register", method = RequestMethod.GET)
	public String recommend_register(HttpSession session, Model model, @RequestParam(value = "father") String father, @RequestParam(value = "position") String position) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			model.addAttribute("username", username);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			model.addAttribute("father", father);
			model.addAttribute("position", position);
			return "recommend-register";
		}
	}

	@RequestMapping(value = "recommend")
	public String recommend(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			model.addAttribute("list", userService.queryUserByLeader(username, null));
			return "recommend";
		}
	}

	@RequestMapping(value = "bonus")
	public String bonus(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "bonus";
		}
	}

	@RequestMapping(value = "pair")
	public String pair(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "pair";
		}
	}

	@RequestMapping(value = "send")
	public String send(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "send";
		}
	}

	@RequestMapping(value = "coin-status")
	public String coin_status(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "coin-status";
		}
	}

	@RequestMapping(value = "coin-trade")
	public String coin_trade(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "coin-trade";
		}
	}

	@RequestMapping(value = "coin-trade-status")
	public String coin_trade_status(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "coin-trade-status";
		}
	}

	@RequestMapping(value = "coin-purchase")
	public String coin_purchase(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "coin-purchase";
		}
	}

	@RequestMapping(value = "coin-sell")
	public String coin_sell(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "coin-sell";
		}
	}

	@RequestMapping(value = "k-trade-status")
	public String k_trade_status(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "k-trade-status";
		}
	}

	@RequestMapping(value = "k-purchase")
	public String k_purchase(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "k-purchase";
		}
	}

	@RequestMapping(value = "k-sell")
	public String k_sell(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "k-sell";
		}
	}

	@RequestMapping(value = "active-coin-transfer")
	public String active_coin_transfer(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "active-coin-transfer";
		}
	}

	@RequestMapping(value = "custody-coin-transfer")
	public String custody_coin_transfer(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "custody-coin-transfer";
		}
	}

	@RequestMapping(value = "coin-to-active")
	public String coin_to_active(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "coin-to-active";
		}
	}

	@RequestMapping(value = "note")
	public String note(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "note";
		}
	}

	@RequestMapping(value = "log")
	public String log(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "log";
		}
	}

	@RequestMapping(value = "faq")
	public String faq(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "faq";
		}
	}

	@RequestMapping(value = "login")
	public String login(HttpSession session, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		String realname = String.valueOf(session.getAttribute("realname"));
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("realname", realname);
			String level = String.valueOf(session.getAttribute("level"));
			model.addAttribute("level", level);
			return "login";
		}
	}

	@RequestMapping(value = "detail")
	public String detail(HttpSession session, Model model, HttpServletRequest request) {
		String username = String.valueOf(session.getAttribute("username"));
		String news_id = request.getParameter("new_id");
		System.out.println(newsService.queryNewsById(news_id).getComment());
		if (username.equals("null")) {
			return "login";
		} else {
			model.addAttribute("comment", newsService.queryNewsById(news_id).getComment());
			model.addAttribute("title", newsService.queryNewsById(news_id).getTitle());
			model.addAttribute("temps", newsService.queryNewsById(news_id).getTemps());
			return "detail";
		}
	}

	@RequestMapping(value = "test")
	public String test(HttpSession session, Model model) {
		return "test";
	}

}
