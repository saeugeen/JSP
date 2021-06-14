<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 설명</title>
</head>
<body>
<!-- html 주석 : 소스보기에서 보인다.  -->
<%-- JSP 주석 : 소스 보기 해도 보이지 않는다. --%>
<%--
	JSP : Java Server Page
	      HTML 안에서 자바코드를 사용할 수 있도록 만든 스크립트 언어이다.
	
	JSP : 구성
	   1. 지시어 (디렉티브) : <%@ 지시어 %>
	      --  <%@ page %>, <%@ taglib %>, <%@ include %>
	   
	   2. 스크립트요소 :   HTML 안에서 자바코드를 사용할 수 있도록 만든 요소들
	     1) 선언부(<%! 내용  %>) : 변수선언이나 메소드선언을 할때 사용
	     2) 스크립트릿(<% 내용 %> :  자바코드를 코딩할 때 사용
	     3) 표현식(<%= 내용 %> : 변수값이나 메소드의 결과값을 출력할때 사용
	     
	     ** 주의사항 : 스크립트요소들은 겹쳐서 사용하면 안된다.    
	     
	   1. 지시어 :  <%@ page %>, <%@ taglib %>, <%@ include %>    
	     가. page 지시어 : 보통 해당 문서의 맨 앞에 나온다.
	                       현재 JSP 페이지에 대한 정보를 제공
	                       톰켓이 해당 page지시어를 보고, 해당 페이지를 어떻게 해석하고 실행할지 판단
	                       이클립스는 자동으로 만들어준다.(개발자가 필요하지 않으면 고치치 않는다.)
	         page 지시어 속성들
	          - language : 스크립트 코드에 사용되는 언어 지정
	          - contentType : 해당 페이지 문서 타입과 문자셋 지정(캐릭터 인코딩)
	            인코딩(부호화, 암호화) : 정보의 형태를 변환해서 처리 
	            디코딩(복호화)         : 변환된 정보를 원래 형태로 되돌리는 것
	             
	          - pageEncoding : 해당페이지를 UTF-8 형태로 변환해서 처리한다.
	          - session : 세션 (저장공간)  사용 여부 (기본 : true)
	          - buffer : 출력에 사용되는 임시저장공간 (기본 : 8Kb)
	          - autoFlush :  출력버퍼가 다 차지 않아도 바로바로 출력 시켜줌 (기본 : true)
	          - errorPage : 해당 페이지가 오류를 발생했을 때 처리하는 오류 페이지 지정
	          - isErrorPage : 해당 페이지가 오류를 처리하는 페이지 이면 true, 아니면 false (기본값 ; false)     
	          
	      나. taglib 지시어 : 해당 페이지에서 사용할 태그 라이브러리 지정
	                          나중에 JSTL 사용할때 필요하다.        
	      
	      다. include 지시어 : <%@ include file="다른 문서 위치 및 이름 " %>
	                           현재 페이지에서 특정 영역에 다른 문서를 포함 시킬 때 사용
	                           ** html의 iframe과 비슷한다.
	                           
	          ** include는 지시어를 사용하는 방법와 액션태그를 사용하는 방법 두가지가 있다.                                             
 --%>
</body>
</html>










