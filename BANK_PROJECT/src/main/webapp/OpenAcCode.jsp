<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	 text-align:center;
	margin: auto;
	background-image: url('log30.webp');
  	background-repeat: no-repeat;
  	background-size: 100%;
  	margin: 50px;
  	font-weight:bold;
  	color: black;
}
</style>
</head>
<body>
<% int accountnum=Integer.parseInt(request.getParameter("acno"));
String name=request.getParameter("uname");
String password=request.getParameter("pswd");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps=con.prepareStatement("select *from sdfc where accountnum=? and name=? and password=? and status='active'");
	ps.setInt(1, accountnum);
	ps.setString(2, name);
	ps.setString(3, password);
	ResultSet rs=ps.executeQuery();
	PreparedStatement ds=con.prepareStatement("update sdfc set status='active' where accountnum=? and name=? and password=? ");
	ds.setInt(1,accountnum);
	ds.setString(2,name);
	ds.setString(3,password);
	int i=ds.executeUpdate();
	out.print(i+" Your Account is Opened Successfully...! ");
	con.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>