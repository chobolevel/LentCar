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
body,html {
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
	position : absolute;
	top : 20%;
	left : 20%;
	background-color : #1A1A3A;
	border-radius : 40px;
	text-align : center;
}
#tab1 {
	width : 60%;
	margin : 0 auto;
}
#tab1 td {
	text-align : center;
}
h1 {
	text-align : center;
	color : white;
	padding : 12px 0 8px 0;
	font-size : 1.5em;
}
#tab1 input[type=text] {
	width : 90%;
	height : 26px;
	margin : 8px;
}
#tab1 input[type=button] {
	width : 90%;
	height : 26px;
	background : #eee;
	margin-top : 20px;
}
</style>
</head>
<body>

<div class = "container">

<div class = "box">
	<div align = "center">
		<h1>회원 가입을 환영합니다!</h1>
		<form name = "form" method = "post" action = "insert_memberProcess.jsp">
		<table id = "tab1">
			<tr>
				<td><input type = "text" name = "id" placeholder = "아이디"></td>
			</tr>
			<tr>
				<td><input type = "text" name = "password" placeholder = "비밀번호"></td>
			</tr>
			<tr>
				<td><input type = "text" name = "passcheck" placeholder = "비밀번호 확인"></td>
			</tr>
			<tr>
				<td><input type = "text" name = "name" placeholder = "이름"></td>
			</tr>
			<tr>
				<td><input type = "text" name = "address" placeholder = "주소"></td>
			</tr>
			<tr>
				<td><input type = "text" name = "phone" placeholder = "전화번호"></td>
			</tr>
			<tr>
				<td><input type = "text" name = "birth" placeholder = "생년월일(8자리)"></td>
			</tr>
			<tr>
				<td align = "center">
					<input type = "button" value = "회원가입" onclick = "check()">
				</td>
			</tr>
		</table>
		</form>
	</div>
</div>

</div> 
<script>
function check() {
	if(!document.form.id.value || document.form.id.value == "") {
		alert("아이디가 입력되지 않았습니다.");
		document.form.id.focus();
		return false;
	}
	if(!document.form.pass1.value || document.form.pass1.value == "") {
		alert("비밀번호가 입력되지 않았습니다.");
		document.form.pass1.focus();
		return false;
	}
	if(!document.form.pass2.value || document.form.pass2.value == "") {
		alert("확인 비밀번호가 일력되지 않았습니다.");
		document.form.pass2.focus();
		return false;
	}
	if(document.form.pass1.value != document.form.pass2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.form.pass2.focus();
		return false;
	}
	if(!document.form.name.value || document.form.name.value == "") {
		alert("이름이 입력되지 않았습니다.");
		document.form.name.focus();
		return false;
	}
	if(!document.form.address.value || document.form.address.value == "") {
		alert("주소가 입력되지 않았습니다.");
		document.form.address.focus();
		return false;
	}
	if(!document.form.phone.value || document.form.phone.value == "") {
		alert("전화번호가 입력되지 않았습니다.");
		document.form.phone.focus();
		return false;
	}
	if(!document.form.birth.value || document.form.birth.value == null) {
		alert("생년월일이 입력되지 않았습니다.");
		document.form.birth.focus();
		return false;
	}
	if(document.form.birth.value.length<8 || document.form.birth.value.length>8) {
		alert("생년월일이 올바르지 않습니다.");
		document.form.birth.focus();
		return false;
	}
	document.form.submit();
}
</script>
</body>
</html>