<%@page import="lizhencai.bbs.Message"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="lizhencai.bbs.JDBC"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="lizhencai.bbs.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="daoimp" class="lizhencai.bbs.DAOImp"></jsp:useBean>

<c:forEach items="${findarticlelist}" var="info">
	标题：${info.title}<br/>
	内容：${info.cont}<br/>
	时间：${info.pdate}<br/>
	<a  href='/HomePage?choice=answerarticle&id=${info.id}' >查看评论</a>
	<br><br><hr><br>
</c:forEach>

</body>
</html>