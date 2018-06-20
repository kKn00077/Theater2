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
	background-color: olive;
	color: #ffffff;
}
#content{
	background-color: olive;
	width: 99%;
	color: #ffffff;
	font-size: 15pt;
}
#title{
	background-color: olive;
	width: 80%;
	color: #ffffff;
	font-size: 15pt;

}
</style>
</head>
<body>

<%
if(session.getAttribute("name")==null){
	response.sendRedirect("index.jsp");
}
%>
<%
if(session.getAttribute("name")==null){ %>
	<jsp:include page="top.jsp" />
<%
}else{%>
	<jsp:include page="user_top.jsp" />
<%}
%>
	<div id="board">
		<form method="post" action="movieReviewProc.jsp">
			제목 : <input type="text" name="title" id="title"><br>
			<textarea rows="4" cols="50" name="content" id="content"></textarea><br>
			<input type="submit" value="저장하기">
		</form>
	</div>
</body>
</html>