package com.pay.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@SessionAttributes({ "user" })
public class AjaxContrallor {
	@RequestMapping(value = "login-ajax", method = RequestMethod.POST)
	@ResponseBody
	public String login_ajax(HttpSession session, @RequestBody Map<String, String> params) {
		String user = params.get("user");
		String password = params.get("password");
		String captcha = params.get("captcha");
		HashMap<String, String> result_map = new HashMap<String, String>();
		if (captcha.equals(session.getAttribute("kaptchaExpected"))) {
			
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
}
