package com.pay.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pay.interfaces.NewsInterface;
import com.pay.model.News;

@Repository
public class NewsImpl implements NewsInterface {
	@Autowired
	public SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<News> queryNewsByLimit() {
		return sqlSessionTemplate.selectList("queryNewsByLimit");
	}

	@Override
	public News queryNewsById(String id) {
		HashMap<String,String> params=new HashMap<String, String>();
		params.put("id", id);
		return sqlSessionTemplate.selectOne("queryNewsById", params);
	}

}
