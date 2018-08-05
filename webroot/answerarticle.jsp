<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="lizhencai.bbs.answermessage"%>
<%@page import="lizhencai.bbs.User"%>
<%@page import="lizhencai.bbs.Message"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib  uri="http://lizhencai/myfunction" prefix="myfunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帖子中心</title>

<style type="text/css">
	.div{position:relative;width:900px;height:auto;border:1px solid #000 }
	.div2{position:absolute;right:0px ;bottom:0px;font-size: 20px;font-family: "华文行楷"} 
	.div3{border:0px solid #F00;font-size: 30px;font-family: "华文行楷";color: red} 
	
</style>

</head>

	
	
	
<body background="image/background.jpg">

	<c:forEach items="${answerarticle}" var="info">
		评论内容：${info.content}<br/>
		评论用户：${info.username}<br/>
		<br><br><hr><br>
	</c:forEach>
	
	<div Class="div3" ><a href="/HomePage?choice=seemessage" >返回帖子</a></div>
	<hr>
	
	<div Class="div3"><a href="/answer.jsp?id=${id }" >我要留言</a></div> 

</body>
</html>