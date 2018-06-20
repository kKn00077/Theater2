<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#header{
	text-align: center;
	padding-top: 10px;
	padding-bottom: 20px;
}
body{
	margin: 0px;
	padding: 0px;
}
a {
	text-decoration: none;
	color: #000000;
}
a:hover {
	color: #ff0000;
}
nav ul {

	margin-top: 0px;
	padding-top: 10px;
	padding-bottom: 10px;
} /*  상단 여백 10px  */
nav ul li {
	display: inline; /*  세로나열을 가로나열로 변경 */
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 12px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 80px; /* 각 메뉴 간격 */
	font-size: 18pt;
}

nav ul li:first-child {
	border-left: none;
}
#menu{
	text-align: center;
	margin-top: 0px;
	font-family: 'font/BMDOHEYEON_ttf.ttf';
}
</style>
</head>
<body>
	<div id="header">
		<a href="index.jsp"><img src="img/img/header.jpg" width="300px" height="80px"></a>
	</div>
	<div id="menu">
		<nav>
		<ul>
			<li><a href="user_index.jsp">스토리</a></li>
			<li><a href="serchMoive.jsp">영화찾기</a></li>
			<li><a href="movieReview.jsp">훅2</a></li>
			<li><a href="mypage.jsp">마이페이지</a></li>
			<li><a href="logout.jsp">로그아웃</a></li>
		</ul>
		</nav>
	</div>

</body>
</html>