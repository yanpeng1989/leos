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
		HashMap<String, String> result_map = new HashMap<String, String>();
		String father = params.get("father");
		String position = params.get("position");
		HashMap<String, Object> user = userService.queryUserByUsername(father);
		if (user == null ? false : user.size() > 0) {
			String right_son = String.valueOf(user.get("right_son"));
			String left_son = String.valueOf(user.get("left_son"));
			if (position.equals("right")) {
				if (right_son == null) {
					result_map.put("result", "ok");
				} else {
					result_map.put("result", "no");
				}
			} else {
				if (left_son == null) {
					result_map.put("result", "ok");
				} else {
					result_map.put("result", "no");
				}
			}
		} else {
			// 无此节点
			result_map.put("result", "none");
		}

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

	// 更新银行卡信息
	@RequestMapping(value = "user-bank-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String user_bank_ajax(HttpSession session, @RequestBody HashMap<String, String> params, Model model) {
		String username = String.valueOf(session.getAttribute("username"));
		params.put("username", username);
		HashMap<String, String> result_map = new HashMap<String, String>();
		if (userService.queryBankByUsername(username).get("bank_name").equals("null")) {
			userService.updateBankByUsername(params);
			result_map.put("result", "success");
		} else {
			result_map.put("result", "error");
		}
		String result_json = "";
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result_json = objectMapper.writeValueAsString(result_map);
		} catch (Exception e) {
		}
		return result_json;
	}

	// 更新登陆密码
	@RequestMapping(value = "pwd-update-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String pwd_update_ajax(HttpSession session, @RequestBody HashMap<String, String> params) {
		String username = String.valueOf(session.getAttribute("username"));
		params.put("username", username);
		params.put("password", params.get("new_p1"));
		HashMap<String, String> result_map = new HashMap<String, String>();
		if (userService.queryUserByUsername(username).get("password").equals(params.get("now_p"))) {
			userService.updatePwdPayByUsername(params, "password");
			result_map.put("result", "success");
		} else {
			result_map.put("result", "error");
		}
		String result_json = "";
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result_json = objectMapper.writeValueAsString(result_map);
		} catch (Exception e) {
		}
		return result_json;
	}

	// 更新支付密码
	@RequestMapping(value = "pay-update-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String pay_update_ajax(HttpSession session, @RequestBody HashMap<String, String> params) {
		String username = String.valueOf(session.getAttribute("username"));
		params.put("username", username);
		params.put("pay", params.get("pay_new1"));
		HashMap<String, String> result_map = new HashMap<String, String>();
		if (userService.queryUserByUsername(username).get("pay").equals(params.get("pay_now"))) {
			userService.updatePwdPayByUsername(params, "pay");
			result_map.put("result", "success");
		} else {
			result_map.put("result", "error");
		}
		String result_json = "";
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result_json = objectMapper.writeValueAsString(result_map);
		} catch (Exception e) {
		}
		return result_json;
	}

	// 绑定账户
	@RequestMapping(value = "binding-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String binding_ajax(HttpSession session, @RequestBody HashMap<String, String> params) {
		String username = String.valueOf(session.getAttribute("username"));
		String binding = params.get("username");

		HashMap<String, String> result_map = new HashMap<String, String>();
		if (userService.queryUserByPassword(params.get("username"), params.get("password")).isEmpty()) {
			result_map.put("result", "error");
		} else {
			String temps = String.valueOf(userService.queryUserByUsername(username).get("binding"));
			if (!temps.equals("null")) {
				binding = userService.queryUserByUsername(username).get("binding") + "," + binding;
			}
			userService.updateBindingByUsername(username, binding);
			result_map.put("result", "success");
		}
		String result_json = "";
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			result_json = objectMapper.writeValueAsString(result_map);
		} catch (Exception e) {
		}
		return result_json;
	}
}
