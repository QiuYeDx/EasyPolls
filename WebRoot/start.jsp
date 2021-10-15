<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EasyPolls - 开始</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" href="css/start.css" rel="stylesheet" /> 

  </head>
  
  <body style="background-color: rgb(197, 197, 197);text-align: center;">
   <div id="background">
        <div id="container">
            <div id="header">
                <h1>EasyPolls</h1>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="index.jsp">首 页</a></li>
                    <li><a href="menu.jsp">目 录</a></li>
                    <li><a href="start.jsp">开 始</a></li>
                    <li><a href="about.html">关 于</a></li>
                </ul>
                <hr style="border: 0.5px solid #00a389;" />
            </div>
            <div id="contents">
                <form id="newForm" action="submit.jsp" method="get">
                    <fieldset>
                        <legend>发起新的问卷</legend>
                        <label for="title">问卷标题:</label><input type="text" name="title" id="title" /><br/>
                        <label for="content">问题描述:</label><input type="text" name="content" id="content"/><br/>
                        <label for="op1">选项 1:</label><input type="text" name="op1" id="op1"/><br/>
                        <label for="op2">选项 2:</label><input type="text" name="op2" id="op2"/><br/>
                        <label for="op3">(可选)选项 3:</label><input type="text" name="op3" id="op3" /><br/>
                        <label for="op4">(可选)选项 4:</label><input type="text" name="op4" id="op4" /><br/>
                        <label for="op5">(可选)选项 5:</label><input type="text" name="op5" id="op5" /><br/>
                        <input type="submit" />
                    </fieldset>
                </form>
            </div>
            
            <div id="footer"> 
             版权 © <a href="https://qiuyedx.com" id="My Blog">qiuyedx.com</a>
            </div>
        </div>
    </div>
  </body>
</html>
