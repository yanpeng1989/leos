package com.pay.interfaces;

import java.util.HashMap;
import java.util.List;

import com.pay.model.News;

public interface NewsInterface {
	public List<News> queryNewsByLimit();

	public HashMap<String, String> queryNewsById(String id);
}
