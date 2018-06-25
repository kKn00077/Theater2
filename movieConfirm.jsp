<%@page import="java.sql.SQLException"%>
<%@page import="Custom.Mysql.Connection.MySQLConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	
	<script src="//code.jquery.com/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="robots" content="noindex">
<title></title>

	<style id="jsbin-css">
	.post {
	padding: 0 1.5%
	}
	.comment-form .form-control {
	border: 0px;
	background: #eee;
	min-height: 50px;
	}
	.comment-form > .row {
	margin: 0 -1.5%
	}
	.comment-form [class*="col-"] {
	padding: 0 1.5%
	}
	
	
	@media (min-width:992px) {
	.post {
	width: 50%;
	max-width: 500px;
	margin: 0 auto;
	}
	.comment-form label {
	position: absolute;
	width: 200px;
	}
	.comment-form .name {
	left: -90%;
	top: 15px;
	text-align: right;
	}
	.comment-form .email {
	right: -90%;
	top: 15px;
	}
	.comment-form .message {
	left: -45%;
	top: 50%;
	margin-top: -16px;
	text-align: right;
	}
	}
	
	
	@media (min-width:1200px) {
	.post {
	max-width: 525px;
	}
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

<%!
						String title;
						String user_id;
						String movie_title;
						String date;
						String content;
 %>

<%		
				int id=Integer.parseInt(request.getParameter("id"));
				Connection conn;
				PreparedStatement pstmt = null;
				ResultSet rs;

				conn=MySQLConnection.GetMySQLConnection();
				
				String sql = "select title, user_id, movie_title, content, wdate from board where id=?";

				try{
					pstmt = conn.prepareStatement(sql);

					//pstmt.setString(1,id);
					pstmt.setInt(1, id);

					rs = pstmt.executeQuery();
					rs.next();
				
						title=rs.getString("title");
						user_id=rs.getString("user_id");
						movie_title=rs.getString("movie_title");
						date=rs.getString("wdate");
						content=rs.getString("content");
				
					MySQLConnection.close(conn);
					
					
					MySQLConnection.close(rs);
					
				}catch(SQLException e){
					e.printStackTrace();
				}
				 %>




	<div class="post">
		<div class="contact">
			<div class="title">
				<h2>Post a comment</h2>
			</div>
			<form class="comment-form" method="post" action="movieReviewUpdateBoard.jsp">
				<div class="row">
					<div class="col-sm-6 form-group">
					<label class="name">제목</label>
					<input type="text" class="form-control" value="<%=title %>" disabled />
					</div>
					
					<div class="col-sm-6 form-group">
					<label class="email">영화제목</label>
					<input type="text" class="form-control" value=" <%=movie_title %>" disabled/>
					</div>
						<div class="col-sm-6 form-group">
					<label class="name">작성자</label>
					<input type="text" class="form-control" value="<%=user_id %>"  disabled />
					</div>
					
					<div class="col-sm-6 form-group">
					<label class="email">작성날짜</label>
					<input type="text" class="form-control" value="<%=date %>" disabled />
					</div>
					
					
					<div class="clearfix"></div>
					<div class="col-md-12 form-group">
					<label class="message">내용</label>
					<textarea class="form-control" cols="47" rows="7" value="<%=content %>"  disabled> <%= content %></textarea>
					</div>
					
					<input type="hidden" name="id" value="<%=id %>">
					<input type="hidden" name="title" value="<%=title %>">
					<input type="hidden" name="movie_title" value="<%=movie_title %>">
					<input type="hidden" name="user_id" value="<%=user_id %>">
					<input type="hidden" name="content" value="<%=content %>">
			<%
				String uid=(String)session.getAttribute("id");
				
				
				if(uid!=null&&uid.equals(user_id)){ %>
					<input type="submit" value="수정하기">
			<%	}
			 %>
					
				</div>
			</form>
		</div>
	</div>







<script src="http://static.jsbin.com/js/render/edit.js?4.1.4"></script>
<script>jsbinShowEdit && jsbinShowEdit({"static":"http://static.jsbin.com","root":"http://jsbin.com"});</script>
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-1656750-34', 'auto');
ga('require', 'linkid', 'linkid.js');
ga('require', 'displayfeatures');
ga('send', 'pageview');

</script>

</body>
</html>

<!-- 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이거봤어</title>
<style>
#board{
	margin: auto;
	border: 1px solid #000000;
	width: 700px;
	height: 500px;
	margin-top: 3%;
	background-color: lightpink;
	color: #000000;
}
#content{
	background-color: lightpink;
	width: 99%;
	color: #000000;
	font-size: 15pt;
}
#title{
	background-color: lightpink;
	width: 80%;
	color: #000000;
	font-size: 15pt;

}
</style>
</head>
<body>
<%--
<%
if(session.getAttribute("name")==null){ %>
	<jsp:include page="top.jsp" />
<%
}else{%>
	<jsp:include page="user_top.jsp" />
<%}
%>

<%!
						String title;
						String user_id;
						String movie_title;
						String date;
						String content;
 %>

<%		
				int id=Integer.parseInt(request.getParameter("id"));
				Connection conn;
				PreparedStatement pstmt = null;
				ResultSet rs;

				conn=MySQLConnection.GetMySQLConnection();
				
				String sql = "select title, user_id, movie_title, content, wdate from board where id=?";

				try{
					pstmt = conn.prepareStatement(sql);

					//pstmt.setString(1,id);
					pstmt.setInt(1, id);

					rs = pstmt.executeQuery();
					rs.next();
				
						title=rs.getString("title");
						user_id=rs.getString("user_id");
						movie_title=rs.getString("movie_title");
						date=rs.getString("wdate");
						content=rs.getString("content");
				
					MySQLConnection.close(conn);
					
					
					MySQLConnection.close(rs);
					
				}catch(SQLException e){
					e.printStackTrace();
				}
				 %>


	<div id="board">
		<form method="post" action="movieReviewUpdateBoard.jsp">
			제목 : <%=title %> <input type="hidden" name="title" value="<%=title%>"><br>
			영화 제목 : <%=movie_title %> <input type="hidden" name="movie_title" value="<%=movie_title%>"><br>
			작성자 : <%=user_id %><br>
			작성 날짜 : <%=date %>
			<p>
			내용 : <%= content %> <input type="hidden" name="content" value="<%=content%>">
			</p>
			<input type="hidden" name="id" value="<%=id+"" %>">
			<%
				String uid=(String)session.getAttribute("id");
				if(uid!=null&&uid.equals(user_id)){ %>
					<input type="submit" value="수정하기">	
			<%	}
			 %>
		</form>
	</div>
</body>
</html>
--%>
-->