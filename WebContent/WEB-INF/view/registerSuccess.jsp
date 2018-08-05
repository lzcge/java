<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">  
    var time = 4;  
  
    function returnUrlByTime() {  
        window.setTimeout('returnUrlByTime()', 1000);  
        time = time - 1;  
        document.getElementById("layer").innerHTML = time;  
    }  
</script>

<style type="text/css">
	.registersuccess{ position: absolute;width: 400px;height: 400px;top: 80px;left:600px;background: #FFFFFF;text-align:center;padding-top:100px;}
	.body{background:#F0F0F0 ;background-color:rgba(0,152,50,0.7);}
</style>

</head>


<body onload="returnUrlByTime()" class="body">
<div class="registersuccess">
	<h3>注册成功！</h3>  
	    <b><span id="layer">3</span>秒后，转入登陆界面。</b>  
	    <%  
	        response.setHeader("Refresh", "3;URL=login.action");  
	    %>  

</div>
</body>

</html>