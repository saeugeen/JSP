<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> ex25_result.jsp 페이지 </h2>  
    <h3> pc : ${pc} </h3>  
    <h3> pc : ${pageScope.pc} </h3>  
    <h3> pc : ${requestScope.pc} </h3>  
    <h3> pc : ${sessionScope.pc} </h3>  
    <h3> pc : ${applicationScope.pc} </h3>  
</body>
</html>