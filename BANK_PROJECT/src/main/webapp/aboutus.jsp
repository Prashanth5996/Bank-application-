<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#border{
 border:2px solid black;
 background-color:red;
}
#my{
	text-align: center;
	color: white;
}
u{
	font-weight:bold;
}
#bye{
	
	margin:inherit;
	font-size: 22px;
}
</style>
</head>
<body bgcolor="Bisque">
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
<p></p>
<center id="border">
<u><h1><p id="my" style="color: blue">ABOUT US</p></h1></u>
<h2><p id="my">SDFC was established as a specialized financial institution <br>
providing financial products and ancillary services to MSMEs and entrepreneurial<br>
 start-ups with the primary purpose of easing access to finance for MSMEs.</p></h2>
<h3><p id="my">SDFC Finance was incorporated in 1990. The company was erstwhile<br>
called as Subhash Dalal Finance Corporation until 1995. Earlier the<br>
company was into merchant banking operations and handled over 125<br>
public issues as a lead manager. It was one of the leading merchant<br>
bankers in the state of Gujarat.</p></h3>
</center>
<p></p>
<center><button id="bye" onclick="myFunction()"><a href="End.jsp">FINISH</button>
<script>
function myFunction() {
  location.replace("http://localhost:8088/BANK_PROJECT/End.jsp")
}
</script></center>
</body>
</html>