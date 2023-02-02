<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
 padding: 10px;
}
h1 {
	text-align:center;
	color: red;
}
body {
	 text-align:center;
	margin: auto;
	background-image: url('log27.jpg');
 	background-size: 100%;
  	margin:79px;
}
</style>
</head>
<body>
<center><h1 style="color: red">SDFC BANK</h1></center>
<center><button><a href="Home.jsp">Home</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="newaccount.jsp">NewAccount</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="balance.jsp">Balance</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="deposit.jsp">Deposit</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="withdraw.jsp">Withdraw</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="transfer.jsp">Transfer</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="closeac.jsp">Close A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="openac.jsp">Open A/C</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="aboutus.jsp">AboutUs</a></button>&nbsp;&nbsp;&nbsp;&nbsp;</center>
<form action="TransferCode.jsp" method="post" name="regform" onsubmit="return register()">
<h1>TRANSFER FORM</h1>
<center><table>
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
<td>Target Account No :</td>
<td><input type="text" name="tano" placeholder="Enter account number"></td>
</tr>
<tr>
<td>Amount:</td>
<td><input type="text" name="amt" placeholder="Enter ammount "></td>
</tr>
<tr>
<td><input type="submit" value="Submit" ></td>
<td><input type="reset" value="Clear" ></td>
</tr>
</table></center>
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
	var v4=regform.tano.value;
	if (v4=="") 
	 { 
	 alert ( "Target Acc Number Can't Left Blank:" ); 
	 document.regform.tano.focus(); 
	 	return false; 
	 }
	var v5=regform.amt.value;
	if(v5=="") 
	 { 
	 	alert ("Transfer Amount Can't Left Blank" ); 
	 	document.regform.amt.focus(); 
	 return false; 
	 } 
}
</script>
</body>
</html>