<%@page import="Custom.Mysql.Connection.MySQLConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    	String name, id, pw;
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");
		
		id = request.getParameter("id");
		pw = request.getParameter("password");
		
		Connection conn;
		PreparedStatement pstmt = null;
		ResultSet rs;

		conn=MySQLConnection.GetMySQLConnection();
		
		String sql = "select * from member where user_id=?";                        // sql 쿼리

		try{
			pstmt = conn.prepareStatement(sql);                          // prepareStatement에서 해당 sql을 미리 컴파일한다.

			pstmt.setString(1,id);

			rs = pstmt.executeQuery();                                        // 쿼리를 실행하고 결과를 ResultSet 객체에 담는다.

			rs.next();
		
			String getPw=rs.getString("user_pass");
			String getId=rs.getString("user_id");
			String getName=rs.getString("name");
		
			MySQLConnection.close(conn);
			
			if(getPw.equals(pw)){ 
				session.setAttribute("login", "yes");
				session.setAttribute("id", getId);
				session.setAttribute("name", getName);
			}
			
			MySQLConnection.close(rs);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		String login=(String) session.getAttribute("login");
		
		if(login!=null && login.equals("yes")){
			out.println("<script>");
			out.println("alert('"+session.getAttribute("name")+"님의 방문을 감사드립니다!')");
			out.println("location.href='user_index.jsp'");
			out.println("</script>");
			} 
		else{
			out.println("<script>");
			out.println("alert('일치하는 정보가 없습니다!')");
			out.println("location.href='signIn.jsp'");
			out.println("</script>");
		}
%>
</body>
</html>