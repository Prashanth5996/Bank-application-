<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	 text-align:center;
	margin: auto;
	background-image: url('log17.jpg');
  	background-repeat: no-repeat;
  	background-size: 100%;
  	margin: 50px;
  	font-weight:bold;
  	color:white;
}
</style>
</head>
<body>
<% 
int accountnum=Integer.parseInt(request.getParameter("acno"));
String name=request.getParameter("uname");
String password=request.getParameter("pswd");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps=con.prepareStatement("select * from sdfc where accountnum=? and name=? and password=? and status='active' ");
	ps.setInt(1, accountnum);
	ps.setString(2, name);
	ps.setString(3, password);
	ResultSet rs=ps.executeQuery();
	double balance=0.0;
	if(rs.next())
	{
		balance=rs.getDouble(4);
	}
	else
	{
		out.print("INVALID DETAILS.  ");
	}
	double amount=Double.parseDouble(request.getParameter("amt"));
	if(amount<balance){
	double withdraw=0.0;
	amount=balance-amount;
	PreparedStatement ds=con.prepareStatement("update sdfc set amount=? where accountnum=? and name=? and password=? and status='active'");
	ds.setDouble(1, amount);
	ds.setInt(2, accountnum);
	ds.setString(3, name);
	ds.setString(4, password);
	int i=ds.executeUpdate();
	out.println("<h1>"+"Account Info"+"</h1>");
	out.println("Account Number :"+accountnum+"<br>");
	out.println("Withdraw amount : "+(balance-amount)+"<br>");
	out.println("Current Balance :"+balance+"<br>");
	out.println("After Withdraw Current Balance :"+amount+"<br>");
	}
	else
	{
		out.print("INSUFFICIENT AMOUNT BALANCE");
	}
	con.close();
}

	catch(Exception ex)
	{
		out.print(ex);
	}
%>