<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP 표준 태그 라이브러리</title>
</head>
<body>
<%--
	1. 라이브러리 다운받아서 해당 프로젝트에 넣기(tomcat.apache.org)
	2. 다운 받은 라이브러리 WEB-INF 안에 lib 폴더를 만들어서 넣어주자
	3. 지시어 중 <%@ taglib %> 에 선언하고 사용한다.
	   core : <% taglib prfix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	   fmt :  <% taglib prfix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	   ** core 라이브러리는 핵심, fmt 라이브러리는 국제화(숫자와 날짜 처리 할때 사용)
	   
	4. 사용법 : core 사용:<c:명령어> </c:명령어> , fmt : <fmt:명령어></fmt:명령어>  
 --%>
 <%--
    변수 생성 (set)  : <c:set var="변수이름" value="변수에 저장되는 데이터" />
    변수 출력 (out)  : <c:out value="출력할 데이터 or ${변수이름}" /> 또는 ${변수이름}
    변수 삭제 (remove) : <c:remove var="변수이름" />
  --%>
  <%-- 변수 생성 및 데이터 저장 --%>
    <c:set var="str" value="Hello JSP" />
    
    <%-- 변수가 가지고 있는 데이터 출력 (EL 사용)--%>
    <h2>
       <li><c:out value="str" /> </li>
       <li><c:out value="${str}" /> </li>
       <li>${str} </li>
       <hr>
       
       <%-- 변수 삭제 후 출력해 보기(EL 사용X)  --%>
       <c:remove var="str"/>
       <li>결과 : <c:out value="${str}" /> </li>
       <li>결과 : ${str} </li>
       <hr>
       
       <%-- if문 : else가 없다. 즉 조건이 참일때만 실행한다.
           <c:if var="변수명" test="조건식(관계연산, 비교연산=> EL방식으로 사용)">
               조건식 참일때 실행할 문장;
           </ c:if>    
        --%>
        <c:if test="${4>3}">
            <li> 결과 : Hello JSTL_1 </li>
        </c:if>
        
        <c:if test="${4<3}">
            <li> 결과 : Hello JSTL_2 </li>
        </c:if>
        <hr>
        
        <%-- avg의 점수가 80이상이면 합격 아니면 불합격 --%>
        <c:set var="avg" value="89" />
        <c:if test="${avg >=80 }">
            <li> 합격 </li>
        </c:if>
        <c:if test="${avg < 80 }">
            <li> 불합격 </li>
        </c:if>
        <hr>
        
        <%-- if문은 else가 없는 불편함이 있어서 
             choose 문을 사용한다.( choose문은 switch문과 비숫하다.(if ~ else 대신으로 많이 사용된다.)
             
             <c:choose>
                 <c:when test="조건식(관계연산, 비교연산=> EL방식으로 사용)"> 참일때 실행 </c:when>
                 <c:when test="조건식(관계연산, 비교연산=> EL방식으로 사용)"> 참일때 실행 </c:when>
                 <c:when test="조건식(관계연산, 비교연산=> EL방식으로 사용)"> 참일때 실행 </c:when>
                 <c:otherwise>위 조건식이 모두 거짓일때, 즉 나머지를 말한다.</c:otherwise>
             </c:choose>
         --%>
          <%-- avg의 점수가 80이상이면 합격 아니면 불합격 --%>
          <c:choose>
          		<c:when test="${avg>=80}">
          		  <li> 합격 </li>
          		</c:when>
          		<c:when test="${avg<80}">
          		  <li> 불합격 </li>
          		</c:when>
          </c:choose>
          <hr>
          
           <%-- avg의 점수가 90이상이면 A학점, 80이상이면 B학점, 70이상이면 C학점, 나머지는 F학점--%>
           <%-- 정수는 정수로 비교, 실수는 실수로 비교 해야 된다. --%>
           <c:set var="avg" value="75.5" />
           <c:choose>
           		<c:when test="${avg>=90.0}"><li> A학점 </li></c:when>
           		<c:when test="${avg>=80.0}"><li> B학점 </li></c:when>
           		<c:when test="${avg>=70.0}"><li> C학점 </li></c:when>
           		<c:otherwise> <li> F학점</li></c:otherwise>
           </c:choose>
           <hr>
           
           <%--
              반복문 
               1. 일반적인 for문
                 <c:forEach begin="시작값" end="끝값" step="증가값" var="사용변수">
                    반복 내용 (EL를 활용하다.)
                 </c:forEach>
                 
                2. 개선된 for문(배열, ArrayList(컬렉션)에서 주로 사용)
                  <c:forEach  var="사용변수" items="${배열, 리스트(켈렉션)}">
                    반복 내용 (EL를 활용하다.)
                 </c:forEach>
            --%>
	    <h3> 1-10까지 출력하기 </h3>        
         <c:forEach begin="1" end="10" step="1" var="k">
               ${k} &nbsp; &nbsp;
         </c:forEach>  
         <hr>
          
        <h3> 1-10까지 짝수만 출력하기 </h3>
        <c:forEach begin="1" end="10" step="1" var="k">
           <c:if test="${k%2 == 0 }">
               ${k} &nbsp; &nbsp;
           </c:if>     
        </c:forEach>  
        <hr>
          
         <h3> 21-30까지 출력하기 </h3>        
         <%-- varStatus ; count, index, (first, last=>boolean) --%>
         <c:forEach begin="21" end="30" step="1" var="k" varStatus="vs">
            <c:if test="${k%2 == 0 }">
               ${k} / ${vs.count} / ${vs.index} / ${vs.first} / ${vs.last} <br>
             </c:if>   
         </c:forEach>     
         <hr>
         
         <%-- 개선되 for문 : 배열이나 컬렉션<arrayList>등 사용--%>
         <%-- 배열 생성 --%>
         <c:set var="arr_1" value="홍길동, 임꺽정, 장길산, 일지매" />
         <c:forEach var="k"  items="${arr_1}">
         	  <li>${k}</li>
         </c:forEach>
         
    </h2>
</body>
</html>
















