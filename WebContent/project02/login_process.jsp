<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "DBConn.jsp" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select password from c_member where id = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			String temp_pass = rs.getString(1);
			if(password.equals(temp_pass)) {
				session.setAttribute("signedUser", id);
				%>
				<script>
					location.href = "index.jsp";				
				</script>
				<%
			}
			else {
				%>
				<script>
					alert("비밀번호가 일치하지 않습니다!");
					history.back(-1);
				</script>
				<%
			}
		}
		else {
			%>
			<script>
				alert("존재하는 ID가 없습니다!");
				history.back(-1);
			</script>
			<%
		}
	}
	catch (SQLException e) {
		e.printStackTrace();
	}
%>