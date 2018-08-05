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
	.add{text-decoration : none;position: absolute;width: 80px;height: 30px;top: 430px;left:270px;background: #FFFFFF;text-align:center;padding-top:20px;}
	.body{background:#F0F0F0 ;background-color:#F5DEB3;}
</style>
 <script type="text/javascript" 
src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js"></script> 
<script type="text/javascript">
/* 退出登录后是浏览器的返回失效 */
jQuery(document).ready(function ($) {
	if (window.history && window.history.pushState) {
	$(window).on('popstate', function () {
	 window.history.forward(1);
	});
	}
});
</script>

</head>


<body class="body">
<div >
</div>
<c:if test="${not empty userCustom}"> 
	<div class="userinfopage">
		<h2 class="userinfo">管理</h2><hr>
		<b  style="color:#CD853F">我的账号:</b>${userCustom.username }<br/><br/><br/>
		<b  style="color:#CD853F">我的性别:</b>${userCustom.sex }<br/><br/><br/>
		<b  style="color:#CD853F">我的邮箱:</b>${userCustom.email }<br/><br/><br/>
		<b  style="color:#CD853F">我的职业:</b>${userCustom.profession }<br/><br/><br/>
		<hr>
		<a  class="myarticle" href="findarticle_by_user.action"><b style="color:#CD853F;font-size:20px">我的帖子</b></a>
		<a  class="updateinfo" href="edituserinfopage.action"><b style="color:#CD853F;font-size:20px">修改资料</b></a>
		<a  class="add" href="cancellogin.action"><b style="color:#CD853F;font-size:20px">退出登录</b></a>
	</div>
</c:if>
</body>
</html>