<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/mouseDrag.js"></script>
</head>
<body>
	<div class="box" style="background-color: orange;">
		영화를 만들다<br> <img alt="" src="img/img/panel.jpg">
	</div>
	<div class="box" style="background-color: yellow;" id="image_list_1"> 
		생생한 영화를 즐기다<br>
	</div>
	<div class="box" style="background-color: green;">영화와 즐거움을 나누다</div>
	<div class="box" id="serchDiv">
		새로움을 찾아 떠나다<br>
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

	<div id="button">
		<img src="img/img/top.png" width="80px" height="80px" onclick="goTop()">
	</div>

</body>
</html>