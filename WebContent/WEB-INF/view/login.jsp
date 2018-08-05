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
	.lg_m_1{width:450px;height:100px;padding:30px 55px 20px 55px;}
	.ur{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(/image/user.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.pw{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(/image/password.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.yanzhen{height:37px;line-height:37px;border:0;color:#666;width:236px;margin:4px 28px;background:url(/image/password.png) no-repeat;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.y{height:30px;line-height:20px;border:0;color:#666;width:100px;margin:4px 28px;padding-left:10px;font-size:12px;font-family:Arial, Helvetica, sans-serif;}
	.bn{position:absolute;left:110px;width:240px;height:40px;background-color: 	#EE9A49;border:0;display:block;font-size:18px;color:#FFF;font-family:Arial, Helvetica, sans-serif;font-weight:bolder;cursor:pointer;}
	.re{position:absolute;top: 520px;left:650px;width:300px;height:10px;border:0;display:block;font-size:18px;color:#FFF;font-family:Arial, Helvetica, sans-serif;font-weight:bolder;cursor:pointer;}
	 /* #usernamecheck{height:370px;width:230px;padding:60px 5px 2px 5px;font-size:12px;}  */
	.lg_foot{height:10px;width:5px;padding: 6px 68px 0 68px;position:absolute;top: 450px}
	
</style>
 <script type="text/javascript" 
src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js"></script> 

<script type="text/javascript">

	$(function (){
		 $("#username").blur(function (){
			var usernameInput = $("#username").val();
			//去服务端验证
			 //alert(usernameInput);
			 $.post(
			  	"${pageContext.request.contextPath}/inputcheck.action",
				{"username":usernameInput},				
				function(data){
					var loginflageusername = data.loginflageusername;
					//根据返回的内容动态显示
					var usernamecheck="";
					if(!loginflageusername){
						usernamecheck = "用户名不能为空";
						$("#usernamecheck").css("color","red");
					}else{						
						$("#usernamecheck").css("color","green");
						usernamecheck = "输入合法";
					}
					//alert(usernamecheck);
					$("#usernamecheck").html(usernamecheck);
				},
				"json"
			); 
		}); 
		
		 $("#password").blur(function(){
			var passwordInput = $("#password").val();
			//去服务端验证
			//alert(usernameInput);
			// alert(passwordInput);
			 $.post(
				"${pageContext.request.contextPath}/inputcheck.action",
				{"password":passwordInput},
				function(data){
					var loginflagepassword = data.loginflagepassword;
					//根据返回的内容动态显示
					var passwordcheck="";
					if(!loginflagepassword){
						passwordcheck = "密码不能为空";
						$("#passwordcheck").css("color","red");
					}else{
						
						$("#passwordcheck").css("color","green");
						passwordcheck = "输入合法";
					}
					//alert(loginflage);
					$("#passwordcheck").html(passwordcheck);
				},
				"json"
			); 
		});
		 $("#checkCode").blur(function(){
			var checkCodeInput = $("#checkCode").val();
			//去服务端验证
			//alert(checkCodeInput);
			 $.post("${pageContext.request.contextPath}/inputcheck.action",
				{"checkCode":checkCodeInput},
				function(data){
					var loginflagecheckCode = data.loginflagecheckCode;
					//根据返回的内容动态显示
					var checkCodecheck="";
					if(!loginflagecheckCode){
						checkCodecheck = "验证码不能为空";
						$("#checkCodecheck").css("color","red");
					}else{
						
						$("#checkCodecheck").css("color","green");
						checkCodecheck = "验证码输入合法";
					}
					//alert(loginflage);
					$("#checkCodecheck").html(checkCodecheck);
				},
				"json"
			); 
		}); 
		 /*  $("#submit").blur(function(){
			var checkCodeInput = $("#submit").val();
			 $.post(
				"${pageContext.request.contextPath}/logincheck.action",
				{"submit":checkCodeInput},
				function(data){
					var loginflage = data.loginflage;
					//根据返回的内容动态显示
					var submitcheck="";
					if(!loginflage){
						submitcheck = "登录信息有误";
						$("#submitcheck").css("color","red");
						$("#submitcheck").html(submitcheck);
						//"${pageContext.request.contextPath}/findarticlelist.action"
					}else{
						"${pageContext.request.contextPath}/findarticlelist.action"
					}
				},
				"json"
			); 
		});       */
	});			
	
	function reloadCode()
	{
	    var time=new Date().getTime();
	    document.getElementById("imagecode").src="/checkimage?d="+time;

	} 
    
</script>

</head>
<!-- background="/image/background2.jpg "-->
<body style="background-color:#FFFACD">

<div class="lg">

<form action="/logincheck.action" method="POST">
    <div class="lg_top"></div>
    <div class="lg_main">
        <div class="lg_m_1"> 
	       	<input id="username" name="username" placeholder="用户名" type="text" value=""  class="ur" />
	       	<center><span  id="usernamecheck" style="font-size: 12px" ></span></center>
	        <input name="password" placeholder="密码"  id="password" value="" class="pw" type="password"/> 
	       	<center><span  id="passwordcheck" style="font-size: 12px" ></span></center>
	        <input  type="text" id="checkCode" name="checkCode" placeholder="验证码" value="" class="yanzhen"/>
	        <center><span  id="checkCodecheck" style="font-size: 12px" ></span></center>
	        <img alt="验证码" id="imagecode"  src="/checkimage" class="y"/> 
	        <a href="javascript:reloadCode();">看不清楚</a><br><br/><br/>
        </div>
    </div>
    <div class="lg_foot">
    <input type="submit" value="登录" class="bn" id="submit"/></div>
    <a href="registerpage.action" class="re"><font color="#AB82FF">立即注册</font></a>
    <center><span  id="submitcheck" style="font-size: 12px" ></span></center>
</form>
</div>
<div style="text-align:center;">
</div>
</body>
</html>