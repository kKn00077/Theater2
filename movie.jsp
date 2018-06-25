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
<title>Insert title here</title>
</head>
<body>
<form action="movieReviewBoard.jsp" method="post">


<%
if(session.getAttribute("name")==null){ %>
	<jsp:include page="top.jsp" />
<%
}else{%>
	<jsp:include page="user_top.jsp" />
<%}
%>

<div id="reviewList" name="reviewList">
<center>
			<!-- 리뷰 목록 표시 -->
			<table>
			
			<%
				String title=request.getParameter("movie_name");
				int count=1;
			%> 
				<input type="hidden" name="title" value="<%=title%>">		
			<%	Connection conn;
				PreparedStatement pstmt = null;
				ResultSet rs;

				conn=MySQLConnection.GetMySQLConnection();
				
				String sql = "select id, title, user_id, wdate from board where movie_title=?";

				try{
					pstmt = conn.prepareStatement(sql);

					//pstmt.setString(1,id);
					pstmt.setString(1, title);

					rs = pstmt.executeQuery();
					while(rs.next()){
				
						String getid=rs.getString("id");
						String gettitle=rs.getString("title");
						String getuid=rs.getString("user_id");
						String date=rs.getString("wdate");
						%>
						
						<tr>
							<td><%= count++%></td>
							<td><a href="movieConfirm.jsp?id=<%=getid%>"><%= gettitle%></a></td>
							<td><%= getuid%></td>
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
				 
				 
			<%
if(session.getAttribute("name")!=null){ %>
	<input type="submit" value="리뷰쓰기">
<%
}%>
				 
				 </center>
			</div>
			

</form>
</body>
</html>