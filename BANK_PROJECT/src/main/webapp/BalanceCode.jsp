<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	 text-align:center;
	margin: auto;
	background-image: url('log14.jpg');
  	background-repeat: no-repeat;
  	background-size: 100%;
  	margin: 50px;
  	font-weight:bold;
}
td{
	color:red;
}
table {
	margin: auto;
	border: 2px solid black;
 	padding: 10px;
}
</style>
</head>
<body>

<%
int accountnum=Integer.parseInt(request.getParameter("acno"));
String name=request.getParameter("uname");
String password=request.getParameter("pswd");

try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	  PreparedStatement ps=con.prepareStatement("select *from sdfc where accountnum=? and name=? and password=? and status='active'");
	  ps.setInt(1,accountnum);
	  ps.setString(2,name);
	  ps.setString(3,password);
	  ResultSet rs=ps.executeQuery();
	  ResultSetMetaData rsmd=rs.getMetaData();
		out.print("<html><body><table>");
		int n=rsmd.getColumnCount();
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(1));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(2));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(4));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(5));
		out.print("<td> <font color=aqua size=3>"+"<br>"+rsmd.getColumnName(6));
		out.println("<tr>");
			while(rs.next())
			{
				out.print("<td><br>"+rs.getString(1));
				out.print("<td><br>"+rs.getString(2));
				out.print("<td><br>"+rs.getString(4));
				out.print("<td><br>"+rs.getString(5));
				out.print("<td><br>"+rs.getString(6));
			}
			out.print("</table></body></html>");
		
		con.close();
	}
	catch(Exception ex){
		out.print(ex);
	}			
%>
</body>
</html>