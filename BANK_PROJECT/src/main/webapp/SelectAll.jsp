<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print("<body BGCOLOR =LightCyan>");
try 
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	java.sql.Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select*from sdfc");
	ResultSetMetaData rsmd=rs.getMetaData();
	out.print("<html><body><table border='1'>");
	int n=rsmd.getColumnCount();
	for(int i=1;i<=n;i++)
	{
		out.println("<td><font color=blue size=3>"+"<br>"+rsmd.getColumnName(i));
	 
	}
	   out.println("<tr>");
	while(rs.next())
	{
		for(int i=1;i<=n;i++)
			out.println("<td><br>"+rs.getString(i));
		out.println("<tr>");
		
	}
	out.println("</table></body></html>");
	con.close();
}
catch(Exception ex)
{
	out.println(ex);
}
%>
</body>
</html>