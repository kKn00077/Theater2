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
<title>이거봤어</title>
<style>
#serchDiv {
	margin-top: 3%;
	text-align: center;
}


#selectOption {
	width: 105px;
	height: 30px;
	font-size: 13pt;
}

#serch {
	height: 30px;
	width: 500px;
	font-size: 15pt;
}

#submit {
	height: 33px;
}
div{
	text-align:center;
	margin:auto;
}


</style>
</head>
<body>
<%
if(session.getAttribute("name")==null){ %>
	<jsp:include page="top.jsp" />
<%
}else{%>
	<jsp:include page="user_top.jsp" />
<%}
%>
	<div id="serchDiv">
		<form action="movieReview.jsp">
			<select name="selectOption" id="selectOption">
				<option value="director">감독</option>
				<option value="title">제목</option>
			</select> 
			<input type="text" name="search" id="serch"> 
			<input type="submit" value="검색" id="submit">
			
			<div id="reviewList" name="reviewList">
			<!-- 리뷰 목록 표시 -->
			<center>
			<table>
			
			<tr>
				<th>번호</th>
				<th>글 제목</th>
				<th>영화 제목</th>
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

				conn=MySQLConnection.GetMySQLConnection();
				
				String sql = "select id, title, movie_title, user_id, wdate from board";

				try{
					pstmt = conn.prepareStatement(sql);

					//pstmt.setString(1,id);

					rs = pstmt.executeQuery();
					int count=1;
					while(rs.next()){
				
						String getid=rs.getString("id");
						String gettitle=rs.getString("title");
						String getmovietitle=rs.getString("movie_title");
						String getuid=rs.getString("user_id");
						String date=rs.getString("wdate");
						%>
						
						<tr>
							<td><%= count++%></td>
							<td><a href="movieConfirm.jsp?id=<%=getid%>"><%= gettitle%></a></td>
							<td><a href="movie.jsp?movie_name=<%=getmovietitle%>"><%= getmovietitle%></a></td>
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
				 </center>
			</div>
		</form>
	</div>
	
</body>
</html>