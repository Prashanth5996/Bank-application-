<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function register(){
	
    let acno=document.forms["regform"]["acno"].value;
    let arr1=[];
    if(/^$/.test(acno)){
        arr1.push("Account Number can't left blank");
    }else if(!/[\w]{8,10}/.test(acno)){
        arr1.push("must follow validation rules");
    }
    document.getElementById("acno_errors").innerHTML=arr1.join(",");

    let name=document.forms["regform"]["name"].value;
    let arr2=[];
    if(/^$/.test(name)){
        arr2.push("Name can't left blank");
    }else if(!/[\w]{8,10}/.test(name)){
        arr2.push("must follow validation rules");
    }
    document.getElementById("name_errors").innerHTML=arr2.join(",");

    let upwd=document.forms["regform"]["pswd"].value;
    let arr3=[];
    if(/^$/.test(pswd)){
        arr3.push("Password can't left blank");
    }else if(!/[\w]{8,}/.test(pswd)){
        arr3.push("must follow validation rules");
    }
    document.getElementById("pswd_errors").innerHTML=arr3.join(",");

    let cupwd=document.forms["regform"]["cpswd"].value;
    let arr4=[];
    if(/^$/.test(cpswd)){
        arr4.push("Confpassword can't left blank");
    }else if(pswd!=cpswd){
        arr4.push("must follow validation rules");
    }
    document.getElementById("cpswd_errors").innerHTML=arr4.join(",");

    let amount=document.forms["regform"]["amt"].value;
    let arr5=[];
    if(/^$/.test(amt)){
        arr5.push("Amount can't left blank");
    }else if(!/^\d)+$/.test(amt)){
        arr5.push("must follow validation rules");
    }
    document.getElementById("amt_errors").innerHTML=arr5.join(",");
    
    let uaddress=document.forms["regform"]["addr"].value;
    let arr6=[];
    if(uaddress==""){
        arr6.push("Address can't left blank");
    }
    document.getElementById("addr_errors").innerHTML=arr9.join(",");
    
    let acno=document.forms["regform"]["mob"].value;
    let arr7=[];
    if(/^$/.test(mob)){
        arr7.push("Mobile Number can't left blank");
    }else if(!/[\d]{10}/.test(acno)){
        arr7.push("must follow validation rules");
    }
    document.getElementById("acno_errors").innerHTML=arr1.join(",");
    return false;
}
</script>
</body>
</html>