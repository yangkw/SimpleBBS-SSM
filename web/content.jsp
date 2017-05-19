<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<link href="css/pure-release-0.6.1/pure-min.css" rel="stylesheet">
<link href="css/themes/default/easyui.css" rel="stylesheet">
<link href="css/themes/icon.css" rel="stylesheet">
<link href="css/themes/demo.css" rel="stylesheet">
<link href="css/pintuer/pintuer.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script src="js/jquery/2.0.0/jquery.easyui.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<meta name="viewport" content="width=device-width; initial-scale=1.4; minimum-scale=1.0; maximum-scale=2.0"/>
<style>
    body:before {
        content: ' ';
        position: fixed;
        z-index: -1;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: url(./images/c3.jpg) center 0 no-repeat;
        background-size: cover;
    }
</style>
<body>
<br>


<a href="/main.jsp"> <button type="button" class="button  border-black fadein-left" style="margin-left: 4%;">返回首页</button></a>
<br>
<br>

<div align="center" >
<div class="easyui-layout" style="width:90%;height: 144px;" align="center">
    <div id="p" data-options="region:'west'" title="ID:${sessionScope.content.account}" style="width:30%;padding:1px">
        <%--<p>楼主id:<br>${sessionScope.content.id}</p>--%>
        <p>发帖时间:<br>${sessionScope.content.time}</p>
    </div>
    <div data-options="region:'center'" title="${sessionScope.content.title}">
        ${sessionScope.content.message}
    </div>
</div>
<c:forEach items="${sessionScope.answers_}" var="c" varStatus="status">
    <div align="center">
    <div class="easyui-layout" style="width:90%;height:40%;" align="center">
        <div id="p" data-options="region:'west'" title="ID:${c.a_account}" style="width:30%;padding:1px">
            <%--<p>层主id:<br>${c.a_account}</p>--%>
            <p>回帖时间:<br>${c.a_time_}</p>
        </div>
        <div data-options="region:'center'" title="回复内容">
                ${c.a_message}
        </div>
    </div>
        <%--插入二次回复--%>
        <c:if test="${not empty c.answer2List}">



    <ul class="list-group" style="width:80%">
<c:forEach items="${c.answer2List}" var="d">
        <li class="list-group-item"><span class="badge">${d.account2}</span>${d.message2}</li>
</c:forEach>

    </ul>

    </c:if>
        <form action="/addAnswer2" method="post" class="pure-form"  >
                <%--<input type="hidden" name="user" value=${sessionScope.account}/>--%>
            <input type="hidden" name="a_cid2" value="${sessionScope.content.id}">
            <input type="hidden" name="a_id" value="${c.a_id}">
            <input  type="text" class="pure-input-1-2" name="content" placeholder="内容写在这儿" style="height: 8%;width:60%;">
            <br>
            <br>
            <input type="submit" value="插楼" class="button border-black  radius-rounded" style="width: 20%;"/>
            <br>

        </form>

    <br>
    </div>
</c:forEach>

<div align="center" style="position: relative;">
<div style=" width:100%;" >
<form action="/addAnswer" method="post" class="pure-form"  >
    <%--<input type="hidden" name="user" value=${sessionScope.account}/>--%>

    <fieldset class="pure-group">
        <input type="hidden" name="a_cid" value="${sessionScope.content.id}">
        <textarea class="pure-input-1-2" name="content" placeholder="" style="height: 20%;width:80%;"></textarea>
    </fieldset>
    <input type="submit" value="回复" class="button bg-sub radius-rounded bouncein" style="width: 35%; float: inherit;"/>

</form>

</div>
</div>
</div>
</body>