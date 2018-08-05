<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">  
    var time = 4;  
    function Time() {  
        window.setTimeout('Time()', 1000);  
        time = time - 1;  
        document.getElementById("layer").innerHTML = time;  
    }  
</script> 

</head>

<body onload="Time()">
	<%
		int num = (int)request.getAttribute("int");
		if(num==1){
	%>	
		<font color="red">两次密码不一致！请重新输入！</font><br/>
		 <span id="layer">3</span>秒后，转入注册界面。  
	
	<%
		    response.setHeader("Refresh", "3;URL=register.jsp");  
		}
		else if(num==2){
			out.println("用户名或者密码不能为空,稍后跳转到注册页面");
			response.setHeader("Refresh", "3;URL=register.jsp");  
			
		}
	%>
	
	
</body>
</html>