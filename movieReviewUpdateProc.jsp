<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="Custom.Mysql.Connection.MySQLConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int id=Integer.parseInt(request.getParameter("id"));
		
		Connection conn;
		PreparedStatement pstmt = null;

		conn=MySQLConnection.GetMySQLConnection();
		
		String sql = "update board set title=?, content=? where id=?";                        // sql 쿼리

		System.out.println("try/catch 입성전");
		try{
			pstmt = conn.prepareStatement(sql);   
			System.out.println("가실행 완료");// prepareStatement에서 해당 sql을 미리 컴파일한다.

			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, id);
			
			
			pstmt.executeUpdate();
			System.out.println("삽입완료");
			
			MySQLConnection.close(conn);
			MySQLConnection.close(pstmt);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		out.println("<script>");
		out.println("alert('글이 성공적으로 들어갔습니다!')");
		out.println("location.href='movieReview.jsp'");
		out.println("</script>");
%>
</body>
</html>