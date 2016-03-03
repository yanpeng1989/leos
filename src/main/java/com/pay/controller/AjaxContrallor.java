package com.pay.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pay.service.UserService;

@Controller
@SessionAttributes({ "username", "realname", "password", "level" })
public class AjaxContrallor {
	@Autowired
	public UserService userService;

	// 登陆
	@RequestMapping(value = "login-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String login_ajax(HttpSession session, @RequestBody Map<String, String> params, Model model) {
		String username = params.get("username");
		String password = params.get("password");
		String captcha = params.get("captcha");
		HashMap<String, String> result_map = new HashMap<String, String>();
		if (captcha.equals(session.getAttribute("kaptchaExpected"))) {
			HashMap<String, String> user = userService.queryUserByPassword(username, password);
			if (user == null ? true : user.size() == 0) {
				result_map.put("result", "user_error");
			} else {
				if (user.get("valid").equals("无效")) {
					result_map.put("result", "user_invalid");
				} else {
					model.addAttribute("username", user.get("username"));
					model.addAttribute("realname", user.get("realname"));
					model.addAttribute("level", user.get("level"));
					model.addAttribute("password", user.get("password"));
					result_map.put("result", "success");
				}
			}
		} else {
			result_map.put("result", "captcha_invalid");
		}
		String result_json = "";
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result_json = objectMapper.writeValueAsString(result_map);
		} catch (Exception e) {
		}
		return result_json;
	}

	// 检测此位置是否可以发展子节点
	@RequestMapping(value = "register-map-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String register_map_ajax(HttpSession session, @RequestBody Map<String, String> params, Model model) {
		String father = params.get("father");
		String position = params.get("position");
		
		HashMap<String, String> result_map = new HashMap<String, String>();

		String result_json = "";
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result_json = objectMapper.writeValueAsString(result_map);
		} catch (Exception e) {
		}
		return result_json;
	}

	// 注册
	@RequestMapping(value = "recommend-register-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String recommend_register_ajax(HttpSession session, @RequestBody HashMap<String, String> params, Model model) {

		HashMap<String, String> result_map = new HashMap<String, String>();
		result_map.put("result", userService.insertUser(params));
		String result_json = "";
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result_json = objectMapper.writeValueAsString(result_map);
		} catch (Exception e) {
		}
		return result_json;
	}
}
