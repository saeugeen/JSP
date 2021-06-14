<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 객체</title>
</head>
<body>
<!--
    pageContext 객체는 JSP 기본 내장 객체로 JSP 페이지에 대한 1:1로 연결된 객체로 
    JSP 페이지당 하나의 pageContext 객체가 생성된다.
    같은 페이지내에서 서로 값을 공유 할 수 있으며, 주요기능은 다른 기본 객체들을 구할 때 사용하거나 
    페이지 흐름을 제어할 때 사용한다. 
     -  getRequest(), getResponse(),  getOut(), getPage(), getSession()
        getServletContext() => application 기본객체를 반환 ,
        getServletConfig() => config 기본 객체 반환, 
        getException() => exception 기본 객체 반환  
        
     ** 속성을 이용해서 데이터 저장 및 호출 
     저장방법 : pageContext.setAttribute("이름", 객체);
     호출방법 : pageContext.getAttribute("이름");
     생명주기 : 해당 페이지를 벗어나면 저장 정보도 사라진다.
     
     ** 속성을 이용해서 데이터를 저장 및 호출 하는 내장 객체들 
     우선순위 : pageContext > request > session > application 
     생명주기 : pageContext < request < session < application
                pageContext : 해당 페이지를 벗어나면 저장 정보도 사라진다.
                request : response가 되면 저장 정보도 사라진다.
                session : 해당 브라우저가 종료되면 저장정보도 사라진다.
                          (예외적으로 시간을 지정할 수 있다.) 
                          로그인 정보처리는 무조건 session 정보에 저장해야된다. 
                application : 어플리케이션이 종료되기 전까지 정보는 사라지지 않는다.
                              어플리케이션 외부환경정보(context)를 나타내는 내부 객체이다.
  -->
     
    <%
      // 데이터 저장
       pageContext.setAttribute("addr", "서울시 서교동");
       pageContext.setAttribute("age", 24);
       pageContext.setAttribute("gender", true);
    %>
    
    <%-- 데이터 호출 (나중에는 JSTL아니 EL를 사용해서 호출) --%>
    <h2> 주소 : <%= pageContext.getAttribute("addr") %> </h2>
    <h2> 나이 : <%= pageContext.getAttribute("age") %> </h2>
    <h2> 성별 : <%= pageContext.getAttribute("gender") %> </h2>
</body>
</html>














