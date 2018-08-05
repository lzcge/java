<%@page import="java.io.PrintWriter"%>
<%@page import="lizhencai.bbs.answermessage"%>
<%@page import="lizhencai.bbs.Message"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帖子中心</title>
	<style type="text/css">
		.div{position:relative;width:auto;height:auto;border:0px solid #000 } 
		.div2{position:absolute;right:0px ;bottom:0px;font-size: 20px;font-family: "华文行楷"} 
		.div3{border:0px solid #F00;font-size: 30px;font-family: "华文行楷"} 
		.background{position:relative;width:auto;height:auto;border:1px solid #000}
	</style>
	
</head>


<body background="image/background.jpg">
	<jsp:useBean id="daoimp" class="lizhencai.bbs.DAOImp"></jsp:useBean>


<div Class="div3"><a href="/successlogin.jsp">回到首页</a></div><br/>
<center>
	<form action="/HomePage?choice=findmessage" id="form" name="form" method="post">
		<input type="text"style="width:400px;height:45px" name="find">
		<input type="submit" value="搜索">
	</form>
</center>


<c:forEach items="${articlelist}" var="info">
	标题：${info.title}<br/>
	内容：${info.cont}<br/>
	时间：${info.pdate}<br/>
	 <a  href='/HomePage?choice=answerarticle&id=${info.id}' >查看评论</a>
	
	<br><br><hr><br>
</c:forEach>

<span><a href="/HomePage?choice=seemessage&currentPage=1">首页</a></span>&nbsp   &nbsp  <span><a href="/HomePage?choice=seemessage&currentPage=${page.priorPage}">上一页</a> </span>  &nbsp   &nbsp     <span><a href="/HomePage?choice=seemessage&currentPage=${page.nextPage}">下一页</a> </span>  &nbsp   &nbsp   <span><a href="/HomePage?choice=seemessage&currentPage=${page.totalPage}">末页</a></span> &nbsp   &nbsp   <span> 第 ${page.currentPage}/${page.totalPage}页    总条数:${page.count}</span>



</body>
</html>