<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="Custom.Mysql.Connection.MySQLConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이거봤어</title>
</head>
<body>

<%

request.setCharacterEncoding("utf-8");
response.setContentType("utf-8");

		if(session.getAttribute("name")==null){
			response.sendRedirect("index.jsp");
		}
%>
	
<jsp:include page="user_top.jsp"/>

<div>
<center>
	<h1>내가 쓴 글</h1>
				
				<table>
				
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성날짜</th>
					</tr>
	<%
				String type=request.getParameter("selectOption");
				String searchtext=request.getParameter("search");
				
				if(searchtext==null) searchtext="";
				
				Connection conn;
				PreparedStatement pstmt = null;
				ResultSet rs;
				
				String user_id=(String)session.getAttribute("id");

				conn=MySQLConnection.GetMySQLConnection();
				
				String sql = "select id, title, user_id, wdate from board where user_id = ?";

				try{
				
					
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setString(1, user_id);

					//pstmt.setString(1,id);

					rs = pstmt.executeQuery();
					int count=1;
					while(rs.next()){
				
						String getid=rs.getString("id");
						String gettitle=rs.getString("title");
						String getuid=rs.getString("user_id");
						String date=rs.getString("wdate");
						%>
						
						<tr>
							<td><%= count++%></td>
							<td><a href="movieConfirm.jsp?id=<%=getid%>"><%= gettitle%></a></td>
							<td><%= getuid %></td>
							<td><%= date%></td>
						</tr>
						
<% 					}
				
					MySQLConnection.close(conn);
					
					
					MySQLConnection.close(rs);
					
				}catch(SQLException e){
					e.printStackTrace();
				}
				 %>
				 </table>
				 </center>
			</div>


</body>
</html>