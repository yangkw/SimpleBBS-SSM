package com.keepwent.service;

import com.keepwent.pojo.Answer2;
import com.keepwent.pojo.Content;
import com.keepwent.pojo.User;

import java.util.List;

public interface CategoryService {



	boolean check(User user);
	void add(String account,String password);
	boolean login(String account,String password);
	void addContent(String title, String message, String account, String time);
	List<Content> getAllContent();
	Content showOneContent(int id);
	void addAnswer(int a_cid,String content,String account, String time);
	boolean judge(String account);
	void addAnswer2(Answer2 answer2);
}
