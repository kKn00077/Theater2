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
		if(session.getAttribute("name")==null){
			response.sendRedirect("index.jsp");
		}
%>
	
<jsp:include page="user_top.jsp"/>
</body>
</html>