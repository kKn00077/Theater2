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
	height: 900px;
	text-align: center;
	line-height: 100px;
	margin: 0 auto;
	color: #000;
	font-size: 12px;
	background-image: url(img/bgfilm.jpg);
	background-repeat: no-repeat;
  background-size: 100% 600px;
}

.over {
	position: absolute;
	text-align: center;
	top: 150px;
	margin: auto;
}
</style>
</head>
<body>
	<jsp:include page="top.jsp"/>

	<div class="wrap">
		<div class="over">
		<form method="post" action="signUpProc.jsp">
			이름 <input type="text" name="name" class="form"  required>
			아이디 <input type="text" name="id" class="form" required>
			비밀번호 <input type="password" name="password" class="form" required><br>
			비밀번호 재입력 <input type="password" name="re_password" class="form" required><br>
			성별 		<label for="m"><input type="radio" name="sex" id="m" value="m" checked>남자</label>&nbsp;
					<label for="w"><input type="radio" name="sex" id="w" value="w">여자</label>&nbsp;
					<label for="a"><input type="radio" name="sex" id="a" value="a">기타</label><br>
			생일 <input type="date" name="birth" style="height:23px;"  class="form" required><br>
			이메일 <input type="text" name="email" class="form" >@
			<select onchange="cng(this.value);" style="height:23px" name="domain" class="form">
						<option value="">직접입력</option>
                        <option value="naver.com">naver.com</option>
                        <option value="nate.com">nate.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="google.co.kr">google.co.kr</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="dreamwiz.com">dreamwiz.com</option>
                        <option value="empal.com">empal.com</option>
                        <option value="freechal.com">freechal.com</option>
                        <option value="hotmail.com">hotmail.com</option>
                        <option value="lycos.co.kr">lycos.co.kr</option>
                        <option value="yahoo.com">yahoo.com</option>
                        <option value="hanmail.net">hanmail.net</option>
                        <option value="netian.net">netian.net</option>
                        <option value="korea.com">korea.com</option>
					</select><br>
			<input type="submit" value="회원가입" class="form">
		</form>
		<a href="signIn.jsp">로그인</a> | <a href="find.jsp">아이디/비밀번호 찾기</a>
		</div>
	</div>

</body>
</html>