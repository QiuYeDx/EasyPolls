<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EasyPolls - 投票成功</title>
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
            <% 
            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("id");
            String op = request.getParameter("op");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/easyPolls", "root", "20011216");
       		Statement stmt = conn.createStatement ();
       		stmt.executeUpdate("UPDATE polls SET "+op+"="+op+"+1 WHERE id = "+id+";");
       		%>
            <div id="content">
                「 投 票 成 功 」<br/>
                <%stmt.close(); conn.close();  %>
                <a href="result.jsp?id=<%=id %>" id="a_submit">点击查看问卷结果</a>
            </div>
            
            <div id="footer"> 
             版权 © <a href="https://qiuyedx.com" id="My Blog">qiuyedx.com</a>
            </div>
        </div>
    </div>
    
  </body>
</html>
