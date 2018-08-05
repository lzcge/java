
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
  <head>
    <title>$Title$</title>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script> 



<style type="text/css">
	p {
		font-weight:bold
	}
	.logo{font-size: 60px;color: aquamarine;font-weight:bolder;font-family:楷体;position: absolute; top: 20px;left:120px; }
	.sendmessagepage{ position: absolute;width: 800px;height: 700px;top: 80px;left:400px;background: #FFFFFF;text-align:center;padding-top:100px;}
	.body{background:#F0F0F0 ;background-color:#FFFACD;}
</style>




</head>
<body class="body">
<div class="sendmessagepage">
	<p class="jive-page-title" >
		发表新帖<br>
	</p>
	<hr color="gry">
	<form action="addarticle.action" method="post">
		<p>主题</p><textarea name="title" cols="70"></textarea><br/>		
		<hr color="rgba">
		<p>内容</p><br/>
		<textarea name="content" rows="100" cols="100"></textarea><br/>
		 <script type="text/javascript">CKEDITOR.replace('content')</script>
		<input type="submit" value="发表">		
	</form>
</div>
  </body>
</html>
