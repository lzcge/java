<%@page import="java.util.List"%>
<%@page import="lizhencai.bbs.Message"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="lizhencai.bbs.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>

<style type="text/css">
	.div{position:relative;width:auto;height:auto;border:0px solid #000 } 
	.div2{position:absolute;right:0px ;bottom:0px;font-size: 20px;font-family: "华文行楷"} 
	.div3{border:0px solid #F00;font-size: 30px;font-family: "华文行楷"} 
	/*.background{position:relative;width:auto;height:auto;border:1px solid #000}*/
	</style>
</head>
<body background="image/background.jpg">


<div Class="div3" ><a href="/successlogin.jsp" >回到首页</a></div>
<hr>
<font color="red">我的账号：${User.username }</font><br/>
<font color="red">我的帖子：</font><br/>
	
<c:forEach items="${findself}" var="info">
	标题：${info.title}<br/>
	内容：${info.cont}<br/>
	时间：${info.pdate}<br/>
	<a  href='/HomePage?choice=answerarticle&id=${info.id}' >查看评论</a>
	&nbsp&nbsp&nbsp<a  href='/HomePage?choice=deletearticle&id=${info.id}' >删除此贴</a>
	<br><br><hr><br>
</c:forEach>

</body>
</html>