<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false" %>
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<link href="css/pure-release-0.6.1/pure-min.css" rel="stylesheet">
<link href="css/pintuer/pintuer.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width; initial-scale=1.4; minimum-scale=1.0; maximum-scale=2.0"/>
<body style="background-image:url(./images/patrick-hendry-141290.jpg);background-repeat:no-repeat;
background-attachment:fixed " >
<div align="center" style="
       position: relative;
            top: 40%;
            left: 58%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);  ">

    <form action="/login" method="post" class="pure-form pure-form-aligned" style="width: 80%">
        <fieldset>

            <div class="pure-control-group field ">
                <label for="name">帐号:</label>
                <input id="name"  name="account" type="text" placeholder="Username">
            </div>

            <div class="pure-control-group">
                <label for="password">密码:</label>
                <input id="password" type="password" name="password" placeholder="Password">
            </div>
            <div class="pure-controls">
            <input type="submit" value="登陆" class="button border-sub bouncein"/>
            <a href="/register.jsp"> <button type="button" class="button border-main bouncein">注册</button></a>
            </div>
        </fieldset>
    </form>

    <p class="bg-warning">${result}</p>

    <%--<div><a href="register.jsp">注册用户</a></div>--%>

</div>
</body>
