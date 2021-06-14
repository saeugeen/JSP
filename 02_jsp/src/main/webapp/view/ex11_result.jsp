<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>ex10_request.jsp 에서 넘어온 정보 받기</h2>
   <h2>이름 : <%=pageContext.getAttribute("name") %></h2>   
   <h2>나이 : <%=pageContext.getAttribute("age") %></h2>
   <hr> 
    
   <h2>이름 : <%= request.getAttribute("name")%></h2>   
   <h2>나이 : <%= request.getAttribute("age")%></h2> 
</body>
</html>