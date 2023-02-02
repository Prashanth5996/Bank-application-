<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table{
 padding: 10px;
 font-weight:bold;
}
h1 {
	text-align:center;
	color: red;
}
body {
	 text-align:center;
	margin: auto;
	background-image: url('log29.jpg');
 	background-size: 100%;
  	margin:79px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1 style="color: red">SDFC BANK</h1>
<button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="closeac.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="openac.jsp">Open A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="aboutus.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<form action="CloseAcCode.jsp" method="post" name="regform" onsubmit="return register()">
<h1>CLOSE ACCOUNT</h1>
<table>
<tr>
<td>Account No:</td>
<td><input type="text" name="acno" placeholder="Enter account number"></td>
</tr>
<tr>
<td>Name :</td>
<td><input type="text" name="uname" placeholder="Enter user Name"></td>
</tr>
<tr>
<td>Password :</td>
<td><input type="password" name="pswd" placeholder="Enter user password"></td>
</tr>
<tr>
<tr>
<td><input type="submit" value="Submit" ></td>
<td><input type="reset" value="Clear" ></td>
</tr>
</table>
</form>
<script type="text/javascript">
function register(){
	var v1=regform.acno.value;
	if (v1=="") 
	 { 
	 alert ( "Account Number Can't Left Blank:" ); 
	 document.regform.acno.focus(); 
	 	return false; 
	 }
	var v2=regform.uname.value;
	if (v2=="") 
	 { 
	 alert ( " Name Can't Left Blank :" ); 
	 document.regform.uname.focus(); 
	 	return false; 
	 } 
	var v3=regform.pswd.value;
	if (v3=="") 
	 { 
	 alert ( "Password Can't Left Blank:" ); 
	 document.regform.pswd.focus(); 
	 	return false; 
	 }	
}
</script>