<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EasyPolls - 提交成功</title>
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
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String op1 = request.getParameter("op1");
            String op2 = request.getParameter("op2");
            String op3 = request.getParameter("op3");
            String op4 = request.getParameter("op4");
            String op5 = request.getParameter("op5");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/easyPolls", "root", "20011216");
       		Statement stmt = conn.createStatement ();
       		stmt.executeUpdate("INSERT INTO polls (title, time, content, op1, op2, op3, op4, op5, n1, n2, n3, n4, n5) VALUES ('"+title+"',CURRENT_DATE(),'"+content+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+op5+"',0,0,0,0,0);");
       		%>
            <div id="content">
                「 提 交 成 功 」<br/>
                <%stmt.close(); conn.close();  %>
                <a href="menu.jsp" id="a_submit">点击查看最新目录</a>
            </div>
            
            <div id="footer"> 
             版权 © <a href="https://qiuyedx.com" id="My Blog">qiuyedx.com</a>
            </div>
        </div>
    </div>
    
  </body>
</html>
