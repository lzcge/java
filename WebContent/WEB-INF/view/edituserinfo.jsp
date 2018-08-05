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
	.myarticle{text-decoration : none;position: absolute;width: 80px;height: 30px;top: 430px;left:60px;background: #FFFFFF;text-align:center;padding-top:20px;}
	.updateinfo{text-decoration : none;position: absolute;width: 80px;height: 30px;top: 430px;left:160px;background: #FFFFFF;text-align:center;padding-top:20px;}
	.add{text-decoration : none;position: absolute;width: 80px;height:40px;top: 430px;left:150px;background: #FFFFFF;text-align:center;padding-top:7px;}
	.body{background:#F0F0F0 ;background-color:#F5DEB3;}
</style>
</head>

<body class="body">
	<div class="userinfopage">
		<h2 class="userinfo">编辑资料</h2><hr>
		<form action="updateuserinfo.action">
			<b  style="color:#CD853F">我的性别:</b><select name="sex" placeholder="${user.sex }"> <option value="男">男</option> <option value="女">女</option> </select><br/><br/><br/>
			<b  style="color:#CD853F">我的邮箱:</b><input placeholder="${user.email }" type="text" name="email"><br/><br/><br/>
			<b  style="color:#CD853F">我的职业:</b><input placeholder="${user.profession }" type="text" name="profession"><br/><br/><br/>
			<hr>
			<input style="color:#CD853F;font-size:18px;"  class="add" type="submit"  value="提交">
			<!-- <a  class="add" href="cancellogin.action"><b style="color:#CD853F;font-size:20px">退出登录</b></a> -->
		</form>
	</div>
</body>
</html>