<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	padding : 0;
	margin : 0;
}
body, html {
	width : 100%;
	height : 100%;
}
.container {
	width : 100%;
	height : 100%;
	position : relative;
	background-image : url("logimg.jpg");
	background-repeat : no-repeat;
	background-size : cover;
}
.box {
	width : 60%;
	height : 60%;
	text-align : center;
	position : absolute;
	left : 20%;
	top : 20%;
	background-color : #1A1A3A;
	border-radius : 40px;
}
.in {
	width : 50%;
	height : 30px;
	margin : 2% 0;
}
.head {
	color : white;
	font-size : 3em;
	padding : 10% 0;
}
.but {
	width : 60%;
	height : 30px;
	background : #ddd;
}
.aa {
	text-decoration : none;
	color : white;
	padding : 5% 5%;
}
</style>
</head>
<body>

<div class = "container">
	<div class = "box">
	<div class = "head">
		Welcome!
	</div>
	<form name = "form" method = "post" action = "login_Process.jsp">
		<div>
			<input class = "in" type = "text" name = "id" placeholder = "ID">
		</div>
		<div>
			<input class = "in" type = "password" name = "pass" placeholder = "PASSWORD">
		</div>
		<div style = "margin : 8%;">
			<input class = "but" type = "button" value = "LOGIN" onclick = "check()">
		</div>
		<div style = "margin : 8%;">
			<a class = "aa" href = "insert_member.jsp">회원가입</a>
			<a class = "aa" href = "find_idpass.jsp">아아디/비밀번호 찾기</a>
		</div>
	</form>
	</div>
</div>
<script>
function check() {
	if(!document.form.id.value || document.form.id.value == "") {
		alert("아이디가 입력되지 않았습니다.");
		document.form.id.focus();
	}
	else if(!document.form.pass.value || document.form.pass.value == "") {
		alert("비밀번호가 입력되지 않았습니다.");
		document.form.pass.focus();
	}
	else {
		document.form.submit();
	}
}
</script>
</body>
</html>