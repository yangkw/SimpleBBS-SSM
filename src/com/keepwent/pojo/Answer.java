package com.keepwent.pojo;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15 0015.
 */
public class Answer {
    int a_id;
    int a_cid;//给谁说的
    String a_account;//谁说的
    String a_message;
    String a_time_;
    int a_hid;

    public List<Answer2> getAnswer2List() {
        return answer2List;
    }

    public void setAnswer2List(List<Answer2> answer2List) {
        this.answer2List = answer2List;
    }

    List<Answer2> answer2List;

    public int getA_hid() {
        return a_hid;
    }

    public void setA_hid(int a_hid) {
        this.a_hid = a_hid;
    }




    public int getA_id() {
        return a_id;
    }

    public void setA_id(int a_id) {
        this.a_id = a_id;
    }

    public int getA_cid() {
        return a_cid;
    }

    public void setA_cid(int a_cid) {
        this.a_cid = a_cid;
    }

    public String getA_account() {
        return a_account;
    }

    public void setA_account(String a_account) {
        this.a_account = a_account;
    }

    public String getA_message() {
        return a_message;
    }

    public void setA_message(String a_message) {
        this.a_message = a_message;
    }

    public String getA_time_() {
        return a_time_;
    }

    public void setA_time_(String a_time_) {
        this.a_time_ = a_time_;
    }



}
