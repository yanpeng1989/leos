package com.pay.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pay.dao.NewsImpl;
import com.pay.model.News;

@Service
public class NewsService {
	@Autowired
	public NewsImpl newsImpl;

	public List<News> queryNewsByLimit() {
		return newsImpl.queryNewsByLimit();
	}

	public HashMap<String, String> queryNewsById(String id) {
		return newsImpl.queryNewsById(id);
	}
}
