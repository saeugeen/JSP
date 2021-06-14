<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ex22.jsp"%>
<%
		// 세션 정보를 불러와서 검사에 사용한다.
		// 세션 정보는 Object로 나오기 때문에 형 변환을 해야 된다.
		String login = (String)session.getAttribute("login");
       if(login.equalsIgnoreCase("no")){ %>
    	 <script>
    	 	alert("로그인 실패");
    	 	location.href = "ex15_session_login.jsp";
    	 </script>
     <% }%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function view_go() {
		location.href = "ex19_cartView.jsp"
	}
	function logout_go() {
		location.href = "ex20_logout.jsp"
	}
</script>
</head>
<body>
	<h2> <%=session.getAttribute("id") %>님 로그인 성공</h2>
	<hr>
	
	<form action="ex18_cart.jsp" method="post">
		<select name="fruits">
			<option>:: 선택하세요 ::</option>
			<option>수박</option>
			<option>사과</option>
			<option>참외</option>
			<option>키위</option>
			<option>망고</option>
		</select>
		<input type="submit" value="장바구니에 추가" >
	</form>	
	<button onclick="view_go()">장바구니 보기</button>
	<button onclick="logout_go()">로그아웃</button>
</body>
</html>













