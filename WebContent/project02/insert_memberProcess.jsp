<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>

<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass1");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String birth = request.getParameter("birth");
	PreparedStatement pstmt = null;
	String sql = "insert into c_member values(?, ?, ?, ?, ?, ?)";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		pstmt.setString(4, address);
		pstmt.setString(5, phone);
		pstmt.setString(6, birth);
		pstmt.executeUpdate();
		%>
		<script>
			alert("회원 가입에 성공하였습니다!");
			location.href = "login.jsp";
		</script>
		<%
	}
	catch (SQLException e) {
		e.printStackTrace();
	}
%>