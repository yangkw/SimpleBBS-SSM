package com.keepwent.pojo;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15 0015.
 */
public class Content {
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answer> answers) {
        this.answers = answers;
    }

      Integer id;
      String account;
      String title;
      String message;
    String time_;
    List<Answer> answers;

    public String getTime_() {
        return time_;
    }

    public void setTime_(String time) {
        this.time_ = time;
    }



}
