<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
* {
	padding : 0;
	margin : 0;
}
body,html {
	width : 100%;
	height : 100%;
}
.container {
	width : 100%;
	height : 100%;
	background-image : url("logimg.jpg");
	background-repeat : no-repeat;
	background-size : cover;
	position : relative;
}
.box {
	width : 60%;
	height : 40%;
	position : absolute;
	top : 30%;
	left : 20%;
	background-color : #1A1A3A;
	text-align : center;
	border-radius : 20px;
}
#tab1 {
	width : 80%;
	margin : auto;
}
#tab1 input[type=text],[type=password] {
	width : 100%;
	height : 36px;
	margin : 5px 0;
}
#tab1 input[type=button] {
	width : 80%;
	height : 90px;
	background : #eee;
}
h1 {
	padding-top : 26px;
	padding-bottom : 22px;
	color : white;
}
.aa {
	text-decoration : none;
	color : white;
	font-weight : bold;
}
</style>
</head>
<body>

<div class = "container">
<div class = "box">
<h1>WELCOME!</h1>
<form name = "form" method = "post" action = "login_process.jsp">
<table id = "tab1">
<tr>
	<td><input type = "text" name = "id" placeholder = "아이디"></td>
	<td rowspan = "2" style = "line-height:20px">
		<input type = "button" value = "로그인" onclick = "check()">
	</td>
</tr>
<tr>
	<td><input type = "password" name = "password" placeholder = "비밀번호"></td>
</tr>
<tr>
	<td colspan = "2" height = "40px">
		<a class = "aa" href = "insert_member.jsp">회원가입</a>
	</td>
</tr>
</table>
</form>
</div>
</div>
<script>
function check() {
	if(document.form.id.value == "") {
		alert("아이디가 입력되지 않았습니다.");
		document.form.id.focus();
	}
	else if(document.form.password.value == "") {
		alert("비밀번호가 입력되지 않았습니다.");
		document.form.password.focus();
	}
	else {
		document.form.submit();
	}
}
</script>
</body>
</html>