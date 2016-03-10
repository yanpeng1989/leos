package com.pay.interfaces;

import java.util.List;

import com.pay.model.News;

public interface NewsInterface {
	public List<News> queryNewsByLimit();

	public News queryNewsById(String id);
}
