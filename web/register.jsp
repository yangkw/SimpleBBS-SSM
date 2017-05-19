<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false" %>
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<link href="css/pure-release-0.6.1/pure-min.css" rel="stylesheet">
<link href="css/pintuer/pintuer.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width; initial-scale=1.4; minimum-scale=1.0; maximum-scale=2.0"/>
<body style="background-image:url(./images/mike-dennler-173199.jpg);background-repeat:no-repeat;
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
    <%--<form action="/register" method="post" class="pure-form pure-form-aligned">--%>
        <%--<div class="pure-control-group">--%>
            <%--<label for="account">帐号:</label>--%>
            <%--<input id="account" name="account" onkeyup="check()" type="text" class="form-control" style="width:13%"/>--%>
        <%--</div>--%>


        <%--<span id="checkResult"></span>--%>
        <%--<div class="pure-control-group">--%>
        <%--<label for="password">密码:</label>--%>
      <%--<input id="password" type="password" name="password" class="form-control" style="width:13%"/>--%>
        <%--</div>--%>
        <%--<br>--%>
        <%--<input type="submit" value="注册" class="btn button border-black bouncein" />--%>
    <%--</form>--%>
        <form action="/register" method="post" class="pure-form pure-form-aligned" style="width: 80%">
            <fieldset>

                <div class="pure-control-group field ">
                    <label for="account">帐号:</label>
                    <input id="account" name="account" onkeyup="check()" type="text" placeholder="Username">
                </div>
                <span id="checkResult"></span>
                <div class="pure-control-group">
                    <label for="password">密码:</label>
                    <input id="password" type="password" name="password" placeholder="Password">
                </div>
                <div class="pure-controls">

                    <input type="submit" value="注册" class="btn button border-black bouncein" />
                </div>
            </fieldset>
        </form>
    <b>${result}</b>

</div>


<script>
    var xmlhttp;
    function check(){
        var account = document.getElementById("account").value; //获取输入的值
        var url = "checkName.jsp?account="+account;
        xmlhttp =new XMLHttpRequest();
        xmlhttp.onreadystatechange=checkResult; //响应函数
        xmlhttp.open("GET",url,true);   //设置访问的页面
        xmlhttp.send(null);  //执行访问
    }

    function checkResult(){
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
            document.getElementById('checkResult').innerHTML=xmlhttp.responseText;
    }
</script>
</body>