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
#genre{
	width: 130px;
	height: 30px;
	font-size: 13pt;
}
section{
align:center;

}
table{
border:solid 1px;
margin:10px 100px;
align:center;
text-align:center;
width:70%;}
tr,td{
border:solid 1px;
}
#kk{
border:solid 1px;
width:15%;}

#movies{
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
		<form action="serchMoive.jsp">
		<select name="genre" id="genre">
			<!--<option value="all">모든 장르</option>-->
				<option value="adventure">어드벤처</option>
				<option value="animation">애니메이션</option>
				<option value="comedy">코미디</option>
				<option value="crime">범죄</option>
				<option value="docu">다큐</option>
				<option value="family">가족</option>
				<option value="fantasy">판타지</option>
				<option value="mystery">미스테리</option>
				<option value="rm">로멘틱/코미디</option>
				<option value="sf">sf</option>
				<option value="show">show</option>
			</select>
			<select name="selectOption" id="selectOption">
				<option value="director">감독</option>
				<option value="title">제목</option>
			</select> 
			<input type="text" name="search" id="serch"> 
			<input type="submit" value="검색" id="submit">
		</form>
	</div>
	
	<div id="movies">
		<center>
		<table>
			<tr>
				<th>번호</th>
				<th>제목(연도)</th>
				<th>나라</th>
				<th>감독</th>
			</tr>
	<%	
				String type1=request.getParameter("genre"); // 장르
				String type2=request.getParameter("selectOption"); // 감독 or 제목
				String searchtext=request.getParameter("search"); //검색한 내용
				
				if(searchtext==null) searchtext="";
				
				Connection conn;
				PreparedStatement pstmt = null;
				ResultSet rs;

				conn=MySQLConnection.GetMySQLConnection();
				
				String sql = "select  title, year, country, director from movie_"+type1+" where "+type2+" like '%"+searchtext+"%' order by title";
				
				try{
					pstmt = conn.prepareStatement(sql);
					
					/* pstmt.setString(1, type2);
					pstmt.setString(2, searchtext); */

					//pstmt.setString(1,id);

					rs = pstmt.executeQuery();
					int count=1;
					while(rs.next()){
						
						String title= rs.getString("title");
						String year=rs.getString("year");
						String country=rs.getString("country");
						String director=rs.getString("director");
						%>
						<tr>
						 <td>
						 	<%=count++ %>
						 </td>
						 <td>
						 	<a href="movie.jsp?movie_name=<%=title%>"><%=title+"("+year+")"%></a>
						 </td>
						 <td>
						 	<%=country%>
						 </td>
						 <td>
						 	<%=director%>
						 </td>
						</tr>
						<%
					}
				
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