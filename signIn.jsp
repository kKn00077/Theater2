<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이거봤어</title>
<style>
#bg {
	background-repeat: no-repeat;
	width: 90%;
	height: 50%;
}

#board {
	margin: auto;
	border: 1px solid #000000;
	margin-top: 5%;
	width: 600px;
}

.form {
	width: 600px;
	height: 50px;
	font-size: 15pt;
}
</style>

<style>
.wrap {
	position: relative;
	width: 100%;
	height: 500px;
	text-align: center;
	line-height: 100px;
	margin: 0 auto;
	color: #000;
	font-size: 12px;
	background-image: url(img/bgfilm.jpg);
	background-repeat: no-repeat;
  background-size: 100% 100%;
}

.over {
	position: absolute;
	text-align: center;
	top: 30%;
	left: 34%;
	margin: auto;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="top.jsp" />
	</div>

	<div class="wrap">
		<div class="over">
			<form method="post" action="signInProc.jsp">
				<input type="text" placeholder="아이디" name="id" class="form"><br>
				<input type="password" placeholder="비밀번호" name="password" class="form"><br> 
				<input type="submit" value="로그인" class="form">
			</form>
			<a href="signUp.jsp">회원가입</a> | <a href="find.jsp">아이디/비밀번호 찾기</a>
		</div>
	</div>


</body>
</html>