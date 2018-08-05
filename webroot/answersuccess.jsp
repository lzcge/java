<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="lizhencai.bbs.User"%>
<%@page import="lizhencai.bbs.answermessage"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="lizhencai.bbs.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">  
    var time = 4;  
    function Time() {  
        window.setTimeout('Time()', 1000);  
        time = time - 1;  
        document.getElementById("layer").innerHTML = time;  
    }  
</script> 



</head>
<body onload="Time()">

	<jsp:useBean id="jdbc" class="lizhencai.bbs.JDBC"></jsp:useBean>
	<jsp:useBean id="daoimp" class="lizhencai.bbs.DAOImp"></jsp:useBean>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String id = (String)request.getAttribute("id");
		
	%>
	    <font>评论成功</font>
	    <span id="layer">3</span>秒后，转入评论区。  
		<%
		 response.setHeader("Refresh", "3;URL=HomePage?choice=answerarticle&id="+id); 
		%>

</body>
</html>