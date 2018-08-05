<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>

<style type="text/css">
	.registerpage{ position: absolute;width: 400px;height: 400px;top: 80px;left:600px;background: #FFFFFF;text-align:center;padding-top:100px;}
	.body{background:#F0F0F0 ;background-color:rgba(0,152,50,0.7);}
</style>
</head>
<body class="body">
<div class="registerpage">
	<form action="register.action" method="post" >
		姓名：<br/>
		<input type="text" name="username"><br/>
		密码：<br/>
		<input type="password" name="password"><br/>
		确认密码：<br/>
		<input type="password" name="password2"><br/>
		邮箱：<br/>
		<input type="text" name="email"><br/>
		性别：<br/>
		<input type="text" name="sex"><br/>
		职业：<br/>
		<input type="text" name="profession"><br/>
		<input type="submit" value="注册"><br/>
	</form>
	<font color="red">注意：用户名和密码不能为空!</font>
</div>
</body>
</html>