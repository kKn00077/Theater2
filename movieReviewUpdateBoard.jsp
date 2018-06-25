<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<%

request.setCharacterEncoding("utf-8");
response.setContentType("utf-8");

String title=request.getParameter("title");
String movie_title=request.getParameter("movie_title");
String content=request.getParameter("content");
String id=request.getParameter("id");


out.println("<script>alert('"+title+", "+movie_title+", "+content+", "+id+"')</script>");

if(session.getAttribute("name")==null){
	response.sendRedirect("index.jsp");
}
%>

<jsp:include page="user_top.jsp" />
	<div id="board">
		<form method="post" action="movieReviewUpdateProc.jsp">
			제목 : <input type="text" name="title" value="<%=title %>" id="title"><br>
			영화 제목 : <input type="text" id="title" value="<%=movie_title %>" readonly><br>
			<textarea rows="4" cols="50" name="content" id="content"><%=content %></textarea><br>
			<input type="hidden" name="id" value="<%= id %>">
			<input type="submit" value="저장하기">
		</form>
	</div>
</body>
</html>