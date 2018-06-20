<%@page import="Custom.Mysql.Connection.MySQLConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
	
	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String pwd=request.getParameter("password");
	String re_pwd=request.getParameter("re_password");
	String sex=request.getParameter("sex");
	String birth=request.getParameter("birth");
	String email;//=request.getParameter("mailid")+request.getParameter("_mail");
	
	if(request.getParameter("email").equals("")||request.getParameter("domain").equals("")){
		email="null";
	}else{
		email=request.getParameter("email")+request.getParameter("domain");
	}
	
	if(!pwd.equals(re_pwd)){
		out.println("<script>");
		out.println("alert('비밀번호가 일치하지 않습니다!');");
		out.println("history.back();");
		out.println("</script>");
		return;
	}
	
	 
	 Connection conn=MySQLConnection.GetMySQLConnection();
	 
	 String sql="insert into member (name, user_id, user_pass, sex, birth, email) values(?, ?, ?, ?, str_to_date(?, '%Y-%m-%d'), ?)";
	 PreparedStatement pstmt=conn.prepareStatement(sql);
	
	 pstmt.setString(1,name);
	 pstmt.setString(2,id);
	 pstmt.setString(3,pwd);
	 pstmt.setString(4,sex);
	 pstmt.setString(5, birth);
	 pstmt.setString(6,email);
	 
	 pstmt.executeUpdate();
	
	 MySQLConnection.close(conn);
	 MySQLConnection.close(pstmt);
	
%>

<%--회원가입이 정상 처리 되었습니다.<br />
<a href="login.jsp">로그인</a>--%>

<%
	out.println("<script>");
	out.println("alert('회원가입을 축하드립니다!');");
	out.println("location.href='signIn.jsp';");
	out.println("</script>");
%>

</body>
</html>