<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이거봤어</title>
<style>
 @font-face{ 
font-family:na; 
src:url(NanumBarunGothicUltraLight.ttf); 
src:local(※), url(font/NanumBarunGothicUltraLight.ttf) format(‘ttf’);
 }

#title{
	font-family: "배달의민족 도현", ba;
	font-size:"15px";
	margin-left:10px;
}

ul {
  display: table;
  margin-left: auto;
  margin-right: auto;
}

.out{
	border:solid 1px black;
}

.cont{
	font-family:"HY나무M";
}
</style>
</head>
<body>
	<jsp:include page="top.jsp"/>
	<center><br><br>
	
	<font id="title"> " 볼 영화가 없다고요? 그럼 '이거 봤어?'로 찾아오세요! " </font><br><br>
	<div class="out"><img src="img/panel2.jpg" height="350px"></div><br><br>
	<ul class="cont"> 
		<li>다양한 장르의 영화 추천</li>
		<li>폭력적이고 자극적인 영화 추천 X</li>
		<li>직접 본 영화에 대해서 리뷰 작성 가능</li>
		<li>다른 사용자의 리뷰에 공감 가능</li>
	</ul><br><br>
	
	</center>
</body>
</html>