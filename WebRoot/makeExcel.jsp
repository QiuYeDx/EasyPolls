<%@ page language="java" import="java.util.*" import="java.sql.*" import="java.text.DecimalFormat"
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
  int sum = n1+n2+n3+n4+n5;
  double p1,p2,p3,p4,p5;
  DecimalFormat decFormat = new DecimalFormat("#%");
  if(sum==0){
    p1=p2=p3=p4=p5=0;
  }
  else{
    p1=n1*1.0/sum;
    p2=n2*1.0/sum;
    p3=n3*1.0/sum;
    p4=n4*1.0/sum;
    p5=n5*1.0/sum;
  }
%>
<!DOCTYPE html>
<html>
<head>
  <base href="<%=basePath%>">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>EasyPolls - <%=title%> - makeExcel</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">

</head>

<xml>
  <x:ExcelWorkbook>
    <x:ExcelWorksheets>
      <x:ExcelWorksheet>
        <!-- <x:Name>工作表标题</x:Name>-->
        <x:WorksheetOptions>
          <x:Print>
            <x:ValidPrinterInfo />
          </x:Print>
        </x:WorksheetOptions>
      </x:ExcelWorksheet>
    </x:ExcelWorksheets>
  </x:ExcelWorkbook>
</xml>
<%
  String exportToExcel = request.getParameter("exportToExcel");
  if (exportToExcel != null  && exportToExcel.toString().equalsIgnoreCase("YES")) {
    response.setContentType("application/vnd.ms-excel");
    response.setHeader("Content-Disposition", "inline; filename="+"order.xls");
  }
%>

<body>
<div id="background">
  <div id="container">

    <div id="content" style="text-align:center;vertical-align:middle;">
      <table width="800px" border="1" cellspacing="1" cellpadding="4" align="center">
        <tr><td width="100%" align="center" colspan="3"><%=title%></td></tr>
        <tr><td width="100%" align="center" colspan="3">发起时间:<%=time%></td></tr>
        <tr><td width="100%" align="center" colspan="3">「<%=content%>」</td></tr>
        <tr>
          <td width="60%" align="center">选项</td>
          <td width="20%" align="center">票数</td>
          <td width="20%" align="center">占比</td>
        </tr>

        <tr>
          <td width="60%" align="center"><%=op1%></td>
          <td width="20%" align="center"><%=n1 %></td>
          <td width="20%" align="center"><%=decFormat.format(p1) %></td>
        </tr>
        <tr>
          <td width="60%" align="center"><%=op2%></td>
          <td width="20%" align="center"><%=n2 %></td>
          <td width="20%" align="center"><%=decFormat.format(p2) %></td>
        </tr>
        <%if(op3.length()!=0) {%>
        <tr>
          <td width="60%" align="center"><%=op3%></td>
          <td width="20%" align="center"><%=n3 %></td>
          <td width="20%" align="center"><%=decFormat.format(p3) %></td>
        </tr>
        <%} %>
        <%if(op4.length()!=0) {%>
        <tr>
          <td width="60%" align="center"><%=op4%></td>
          <td width="20%" align="center"><%=n4 %></td>
          <td width="20%" align="center"><%=decFormat.format(p4) %></td>
        </tr>
        <%} %>
        <%if(op5.length()!=0) {%>
        <tr>
          <td width="60%" align="center"><%=op5%></td>
          <td width="20%" align="center"><%=n5 %></td>
          <td width="20%" align="center"><%=decFormat.format(p5) %></td>
        </tr>
        <%} %>
      </table>
      <br/>
      <br/>
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
