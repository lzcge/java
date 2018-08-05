<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>李镇才</title>
<link type="text/css" rel="stylesheet" href="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/blog-common.css">
<link id="MainCss" type="text/css" rel="stylesheet" href="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/bundle-coffee.css">
<link id="mobile-style" media="only screen and (max-width: 767px)" type="text/css" rel="stylesheet" href="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/bundle-coffee-mobile.css">
<link title="RSS" type="application/rss+xml" rel="alternate" href="http://www.cnblogs.com/wcm19910616/rss">
<link title="RSD" type="application/rsd+xml" rel="EditURI" href="http://www.cnblogs.com/wcm19910616/rsd.xml">
<link type="application/wlwmanifest+xml" rel="wlwmanifest" href="http://www.cnblogs.com/wcm19910616/wlwmanifest.xml">
<script src="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/hm.js"></script><script async="" src="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/analytics.js"></script><script src="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/jquery-2.js"></script>
<script type="text/javascript">var currentBlogApp = 'wcm19910616', cb_enable_mathjax=false;var isLogined=false;</script>
<script src="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/blog-common.js" type="text/javascript"></script>
<style type="text/css">
	 #home{background: #FEFEF2}  
</style>
</head>
<body rlt="1" >
<a name="top"></a>

<!--done-->
<!-- <div id="home">
<div id="header">
	 <div id="blogTitle">
	<a id="lnkBlogLogo" href="http://www.cnblogs.com/wcm19910616/"><img id="blogLogo" src="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/logo.gif" alt="返回主页"></a>			
		
done
<h1><a id="Header1_HeaderTitle" class="headermaintitle" href="http://www.cnblogs.com/wcm19910616/"></a></h1>
<h2></h2>



		
	</div>end: blogTitle 博客的标题和副标题
</div>end: header 头部 -->

<div id="main" >
	<div id="mainContent">
	<div class="forFlow">
		<div id="navigator">
			
<ul id="navList">
	<li><a style="font-size: 15px" id="blog_nav_sitehome" class="menu" href="sendarticle.action">发帖</a></li>
	<li><a style="font-size: 15px" id="blog_nav_myhome" class="menu" href="findarticlelist.action">首页</a></li>
	<li><a style="font-size: 15px" id="blog_nav_newpost" class="menu" rel="nofollow" href="#none">新随笔</a></li>
	<li><a style="font-size: 15px" id="blog_nav_contact" accesskey="9" class="menu" rel="nofollow" href="#none">联系</a></li>
	<li><a style="font-size: 15px" id="blog_nav_admin" class="menu" rel="nofollow" href="managerpage.action">管理</a></li>
	<li><a style="font-size: 15px" id="blog_nav_rss" class="menu" href="#none">订阅</a>
	<a id="blog_nav_rss_image" class="aHeaderXML" href="http://www.cnblogs.com/wcm19910616/rss"><img src="%E7%8E%8B%E4%BC%A0%E6%98%8E%20-%20%E5%8D%9A%E5%AE%A2%E5%9B%AD_files/xml.gif" alt="订阅"></a></li>
</ul>


			<div class="blogStats">
				
				<div id="blog_stats">
<!--done-->
随笔- 63&nbsp;
文章- 269&nbsp;
评论- 0&nbsp;
</div>
				
			</div><!--end: blogStats -->
		</div><!--end: navigator 博客导航栏 -->
		

<!--done-->


<div class="day">
	<c:forEach items="${ articlelist}" var="info" >
			<div class="dayTitle">
		<h1><a id="Header1_HeaderTitle" class="headermaintitle" href="finduser.action?username=${info.username }">${info.username }</a></h1>
				<span id="homepage1_HomePageDays_DaysList_ctl00_ImageLink" title="Day link" style="color: #CD853F">${info.title }</span>				  
			</div>
				 
			<div class="postCon"><div class="c_b_p_desc">
			${info.content }<br/>
			<!-- 摘要: 一：公司吐槽与策略 
					1：公司不是养老院，如果你决定要走，我从不挽留。 
					2：国有国规，家有家法，无规矩不成方圆，要制定详细的制度，触犯就有相应的惩罚制度。坚决赏罚分明。 
					3：我们不是共产主义，不能吃大锅饭。有公正的奖罚措施，绩效考核。多劳多得，自古以来都是基本的准则。 4：作为老板，既然选择他做部门管 --><a href="https://www.cnblogs.com/wcm19910616/p/8891815.html" class="c_b_p_desc_readmore">阅读全文</a></div></div>
			<div class="clear"></div>
			<div class="postDesc">posted @ ${info.time } ${info.username }  点赞量${info.upvote }     &nbsp<a href="answer.action?id=${info.id }" rel="nofollow">评论</a> &nbsp<a href="deletearticle.action?id=${info.id }" rel="nofollow">删除</a></div>
			<div class="clear"></div>
	 </c:forEach>
</div>




<div class="topicListFooter"><div id="nav_next_page"><a href="http://www.cnblogs.com/wcm19910616/default.html?page=2">下一页</a></div></div>


	</div><!--end: forFlow -->
	</div><!--end: mainContent 主体内容容器-->

	<div id="sideBar">
		<div id="sideBarMain">
			
<!--done-->
<div class="newsItem" style="background: #FEFEF2">
<h3 class="catListTitle">公告</h3>
	<div id="blog-news"><div id="profile_block">昵称：<a href="managerpage.action">${user.username }</a><br>园龄：<a href="https://home.cnblogs.com/u/wcm19910616/" title="入园时间：2015-12-03">2年6个月</a><br>粉丝：<a href="https://home.cnblogs.com/u/wcm19910616/followers/">1</a><br>关注：<a href="https://home.cnblogs.com/u/wcm19910616/followees/">0</a><div id="p_b_follow"><a href="javascript:void(0);" onclick="follow('405c1c5d-b399-e511-9fc1-ac853d9f53cc')">+加关注</a></div><script>getFollowStatus('405c1c5d-b399-e511-9fc1-ac853d9f53cc')</script></div></div><script type="text/javascript">loadBlogNews();</script>
</div>

			<div id="calendar" style="background: #FEFEF2"><div id="blog-calendar" style=""><table id="blogCalendar" class="Cal" title="Calendar" cellspacing="0" cellpadding="0">
	<tbody><tr><td colspan="7"><table class="CalTitle" cellspacing="0">
		<tbody><tr><td class="CalNextPrev"><a href="javascript:void(0);" onclick="loadBlogCalendar('2018/05/01');return false;">&lt;</a></td><td align="center">2018年6月</td><td class="CalNextPrev" align="right"><a href="javascript:void(0);" onclick="loadBlogCalendar('2018/07/01');return false;">&gt;</a></td></tr>
	</tbody></table></td></tr><tr><th class="CalDayHeader" abbr="日" scope="col" align="center">日</th><th class="CalDayHeader" abbr="一" scope="col" align="center">一</th><th class="CalDayHeader" abbr="二" scope="col" align="center">二</th><th class="CalDayHeader" abbr="三" scope="col" align="center">三</th><th class="CalDayHeader" abbr="四" scope="col" align="center">四</th><th class="CalDayHeader" abbr="五" scope="col" align="center">五</th><th class="CalDayHeader" abbr="六" scope="col" align="center">六</th></tr><tr><td class="CalOtherMonthDay" align="center">27</td><td class="CalOtherMonthDay" align="center">28</td><td class="CalOtherMonthDay" align="center">29</td><td class="CalOtherMonthDay" align="center">30</td><td class="CalOtherMonthDay" align="center">31</td><td align="center">1</td><td class="CalWeekendDay" align="center">2</td></tr><tr><td class="CalTodayDay" align="center">3</td><td align="center">4</td><td align="center">5</td><td align="center">6</td><td align="center">7</td><td align="center">8</td><td class="CalWeekendDay" align="center">9</td></tr><tr><td class="CalWeekendDay" align="center">10</td><td align="center">11</td><td align="center">12</td><td align="center">13</td><td align="center">14</td><td align="center">15</td><td class="CalWeekendDay" align="center">16</td></tr><tr><td class="CalWeekendDay" align="center">17</td><td align="center">18</td><td align="center">19</td><td align="center">20</td><td align="center">21</td><td align="center">22</td><td class="CalWeekendDay" align="center">23</td></tr><tr><td class="CalWeekendDay" align="center">24</td><td align="center">25</td><td align="center">26</td><td align="center">27</td><td align="center">28</td><td align="center">29</td><td class="CalWeekendDay" align="center">30</td></tr><tr><td class="CalOtherMonthDay" align="center">1</td><td class="CalOtherMonthDay" align="center">2</td><td class="CalOtherMonthDay" align="center">3</td><td class="CalOtherMonthDay" align="center">4</td><td class="CalOtherMonthDay" align="center">5</td><td class="CalOtherMonthDay" align="center">6</td><td class="CalOtherMonthDay" align="center">7</td></tr>
</tbody></table></div><script type="text/javascript">loadBlogDefaultCalendar();</script></div>
			
			<div id="leftcontentcontainer">
				<div id="blog-sidecolumn"><div id="sidebar_search" class="sidebar-block">
<div id="sidebar_search" class="mySearch">
<h3 class="catListTitle">搜索</h3>
<div id="sidebar_search_box">
<div id="widget_my_zzk" class="div_my_zzk"><input id="q" onkeydown="return zzk_go_enter(event);" class="input_my_zzk" type="text">&nbsp;<input onclick="zzk_go()" value="找找看" id="btnZzk" class="btn_my_zzk" type="button"></div>
<div id="widget_my_google" class="div_my_zzk"><input name="google_q" id="google_q" onkeydown="return google_go_enter(event)" class="input_my_zzk" type="text">&nbsp;<input onclick="google_go()" value="谷歌搜索" class="btn_my_zzk" type="button"></div>
</div>
</div>

</div><div id="sidebar_shortcut" class="sidebar-block">
<div class="catListLink" style="background: #FEFEF2">
<h3 class="catListTitle">常用链接</h3>
<ul>
<li><a href="http://www.cnblogs.com/wcm19910616/p/" title="我的博客的随笔列表">我的随笔</a></li><li><a href="http://www.cnblogs.com/wcm19910616/MyComments.html" title="我发表过的评论列表">我的评论</a></li><li><a href="http://www.cnblogs.com/wcm19910616/OtherPosts.html" title="我评论过的随笔列表">我的参与</a></li><li><a href="http://www.cnblogs.com/wcm19910616/RecentComments.html" title="我的博客的评论列表">最新评论</a></li><li><a href="http://www.cnblogs.com/wcm19910616/tag/" title="我的博客的标签列表">我的标签</a></li>
<li><a id="itemListLink" onclick="this.blur();WarpClass('itemListLink', 'itemListLin_con');return false;" href="#">更多链接</a></li>
</ul>
<div id="itemListLin_con" style="display:none;">
<ul>

</ul>
</div>
</div></div><div id="sidebar_toptags" class="sidebar-block">
<div class="catListTag" style="background: #FEFEF2">
<h3 class="catListTitle">我的标签</h3>
<ul>
<li><a href="http://www.cnblogs.com/wcm19910616/tag/%E7%8E%8B%E4%BC%A0%E6%98%8E_%E9%83%91%E5%B7%9E%E5%A4%A7%E5%AD%A6_%E5%8D%8E%E4%B8%BA%E7%A7%91%E6%8A%80_%E9%B9%BF%E9%82%91%E5%8E%BF_%E4%BF%A1%E6%81%AF%E5%B7%A5%E7%A8%8B%E5%AD%A6%E9%99%A2_%E8%80%81%E5%AD%90%E5%A5%96%E5%AD%A6%E9%87%91/">王传明_郑州大学_华为科技_鹿邑县_信息工程学院_老子奖学金</a>(1)</li>
</ul>
</div></div><div id="sidebar_categories">
<div class="catListPostCategory" style="background: #FEFEF2">
<h3 class="catListTitle">随笔分类</h3>

<ul>

<li><a id="CatList_LinkList_0_Link_0" href="https://www.cnblogs.com/wcm19910616/category/846734.html">axure</a> </li>

<li><a id="CatList_LinkList_0_Link_1" href="https://www.cnblogs.com/wcm19910616/category/846728.html">bootstarp</a> </li>

<li><a id="CatList_LinkList_0_Link_2" href="https://www.cnblogs.com/wcm19910616/category/846752.html">linux</a> </li>

<li><a id="CatList_LinkList_0_Link_3" href="https://www.cnblogs.com/wcm19910616/category/846730.html">memcache</a> </li>

<li><a id="CatList_LinkList_0_Link_4" href="https://www.cnblogs.com/wcm19910616/category/846729.html">mogodb</a> </li>

<li><a id="CatList_LinkList_0_Link_5" href="https://www.cnblogs.com/wcm19910616/category/846731.html">Python</a> </li>

<li><a id="CatList_LinkList_0_Link_6" href="https://www.cnblogs.com/wcm19910616/category/1006973.html">服务器管理总结(1)</a> </li>

<li><a id="CatList_LinkList_0_Link_7" href="https://www.cnblogs.com/wcm19910616/category/834873.html">感性(26)</a> </li>

<li><a id="CatList_LinkList_0_Link_8" href="https://www.cnblogs.com/wcm19910616/category/922897.html">日常随笔技术(8)</a> </li>

<li><a id="CatList_LinkList_0_Link_9" href="https://www.cnblogs.com/wcm19910616/category/978757.html">商海经(26)</a> </li>

</ul>

</div>



</div> -->

<div class="catListArticleCategory" style="background: #FEFEF2">
<h3 class="catListTitle">文章分类</h3>

<ul>

<li><a id="CatList_LinkList_2_Link_0" href="https://www.cnblogs.com/wcm19910616/category/765501.html">api接口</a> </li>

<li><a id="CatList_LinkList_2_Link_1" href="https://www.cnblogs.com/wcm19910616/category/765498.html">css(13)</a> </li>

<li><a id="CatList_LinkList_2_Link_2" href="https://www.cnblogs.com/wcm19910616/category/825347.html">css 经典函数详解与分析(1)</a> </li>

<li><a id="CatList_LinkList_2_Link_3" href="https://www.cnblogs.com/wcm19910616/category/821731.html">css3(2)</a> </li>

<li><a id="CatList_LinkList_2_Link_4" href="https://www.cnblogs.com/wcm19910616/category/788049.html">ecshop经典案例(9)</a> </li>

<li><a id="CatList_LinkList_2_Link_5" href="https://www.cnblogs.com/wcm19910616/category/786352.html">firebug 调试(1)</a> </li>

<li><a id="CatList_LinkList_2_Link_6" href="https://www.cnblogs.com/wcm19910616/category/765497.html">html (8)</a> </li>

<li><a id="CatList_LinkList_2_Link_7" href="https://www.cnblogs.com/wcm19910616/category/857825.html">ie6 78 9兼容性(2)</a> </li>

<li><a id="CatList_LinkList_2_Link_8" href="https://www.cnblogs.com/wcm19910616/category/765499.html">javascript(11)</a> </li>

<li><a id="CatList_LinkList_2_Link_9" href="https://www.cnblogs.com/wcm19910616/category/765500.html">jquery(24)</a> </li>

<li><a id="CatList_LinkList_2_Link_10" href="https://www.cnblogs.com/wcm19910616/category/843196.html">jquery ajax 案例(3)</a> </li>

<li><a id="CatList_LinkList_2_Link_11" href="https://www.cnblogs.com/wcm19910616/category/822281.html">jquery 插件库(4)</a> </li>

<li><a id="CatList_LinkList_2_Link_12" href="https://www.cnblogs.com/wcm19910616/category/825348.html">js jquery 经典函数详解与分析(8)</a> </li>

<li><a id="CatList_LinkList_2_Link_13" href="https://www.cnblogs.com/wcm19910616/category/951151.html">linux技术(5)</a> </li>

<li><a id="CatList_LinkList_2_Link_14" href="https://www.cnblogs.com/wcm19910616/category/765506.html">mysql(15)</a> </li>

<li><a id="CatList_LinkList_2_Link_15" href="https://www.cnblogs.com/wcm19910616/category/765496.html">php经典功能代码(48)</a> </li>

<li><a id="CatList_LinkList_2_Link_16" href="https://www.cnblogs.com/wcm19910616/category/825346.html">php经典函数详解与分析(7)</a> </li>

<li><a id="CatList_LinkList_2_Link_17" href="https://www.cnblogs.com/wcm19910616/category/765503.html">seo优化(29)</a> </li>

<li><a id="CatList_LinkList_2_Link_18" href="https://www.cnblogs.com/wcm19910616/category/871951.html">编程常识总结(4)</a> </li>

<li><a id="CatList_LinkList_2_Link_19" href="https://www.cnblogs.com/wcm19910616/category/765504.html">服务器部署(19)</a> </li>

<li><a id="CatList_LinkList_2_Link_20" href="https://www.cnblogs.com/wcm19910616/category/787302.html">管理经验录(10)</a> </li>

<li><a id="CatList_LinkList_2_Link_21" href="https://www.cnblogs.com/wcm19910616/category/786185.html">经典javascript 案例(2)</a> </li>

<li><a id="CatList_LinkList_2_Link_22" href="https://www.cnblogs.com/wcm19910616/category/833973.html">经典推理趣味题(4)</a> </li>

<li><a id="CatList_LinkList_2_Link_23" href="https://www.cnblogs.com/wcm19910616/category/801711.html">人生感悟与格言(2)</a> </li>

<li><a id="CatList_LinkList_2_Link_24" href="https://www.cnblogs.com/wcm19910616/category/787297.html">生活技能(2)</a> </li>

<li><a id="CatList_LinkList_2_Link_25" href="https://www.cnblogs.com/wcm19910616/category/876137.html">网站设计基本理念与方案(3)</a> </li>

<li><a id="CatList_LinkList_2_Link_26" href="https://www.cnblogs.com/wcm19910616/category/801445.html">宣传推广方案(12)</a> </li>

</ul>

</div>

</div><div id="sidebar_recentcomments" class="sidebar-block"><div id="recent_comments_wrap" style="display: none;">
<div class="catListComment" style="background: #FEFEF2">
<h3 class="catListTitle">最新评论</h3>

	<div id="RecentCommentsBlock"></div>
</div>
</div></div><div id="sidebar_topviewedposts" class="sidebar-block"><div id="topview_posts_wrap">
<div class="catListView" style="background: #FEFEF2">
<h3 class="catListTitle">阅读排行榜</h3>
	<div id="TopViewPostsBlock"><ul><li><a href="https://www.cnblogs.com/wcm19910616/p/7349177.html">1. 开发团队建设与管理的一些心得(902)</a></li><li><a href="https://www.cnblogs.com/wcm19910616/p/7590360.html">2. 中国式悲哀：英雄枯骨无人问，戏子家事天下知(106)</a></li><li><a href="https://www.cnblogs.com/wcm19910616/p/7498735.html">3. 最应该富养的，不是孩子是妻子！(79)</a></li><li><a href="https://www.cnblogs.com/wcm19910616/p/7526436.html">4. 英雄不问出处, 看看商界大佬年轻时受过的苦(71)</a></li><li><a href="https://www.cnblogs.com/wcm19910616/p/6892148.html">5. 阿里云服务器无法访问80端口的解决办法(46)</a></li></ul></div>
</div>
</div></div><div id="sidebar_topcommentedposts" class="sidebar-block"><div id="topfeedback_posts_wrap" style="display: none;">
<div class="catListFeedback">
<h3 class="catListTitle">评论排行榜</h3>
	<div id="TopFeedbackPostsBlock"></div>
</div>
</div></div><div id="sidebar_topdiggedposts" class="sidebar-block"><div id="topdigg_posts_wrap" style="display: none;">
<div class="catListView">
<h3 class="catListTitle">推荐排行榜</h3>
<div id="TopDiggPostsBlock"></div>
</div></div></div></div><script type="text/javascript">loadBlogSideColumn();</script>
			</div>
			
		</div><!--end: sideBarMain -->
	</div><!--end: sideBar 侧边栏容器 -->
	<div class="clear"></div>
	</div><!--end: main -->
	<div class="clear"></div>
	<div id="footer">
		
<!--done-->
Copyright ©2018 李镇才
	</div><!--end: footer -->
</div><!--end: home 自定义的最大容器 -->


</body>
</html>