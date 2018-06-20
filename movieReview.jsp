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
				<option value="all">감독+제목</option>
				<option value="director">감독</option>
				<option value="title">제목</option>
			</select> 
			<input type="text" name="search" id="serch"> 
			<input type="submit" value="검색" id="submit">
			<%
				if(session.getAttribute("id")!=null){%>
					<button type="button" onclick="location.href='movieReviewBoard.jsp' " id="submit">리뷰쓰기</button>
			<%
				}
			%>
			
			<div id="reviewList" name="reviewList">
			<!-- 리뷰 목록 표시 -->
			</div>
			
			<%--
				String type=request.getParameter("selectOption");
				String searchtext=request.getParameter("search");
				
				if(searchtext==null) searchtext="";
				
				Connection conn;
				PreparedStatement pstmt = null;
				ResultSet rs;

				conn=MySQLConnection.GetMySQLConnection();
				
				String sql = "select id, title, user_id, wdate from board";

				try{
					pstmt = conn.prepareStatement(sql);

					//pstmt.setString(1,id);

					rs = pstmt.executeQuery();

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
			--%>
			
		</form>
	</div>
	
</body>
</html>