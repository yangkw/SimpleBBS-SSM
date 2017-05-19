package com.keepwent.controller;


import com.keepwent.pojo.Answer;
import com.keepwent.pojo.Answer2;
import com.keepwent.pojo.Content;
import com.keepwent.pojo.User;
import com.keepwent.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class CategoryController {
	@Autowired
	CategoryService categoryService;


	@RequestMapping("register")
	public ModelAndView register(String account,String password){
		boolean b=categoryService.judge(account);
		if (b) {
			categoryService.add(account, password);
			ModelAndView mav = new ModelAndView("index.jsp");


			return mav;
		}else {
			ModelAndView mav = new ModelAndView("register.jsp");
			mav.addObject("result","此帐号已存在");

			return mav;

		}
	}
	@RequestMapping("check")
	public boolean check(User user){
		boolean i=categoryService.check(user);

		// 放入jsp路径

		return i;

	}
	@RequestMapping("login")
	public ModelAndView  login(String account, String password, HttpSession session){
	boolean b=	categoryService.login(account,password);
	if (b) {
		ModelAndView mav = new ModelAndView("redirect:/main.jsp");

		session.setAttribute("account",account);
		List<Content> contents=categoryService.getAllContent();
		session.setAttribute("contents",contents);
		return mav;
	}else{
		ModelAndView mav = new ModelAndView("index.jsp");
		mav.addObject("result","登录失败请再试试");
		return mav;
	}
	}
	@RequestMapping("add")
	public ModelAndView add(String title, String content, HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/main.jsp");
		String account= (String) session.getAttribute("account");
		Date today=new Date();
		SimpleDateFormat f=new SimpleDateFormat("yyyy MM dd HH:mm:ss");
		String time=f.format(today);
		categoryService.addContent(title,content,account,time);

		List<Content> contents=categoryService.getAllContent();
		session.setAttribute("contents",contents);
		return mav;
	}
	@RequestMapping("show")
	public ModelAndView show(int id,HttpSession session){
		ModelAndView mav = new ModelAndView("redirect:/content.jsp");

		Content content=categoryService.showOneContent(id);

		Map<String,Object> content1=new HashMap<>();
		content1.put("id",content.getId());
		content1.put("account",content.getAccount());
		content1.put("title",content.getTitle());
		content1.put("time",content.getTime_());
		content1.put("message",content.getMessage());
		List<Answer> answers=content.getAnswers();
		session.setAttribute("content",content1);
		session.setAttribute("answers_",answers);
		return mav;
	}
	@RequestMapping("addAnswer")
	public ModelAndView  addAnswer(int a_cid,String content,HttpSession session){
		ModelAndView mav = new ModelAndView("redirect:/show?id="+a_cid);
		String account= (String) session.getAttribute("account");

		Date today=new Date();
		SimpleDateFormat f=new SimpleDateFormat("MM dd HH:mm:ss");
		String time=f.format(today);
		categoryService.addAnswer(a_cid,content,account,time);
		return mav;
	}
	@RequestMapping("addAnswer2")
	public ModelAndView addAnswer2(int a_id,int a_cid2 ,String content,HttpSession session){
		ModelAndView mav = new ModelAndView("redirect:/show?id="+a_cid2);
		String account= (String) session.getAttribute("account");
		Date today=new Date();
		SimpleDateFormat f=new SimpleDateFormat("MM dd HH:mm:ss");
		String time=f.format(today);
		Answer2 answer2=new Answer2();
		answer2.setAccount2(account);
		answer2.setAid2(a_id);
		answer2.setMessage2(content);
		answer2.setTime2(time);

		categoryService.addAnswer2(answer2);
		return mav;
	}
}

