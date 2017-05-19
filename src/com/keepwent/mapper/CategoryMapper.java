package com.keepwent.mapper;

import com.keepwent.pojo.Answer;
import com.keepwent.pojo.Answer2;
import com.keepwent.pojo.Content;
import com.keepwent.pojo.User;

import java.util.List;
 
public interface CategoryMapper {

    public int check(User user);
    public void add(User user);
    public int login(User user);
    public void addContent(Content content);
    public List<Content> getAllContent();
    public Content showOneContent(int id);
    public void addAnswer(Answer answer);
    public int judge(User user);
    public void addAnswer2(Answer2 answer2);
}