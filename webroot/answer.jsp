<%@page import="lizhencai.bbs.JDBC"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="lizhencai.bbs.answermessage"%>
<%@page import="lizhencai.bbs.User"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="lizhencai.bbs.Message"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<style type="text/css">
	p {
		font-weight:bold
	}

</style>


</head>
<body background="image/background.jpg" onload="Time()">

	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
	%>
	
	<div Class="div3"><a href="/article.jsp" >返回帖子</a></div> 

	    
		<form action="/HomePage?choice=answer&id=<%=id %>" method="post">
			<p>内容:</p><br/>
			<textarea rows="10" cols="100" name="content" value=""></textarea><br/>
			<input type="submit" value="发表">
		</form>
	    
	    
	 

	
	 
</body>
</html>