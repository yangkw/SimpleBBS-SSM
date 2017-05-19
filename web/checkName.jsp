<%@ page import="com.keepwent.controller.CategoryController" %>
<%@ page import="com.keepwent.pojo.User" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%
    String name = request.getParameter("account");
    ApplicationContext ctx =
            WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
    CategoryController controller = (CategoryController) ctx.getBean("controller");
//    CategoryController cs=new CategoryController();
   User user=new User();
   user.setAccount(name);
  boolean i= controller.check(user);
//    response.sendRedirect("/check");
//    boolean i= (boolean) request.getAttribute("i");
// boolean i=true;
    if(i)
        out.print("<font color='red'>已经存在</font>");
    else
        out.print("<font color='green'>可以使用</font>");

%>