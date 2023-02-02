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
	background-image: url('log16.jpg');
  	background-repeat: no-repeat;
  	background-size: 100%;
  	margin: 50px;
  	font-weight:bold;
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
	
	//1
	
	PreparedStatement ps=con.prepareStatement("select *from sdfc where accountnum=? and name=? and password=? and status='active'");
	ps.setInt(1, accountnum);
	ps.setString(2, name);
	ps.setString(3, password);
	ResultSet rs=ps.executeQuery();
	int accountnum1=accountnum;
	
	//2
	
	accountnum=Integer.parseInt(request.getParameter("tano"));
	PreparedStatement qs=con.prepareStatement("select * from sdfc where accountnum=? and status='active'");
	qs.setInt(1, accountnum);
	ResultSet ss=qs.executeQuery();
	int balance=0,balance1=0;
	int accountnum3=accountnum;
	if(rs.next() & ss.next())
	{
		balance=rs.getInt(4);
		balance1=ss.getInt(4);	
		
	//3
	
	int amount=Integer.parseInt(request.getParameter("amt"));
	if(balance>amount){
		accountnum=accountnum1;
		PreparedStatement ds=con.prepareStatement("update sdfc set amount=? where accountnum=? and name=? and password=? and status='active'");
		amount=(balance-amount);
		ds.setInt(1,amount);
		ds.setInt(2, accountnum);
		ds.setString(3,name);
		ds.setString(4,password);
		int i=ds.executeUpdate();
		out.print("<h1>"+"ACCOUNT INFO"+"</h1>");
		out.print("Account = "+accountnum1+" balance is = "+amount+"<br>");
		
		//4	
		
		 int amount2=Integer.parseInt(request.getParameter("amt"));
		 accountnum=accountnum3;
		PreparedStatement us=con.prepareStatement("update sdfc set amount=? where accountnum=? and status='active'");
		   amount=balance1+amount2;
			us.setDouble(1, amount);
		    us.setInt(2,accountnum);
		    int q=us.executeUpdate();
			out.print("Account = "+accountnum+" balance is = "+amount+"<br>");
		    out.print("Account = "+accountnum+" balance increases = "+(amount-balance1)+"<br>");
	}
	else
	{
		out.print("INSUFFICIENT AMOUNT BALANCE");
	}
	}
	else{
		out.print("  INVALID DETAILS  ");
	}
	
	con.close();
	}
	catch(Exception ex)
	{
		out.print(ex);
	}
%>