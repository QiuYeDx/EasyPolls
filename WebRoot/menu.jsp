<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EasyPolls - 目录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  <link type="text/css" href="css/menu.css" rel="stylesheet" /> 
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
            <div id="content">
            <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/easyPolls", "root", "20011216");
       		Statement stmt = conn.createStatement ();
       		ResultSet rs = stmt.executeQuery("select * from polls order by 1 desc;");
       		%>
                <ul>               
                <% while(rs.next()){ %>
                	<li>
                        <a href="poll.jsp?id=<%=rs.getInt("id") %>"> <%=rs.getString("title") %> <span><%=rs.getDate("time")%></span></a>
                    </li>
                <%} %>
                <%rs.close(); stmt.close(); conn.close();  %>
                </ul>
            </div>
            
            <div id="footer"> 
             版权 © <a href="https://qiuyedx.com" id="My Blog">qiuyedx.com</a>
            </div>
        </div>
    </div>
  </body>
</html>
