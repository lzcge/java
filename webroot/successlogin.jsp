<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="lizhencai.bbs.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

a{text-decoration:none;font-family: "华文行楷"}
</style>
</head>
<body background="image/background.jpg">
	<font size="5">欢迎访问！亲爱的</font>
	<font size="7" color="red">${User.username}</font><br/>
	
	<center >
		   <a href="/HomePage?choice=seemessage&currentPage=1"><font size="7" color="DarkSlateBlue">浏览</font></a>
		   &nbsp&nbsp&nbsp<a href="SendMessage.jsp"><font size="7" color="DarkSlateBlue">发帖</font></a>
		   &nbsp&nbsp&nbsp<a href="/HomePage?choice=self"><font size="7">个人</font></a>
		
	</center>
	
</body>
</html>