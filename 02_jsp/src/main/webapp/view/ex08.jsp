<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2> 결과 보기 </h2>
  <h2>
  	 <li>이름 : <%=name %> </li>
  	 <li>나이 : <%=age %> </li>
  </h2>
</body>
</html>