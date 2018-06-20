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
		<form action="serchMoive.jsp">
			<select name="selectOption" id="selectOption">
				<option value="all">감독+제목</option>
				<option value="director">감독</option>
				<option value="title">제목</option>
			</select> 
			<input type="text" name="serch" id="serch"> 
			<input type="submit" value="검색" id="submit">
		</form>
	</div>
	
	<div id="serchList">
	</div>
</body>
</html>