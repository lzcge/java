<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发帖</title>


<script type="text/javascript" src="ckeditor/ckeditor.js"></script> 



<style type="text/css">
	p {
		font-weight:bold
	}

</style>


</head>
<body background="image/background.jpg">

	<p class="jive-page-title" >
		发表新主题:<br>
	</p>
	<hr color="gry">
	<form action="/HomePage?choice=sendmessage&currentPage=1" method="post">
		<p>主题：</p><input type="text" name="theme" value=""><br/>
		<hr color="gry">
		<p>内容:</p><br/>
		<textarea rows="10" cols="100" name="content" value=""></textarea><br/>
		 <script type="text/javascript">CKEDITOR.replace('content')</script>
		<input type="submit" value="发表">
	</form>
	
</body>
</html>