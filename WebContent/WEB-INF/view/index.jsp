<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/4/27
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>article</title>

    <style type="text/css">
        a{	color: black;	font-size: 20px;	text-decoration:none;}
        .left_top {	width: 100%;	height: 70px;  margin: 0 auto;   background:  #FFFFFF; position: absolute; position:fixed; top: 0px }
        .ul1 {	height: 50px;	line-height: 30px; position: absolute; left: 1080px;top:10px }
        .ul1 li {float: left;	margin-left: 18px;	font-weight: bold;list-style-type:none;}
        .logo{font-size: 55px;color: aquamarine;font-weight:bolder;font-family:楷体;position: absolute; left: 300px }
        /* 登录主体 */
        .main {	height: 1000px;	width: 800px;position: absolute;left:320px;background: #FFFFFF ; top: 80px;}
        #page1{background:url(/image/homepage0.jpg)  no-repeat;top: 80px;height: 250px;width: 810px;position: absolute;left:320px;}
        #page1_1{position:absolute;left:360px;font-size: 30px;font-weight: bolder;}
        #page2{background:url(/image/homepage2.jpg)  no-repeat;top: 340px;height: 250px;width: 400px;position: absolute;left:320px;}
        #page2_1{position:absolute;left:160px;font-size: 20px;font-weight: bolder;}
        #page3{background:url(/image/homepage3.jpg);top: 340px;height: 250px;width: 400px;position: relative;position: absolute;left:730px;}
        #page3_1{position:absolute;left:160px;font-size: 20px;font-weight: bolder;}
        #page4{background:url(/image/homepage4.jpg);top: 600px;height: 250px;width: 400px;position: relative;position: absolute;left:320px;}
        #page4_1{position:absolute;left:160px;font-size: 20px;font-weight: bolder;}
        #page5{background:url(/image/homepage5.jpg);top: 600px;height: 250px;width: 400px;position: relative;position: absolute;left:730px;}
        #page5_1{position:absolute;left:160px;font-size: 30px;font-weight: bolder;}
        .body{background:#F0F0F0 }
        #search_box {   height: 34px;	line-height: 30px; position: absolute; left: 650px;   width: 350px;   top: 26px;  }
        #search_box #go {   float: right;   margin: 2px 10px 0 0;  }

    </style>

</head>
<body class="body">
    <div class="left_top" style="z-index: 4">
        <ul class="ul1">
            <li><a href="UserLogin">登录</a></li>
            <li><a href="#none">设置</a></li>
            <li><a href="#none">帮助</a></li>
            <li><a href="#none">反馈</a></li>
        </ul>
        <div id="search_box">
            <form action="Article_search" id="search_form" name="form" method="post" >
                <input type="text" style="width:300px;height:34px" name="find">
                <input type="image" src="//files.jb51.net/demoimg/200912/btn_search_box.gif" width="37" height="33" id="go" alt="Search" title="Search" />
            </form>
        </div>
        <div class="logo">
            logo
        </div>
    </div>

    <div id="page1" onclick="">
        <div id="page1_1">热帖</div>
    </div>
    <hr color="#F0F0F0" size="6px"/>
    <div id="page2">
        <div id="page2_1">科技</div>
    </div>
    <hr color="#F0F0F0" size="6px"/>
    <div id="page3">
        <div id="page3_1">美食</div>
    </div>
    <div id="page4">
        <div id="page4_1">体育</div>
    </div>
    <div id="page5" onclick="window.location.href='Article_findall';">
       		 <div id="page5_1">全部</div>
    </div>

</body>
</html>
