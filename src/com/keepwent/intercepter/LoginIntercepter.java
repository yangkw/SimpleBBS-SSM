package com.keepwent.intercepter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Administrator on 2017/5/14 0014.
 */
public class LoginIntercepter implements HandlerInterceptor {

    private List<String> allowdPass;
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
    String url=httpServletRequest.getRequestURL().toString();
    Object user=httpServletRequest.getSession().getAttribute("user");
    if(user!=null){
       return true;
    }
//        for(String temp:allowdPass){
//            if(url.endsWith(temp)){
//                System.out.println("cross");
//                return true;
//            }
//        }
        httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/index.jsp");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }

    public void setAllowdPass(List<String> allowdPass) {
        this.allowdPass = allowdPass;
    }
}
