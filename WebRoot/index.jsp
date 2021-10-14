<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EasyPolls</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <link type="text/css" href="css/index.css" rel="stylesheet" /> 
  <body style="background-color: rgb(197, 197, 197);text-align: center;">
     <div id="background">
        <div id="container">
            <div id="header">
                <h1>EasyPolls</h1>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="#">首 页</a></li>
                    <li><a href="menu.jsp">目 录</a></li>
                    <li><a href="start.jsp">开 始</a></li>
                    <li><a href="about.html">关 于</a></li>
                </ul>
                <hr style="border: 0.5px solid #00a389;" />
            </div>
            <div id="content">
                「EasyPolls」是一个匿名的网页投票、问卷系统，旨在提供简单、高效且免费的问卷收集服务。
                <div id="ad">
                    <div><img src="src/menu.png" id="ad_menu"/><br/>目录页面 </div>
                    <div><img src="src/start.png" id="ad_start"/><br/>发起投票</div>
                    <div><img src="src/about.png" id="ad_about"/><br/>关于页面</div>
                </div>
            </div>
            
            <div id="footer"> 
             版权 © <a href="https://qiuyedx.com" id="My Blog">qiuyedx.com</a>
            </div>
        </div>
    </div>
    
  </body>
</html>
