<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<form action="ex16_session.jsp" method="post">
		<fieldset>
			<legend> 로그인 </legend>
			<p> 아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요" required>
			<p> 패스워드 : <input type="password" name="pw" placeholder="패스워드를 입력하세요" required>
			<input type="submit" value="로그인">
		</fieldset>
	</form>
</body>
</html>