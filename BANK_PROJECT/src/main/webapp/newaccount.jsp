<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	padding: 10px;
}
td,h1{
	color:white;
	font-weight:bold;
}
h1{
	color: red;
}
body {
	 text-align:center;
	margin: auto;
	background-image: url('log24.webp');
  	background-repeat: no-repeat;
  	background-size: 100%;
  	margin: 50px;
}
alert{
	color: red;
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
<form action="NewAccountCode.jsp" method="post" name="regform" onsubmit="return register()">
 <center>    <table>
 <h1>ACCOUNT FORM</h1>
 					       <!----Account Number---->
                      <tr>
                        <td>
                             Account Number:
                        </td>
                        <td>
                            <input type="number"
                            name="acno"
                            placeholder="Enter Account Number">
                        </td>
                        <td>
                            <span id="acno_errors" ></span>
                        </td>
                    </tr>
                    <!----name---->
                    <tr>
                        <td>
                             Name:
                        </td>
                        <td>
                            <input type="text"
                            name="uname"
                            placeholder="Enter name">
                        </td>
                        <td>
                                <span id="name_errors" ></span>
                        </td>
                    </tr>
                    <!----Password---->
                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <input type="password"
                            name="pswd"
                            placeholder="Enter Password" >
                        </td>
                       <td>
                                <span id="pswd_errors" ></span>
                        </td>
                    </tr>
                        <!----Confirm_Password---->
                    <tr>
                        <td>
                            Confirm_Password:
                        </td>
                        <td>
                            <input type="password"
                            name="cpswd"
                            placeholder="Enter Confirm Password" >
                        </td>
                         <td>
                                <span id="cpswd_errors"></span>
                            </td>
                    </tr>
                             <!----Amount---->
                      <tr>
                        <td>
                             Amount:
                        </td>
                        <td>
                            <input type="number"
                            name="amt"
                            placeholder="Enter Amount">
                        </td>
                         <td>
                                <span id="amt_errors"></span>
                            </td>
                    </tr>
                    <!-----Address------>
                        <tr>		
                            <td>Address:</td>
                            <td>
                            <textarea  cols="" rows="" name="addr"></textarea>
                            </td>
                            <td>
                                <span id="addr_errors"></span>
                            </td>
                        </tr>
                              <!----Mobile Number---->
                      <tr>
                        <td>
                            Mobile Number:
                        </td>
                        <td>
                            <input type="text"
                            name="mob"
                            placeholder="Enter Mobile Number">
                        </td>
                        <td>
                                <span id="mob_errors"></span>
                            </td>
                    </tr>

                        <tr>
                            <td><input type="submit" value="register"></td>
                            <td><input type="reset" value="Clear"></td>
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
	var v4=regform.cpswd.value;
	if (v4=="") 
	 { 
	 alert ( "Conform Password Can't Left Blank:" ); 
	 document.regform.cpswd.focus(); 
	 	return false; 
	 }
	if (v3!=v4) 
	 { 
	 alert ( "password and Confirm password Must match:" ); 
	 document.regform.pswd.focus(); 
	 return false; 
	 } 

	var v5=regform.amt.value;
	if(v5=="") 
	 { 
	 	alert ("Amount Can't Left Blank" ); 
	 	document.regform.amt.focus(); 
	 return false; 
	 } 
	var v6=regform.addr.value;
	if (v6=="") 
	 { 
	 alert ( "Address Can't Left Blank " ); 
	 document.regform.addr.focus(); 
	 return false; 
	 }
	var v = /^\d{10}$/; 
	 var v7=regform.mob.value; 
	 if (v7=="") 
	 { 
	 alert ( "Phone Number Can't Left Blank:" ); 
	 document.regform.mob.focus(); 
	 return false; 
	 } 
	 if(!regform.mob.value.match(v)) 
	 { 
	 alert("Mobile Number must be 1 to 10 Integers"); 
	 document.regform.mob.focus(); 
	 return false; 
	 } 
	 else 
	 { 
	 return true; 
	 }
}
</script>
</body>
</html>
