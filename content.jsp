<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/content.css" />
<title>Insert title here</title>

<style>

html, body {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}

.box {
	width: 100%;
	height: 100%;
	position: relative;
	color: #000000;
	font-size: 24pt;
	padding-top: 2%;
}

#button {
	width: 200px;
	height: 200px;
	float: right;
}
</style>

<style>
#serchDiv {
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

@font-face{ 
font-family:ba; 
src:url(BMDOHYEON_ttf.ttf); 
src:local(※), url(font/BMDOHYEON_ttf.ttf) format(‘ttf’);
 }
 @font-face{ 
font-family:na; 
src:url(NanumBarunGothicUltraLight.ttf); 
src:local(※), url(font/NanumBarunGothicUltraLight.ttf) format(‘ttf’);
 }

.title{
	font-family: "배달의민족 도현", ba;
	letter-spacing:5px;
	margin-left:10px;
}
.cont{
	font-family: "나눔바른고딕  UltraLight",na,"돋움";
}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/mouseDrag.js"></script>
</head>
<body>
	<div class="box" style="background-color: #f9d423;">
		<font class="title">영화를 만들다</font><br><br>
		<img src="img/panel3.jpg" height="60%" style="margin-left: auto; margin-right: auto; display: block;"><br>
		<center>
		<font size="4px" class="cont"><b>청소년 영화 추천 & 리뷰 사이트</b></font><br>
		<font size="3px" class="cont">
		영화 추천 사이트들을 보면 청소년에게는 폭력적인 영화나 자극적인 영화가 대놓고 나와있습니다.<br>
		그런 것은 한창 자랄 나이인 청소년에게 좋은 영향을 미치지 않을 것입니다.<br>
		그래서 저희는 청소년을 위해 폭력적이거나 자극적인 영화를 빼고 추천하는 사이트를 만들게 되었습니다.<br><br>
		</font></center>
		
	</div>
	<div class="box" style="background-color: #fc913a;" id="image_list_1"> 
		<font class="title">생생한 영화를 즐기다</font><br><br><Br>
			<button onclick="location.href='serchMoive.jsp?genre=docu&selectOption=director&search='">다큐멘터리</button>
            <button onclick="location.href='serchMoive.jsp?genre=adventure&selectOption=director&search='">멜로</button>
            <button onclick="location.href='serchMoive.jsp?genre=rm&selectOption=director&search='">로맨스</button>
            <button onclick="location.href='serchMoive.jsp?genre=sf&selectOption=director&search='">sf</button><br>
            
            <button onclick="location.href='serchMoive.jsp?genre=fantasy&selectOption=director&search='">판타지</button>
            <button onclick="location.href='serchMoive.jsp?genre=adventure&selectOption=director&search='">어드벤처</button>
            <button onclick="location.href='serchMoive.jsp?genre=family&selectOption=director&search='">가족</button>
            <button onclick="location.href='serchMoive.jsp?genre=crime&selectOption=director&search='">범죄</button><br>
            
            <button onclick="location.href='serchMoive.jsp?genre=mystery&selectOption=director&search='">미스터리</button>
            <button onclick="location.href='serchMoive.jsp?genre=show&selectOption=director&search='">쇼</button>
            <button onclick="location.href='serchMoive.jsp?genre=animation&selectOption=director&search='">애니메이션</button>
            <button onclick="location.href='serchMoive.jsp?genre=comedy&selectOption=director&search='">코미디</button><br>

		
	</div>
	<div class="box" style="background-color: #ff4e50;">
	<font class="title">영화와 즐거움을 나누다</font><br>
	<center>
			<jsp:include page="slide.jsp"/>
			</center>
	</div>

	<div id="button">
		<img src="img/top.png" width="80px" height="80px" onclick="goTop()">
	</div>

</body>
</html>