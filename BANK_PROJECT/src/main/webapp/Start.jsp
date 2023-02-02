<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	 text-align:center;
	margin: auto;
	background-image: url('log3.gif');
  	background-repeat: no-repeat;
  	background-size: 100%;
  	margin:80px;
}
button {
	font-size: 22px;
}
</style>
</head>
<body>
<button onclick="myFunction()"><a href="Home.jsp">START</button>
<script>
function myFunction() {
  location.replace("http://localhost:8088/BANK_PROJECT/")
}
</script>
</body>
</html>