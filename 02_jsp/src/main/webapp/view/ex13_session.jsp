<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <% pageContext.setAttribute("name", "홍길동");
      pageContext.setAttribute("age", 24);
      
      request.setAttribute("name", "둘리");
      request.setAttribute("age", 32);
      
      session.setAttribute("name", "마루치");
      session.setAttribute("age", 18);
   %>
   
   <h2>이름 : <%=pageContext.getAttribute("name") %></h2>   
   <h2>나이 : <%=pageContext.getAttribute("age") %></h2>
   <hr> 
    
   <h2>이름 : <%= request.getAttribute("name")%></h2>   
   <h2>나이 : <%= request.getAttribute("age")%></h2>  
   <hr> 
   
   <h2>이름 : <%= session.getAttribute("name")%></h2>   
   <h2>나이 : <%= session.getAttribute("age")%></h2>  
   <hr> 
   
   <%-- ex14_result.jsp로 이동하자 
        이동방법은 redirect와 forward 이다.
        pageContext는 페이지를 벗어나면 사라진다.
        request는 redirect는 request 정보도 사라지고 forward는 reqeust 정보는 사라지지 않는다.
        session는 redirect, forward 둘 다 정보가 살아 있다.
   --%>
  
 <%-- <% response.sendRedirect("ex14_result.jsp"); %> --%>
      <% request.getRequestDispatcher("ex14_result.jsp").forward(request, response); %>
      
</body>
</html>




