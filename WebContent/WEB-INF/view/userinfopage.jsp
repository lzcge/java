<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	.userinfopage{ position: absolute;width: 400px;height: 400px;top: 80px;left:600px;background: #FFFFFF;padding-top:120px;}
	.userinfo{ position: absolute;width: 200px;height: 60px;top: 5px;left:100px;background: #FFFFFF;text-align:center;padding-top:20px;}
	.add{text-decoration : none;position: absolute;width: 100px;height: 30px;top: 460px;left:140px;background: #FFFFFF;text-align:center;padding-top:20px;}
	.body{background:#F0F0F0 ;background-color:#F5DEB3;}
</style>

</head>


<body class="body">
<div >
</div>
<div class="userinfopage">
	<h2 class="userinfo">用户信息</h2><hr>
	<b  style="color:#CD853F">用户名:</b>${userCustom.username }<br/><br/><br/><br/>
	<b  style="color:#CD853F">性别:</b>${userCustom.sex }<br/><br/><br/><br/>
	<b  style="color:#CD853F">邮箱:</b>${userCustom.email }<br/><br/><br/><br/>
	<b  style="color:#CD853F">职业:</b>${userCustom.profession }<br/><br/><br/>
	<hr>
	<a  class="add" href="insertUserFollow.action?follow_username=${userCustom.username }"><b style="color:#CD853F;font-size:20px">关注</b></a>
</div>
</body>
</html>