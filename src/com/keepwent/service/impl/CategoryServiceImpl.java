package com.keepwent.service.impl;

import com.keepwent.mapper.CategoryMapper;
import com.keepwent.pojo.Answer;
import com.keepwent.pojo.Answer2;
import com.keepwent.pojo.Content;
import com.keepwent.pojo.User;
import com.keepwent.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl  implements CategoryService{
	@Autowired
	CategoryMapper categoryMapper;
	

	@Override
	public boolean check(User user){
		int i= categoryMapper.check(user);
		if (i!=0){
			return true;
		}else{
			return false;
		}
	};
	@Override
	public void add(String account,String password){
		User user=new User();
		user.setAccount(account);
		user.setPassword(password);
		categoryMapper.add(user);
	}
	@Override
	public boolean login(String account,String password){
		User user=new User();
		user.setAccount(account);
		user.setPassword(password);
		int i=categoryMapper.login(user);
		if(i==0){
			return false;
		}else {
			return true;
		}
	}
	@Override
	public void addContent(String title, String message, String account, String time){
		Content content=new Content();
		content.setAccount(account);
		content.setMessage(message);
		content.setTime_(time);
		content.setTitle(title);
		categoryMapper.addContent(content);


	}
	@Override
	public List<Content> getAllContent(){

	List<Content>contents=	categoryMapper.getAllContent();
	return contents;
	}
	@Override
	public Content showOneContent(int id){
		Content content=categoryMapper.showOneContent(id);

		return content;

	}
	@Override
	public void addAnswer(int a_cid,String content,String account, String time){
		Answer answer=new Answer();
		answer.setA_account(account);
		answer.setA_cid(a_cid);
		answer.setA_message(content);
		answer.setA_time_(time);
		categoryMapper.addAnswer(answer);

	}
	@Override
	public boolean judge(String account){
		User user=new User();
		user.setAccount(account);
		int a= categoryMapper.judge(user);
		boolean b;
		if (a!=0){
			b=false;
		}else {
			b=true;
		}
		return b;

	}
	@Override
	public void addAnswer2(Answer2 answer2){
		categoryMapper.addAnswer2(answer2);
	}

}
