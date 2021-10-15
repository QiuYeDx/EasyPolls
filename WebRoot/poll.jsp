<%@ page language="java" import="java.util.*" import="java.sql.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/easyPolls", "root", "20011216");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from polls;");
%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String id = request.getParameter("id");
%>
<%
	int i = Integer.parseInt(id);
	while (i != 0) {
		rs.next();
		i--;
	}
	String title = rs.getString("title");
	String time = rs.getString("time");
	String content = rs.getString("content");
	String op1 = rs.getString("op1");
	String op2 = rs.getString("op2");
	String op3 = rs.getString("op3");
	String op4 = rs.getString("op4");
	String op5 = rs.getString("op5");
	int n1 = rs.getInt("n1");
	int n2 = rs.getInt("n2");
	int n3 = rs.getInt("n3");
	int n4 = rs.getInt("n4");
	int n5 = rs.getInt("n5");
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EasyPolls - <%=title%></title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>
<script>
	function CheckForm() {
		let inputs = document.getElementsByName("op");
		var flag = false;
		for (var i = 0; i < inputs.length; i++) {
			if (inputs [i].checked) {
				flag = true
			}
		}
		if (flag)
			return true
		else{
			alert("您还未选择！")
			return false
		}
	}
</script>
<link type="text/css" href="css/poll.css" rel="stylesheet" />
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
			<div id="content" style="text-align:center;vertical-align:middle;">
				<form action="submitOp.jsp" method="get" onSubmit="return CheckForm()">
					<table width="100%" border="0" cellspacing="0" cellpadding="0"
						align="center">
						<tr>
							<td align="center" class="biaoti" height="60"><%=title%></td>
						</tr>
						<tr>
							<td align="right" height="25">发起时间:<%=time%></td>
						</tr>
					</table>
					「<%=content%>」<br />
					<table width="100%" border="0" cellspacing="1" cellpadding="4"
						bgcolor="#cccccc" class="tabtop13" align="center">
						<tr>
							<td width="80%" class="btbg font-center titfont">选项</td>
							<td width="20%" class="btbg font-center titfont">选择</td>
						</tr>

						<tr>
							<td width="80%" class="btbg1 font-center"><%=op1%></td>
							<td width="20%" class="btbg2" align="center"><input type="radio" name="op" value="n1" /></td>
						</tr>
						<tr>
							<td width="80%" class="btbg1 font-center"><%=op2%></td>
							<td width="20%" class="btbg2" align="center"><input type="radio" name="op" value="n2" /></td>
						</tr>
						<%if(op3.length()!=0) {%>
						<tr>
							<td width="80%" class="btbg1 font-center"><%=op3%></td>
							<td width="20%" class="btbg2" align="center"><input type="radio" name="op" value="n3" /></td>
						</tr>
						<%} %>
						<%if(op4.length()!=0) {%>
						<tr>
							<td width="80%" class="btbg1 font-center"><%=op4%></td>
							<td width="20%" class="btbg2" align="center"><input type="radio" name="op" value="n4" /></td>
						</tr>
						<%} %>
						<%if(op5.length()!=0) {%>
						<tr>
							<td width="80%" class="btbg1 font-center"><%=op5%></td>
							<td width="20%" class="btbg2" align="center"><input type="radio" name="op" value="n5" /></td>
						</tr>
						<%} %>
					</table>
					<br/>
					<input type="text" value="<%=id %>" name="id" style="display:none"/>
					<input type="submit" value="提交选择"/>
				</form>
				<br/>
				<a href="result.jsp?id=<%=id %>" id="a_submit">点击查看问卷结果</a>
			</div>

			<div id="footer">
				版权 © <a href="https://qiuyedx.com" id="My Blog">qiuyedx.com</a>
			</div>
		</div>
	</div>
	<%
		rs.close();
		stmt.close();
		conn.close();
	%>

</body>
</html>
