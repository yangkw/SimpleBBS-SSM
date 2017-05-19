<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<link href="css/pure-release-0.6.1/pure-min.css" rel="stylesheet">
<link href="css/pintuer/pintuer.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width; initial-scale=1.4; minimum-scale=1.0; maximum-scale=2.0"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<body style="background-image:url(./images/c2.jpg);background-repeat:no-repeat;
background-attachment:fixed " >
<br>
<a href="/index.jsp"> <button type="button" class="button  bg fadein-left" style="margin-left: 15%;">退出登录</button></a>
<div align="center" style="padding: 10px; margin: 0 auto;">
<table  border="0" width="80%" class="pure-table pure-table-horizontal " style="font-size:40%">
    <thead>
    <tr >
        <td width="40%">
            帖子名
        </td>
        <td width="20%">
            发帖人
        </td>
        <td width="40%">时间</td>
    </tr>
    </thead>
    <tbody>
<c:forEach items="${sessionScope.contents}" var="c" varStatus="status">


        <tr class="pure-table-odd" style="height: 5%" >


        <td>
            <a href="/show?id=${c.id}">${c.title}</a>
        </td>
        <td>
                ${c.account}
        </td>
        <td>
            ${c.time_}
        </td>

    </tr>
</c:forEach>
    </tbody>
</table>
</div>


<div align="center" style="width: 100%">
<form action="/add" method="post" class="pure-form"  style="width:100%;">
    <%--<input type="hidden" name="user" value=${sessionScope.account}/>--%>

        <fieldset class="pure-group" style="width:100%;font-size:40%">
            <input type="text" name="title" class="pure-input-1-2" placeholder="标题写在这儿" style="height:5%;width:80%;">
            <textarea class="pure-input-1-2" name="content" placeholder="内容写在这儿" style="height:15%;width:80%;"></textarea>
        </fieldset>
    <input type="submit" value="发表" class="button bg-sub radius-rounded bouncein" style="width: 30%;"/>

</form>

</div>
</body>