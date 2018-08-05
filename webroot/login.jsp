<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	*{padding:0px;margin:0px;}
	/*body{font-family:Arial, Helvetica, sans-serif;background:url(image/background2.jpg) no-repeat 50% 0;font-size:12px;}*/
	img{border:0;}
	.lg{width:468px;height:468px;margin:0px auto;}
	.lg_top{ height:200px;width:468px;}
	.lg_main{width:400px;height:180px;margin:0 25px;}
	.lg_m_1{width:290px;height:100px;padding:60px 55px 20px 55px;}
	.ur{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(image/user.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.pw{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(image/password.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.yanzhen{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(image/password.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.y{height:30px;line-height:20px;border:0;color:#666;width:100px;margin:4px 28px;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.bn{width:300px;height:30px;background:url(image/1.png) no-repeat 58% 60%;border:0;display:block;font-size:18px;color:#FFF;font-family:Arial, Helvetica, sans-serif;font-weight:bolder;cursor:pointer;}
	.re{position:absolute;top: 490px;left:650px;width:300px;height:10px;border:0;display:block;font-size:18px;color:#FFF;font-family:Arial, Helvetica, sans-serif;font-weight:bolder;cursor:pointer;}
	
	.lg_foot{height:10px;width:5px;padding: 6px 68px 0 68px;position:absolute;top: 450px}
	
</style>

<script type="text/javascript">
       function reloadCode()
    {
        var time=new Date().getTime();
        document.getElementById("imagecode").src="/checkimageservlet?d="+time;
    }
</script>

</head>

<body background="image/background2.jpg">

<div class="lg">
<form action="/UserServlet?cmd=getuser" method="POST">
    <div class="lg_top"></div>
    <div class="lg_main">
        <div class="lg_m_1">
        
        <input name="username" placeholder="用户名" type="text" value="" class="ur" />
        <input name="password" placeholder="密码" type="password" value="" class="pw" />
        <input  type="text" name="checkCode" placeholder="验证码" value="" class="yanzhen"/>
        <img alt="验证码" id="imagecode" src="/checkimageservlet" class="y"/>
        <a href="javascript:reloadCode();">看不清楚</a><br><br/><br/>
        </div>
    </div>
    <div class="lg_foot">
    <input type="submit" value="登录" class="bn" /></div>
    <a href="/register.jsp" class="re"><font color="red">立即注册</font></a>
</form>
</div>
<div style="text-align:center;">
</div>
</body>
</html>