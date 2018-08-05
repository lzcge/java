<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
</head>
<body>
	<form action="/UserServlet?cmd=saveuser" method="post" >
		姓名：<br/>
		<input type="text" name="username"><br/>
		密码：<br/>
		<input type="password" name="password"><br/>
		确认密码：<br/>
		<input type="password" name="password2"><br/>
		<input type="submit" value="注册"><br/>
	</form>
	<font color="red">注意：用户名和密码不能为空!</font>
</body>
</html>