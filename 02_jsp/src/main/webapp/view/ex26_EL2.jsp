<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>form태그를 이용해서 파라미터 전송</h2>
	<form action="ex27_result.jsp" method="post">
		<fieldset>
			<legend> 데이저 전송 </legend>
			<p> **이름 : <input type="text" name="name" placeholder="이름 입력하세요" required></p>
			<p> **나이 : <input type="number" name="age" placeholder="나이 입력하세요" required></p>
			<p> 성별 : <input type="radio" name="gender" value="남성">남성
			           <input type="radio" name="gender" value="여성">여성
			</p>
			<p> 취미 : <input type="checkbox" name="hobby" value="운동">운동
			           <input type="checkbox" name="hobby" value="영화">영화
			           <input type="checkbox" name="hobby" value="게임">게임
			           <input type="checkbox" name="hobby" value="독서">독서
			</p>
			<input type="submit" value="보내기" >
		</fieldset>
	</form>
</body>
</html>