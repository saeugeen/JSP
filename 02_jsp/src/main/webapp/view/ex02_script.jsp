<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
<%--
         스크립트요소 :   HTML 안에서 자바코드를 사용할 수 있도록 만든 요소들
	     1) 선언부(<%! 내용  %>) : 변수선언이나 메소드선언을 할때 사용
	     2) 스크립트릿(<% 내용 %> :  자바코드를 코딩할 때 사용
	     3) 표현식(<%= 내용 %> : 변수값이나 메소드의 결과값을 출력할때 사용(나중에 EL이나 JSTL로 변경한다.)
	                               
	     ** 주의사항 : 스크립트요소들은 겹쳐서 사용하면 안된다.        
 --%>
 	<h3> 0 - 10 까지 자바의 for문을 사용해서 출력하자 </h3>
 	<%
 		for(int i=0; i<11 ; i++){
 			// 콘솔에 출력하는 것
 			// System.out.println(i);
 			
 			// 웹페이지, 브라우저에 출력
 			// 서블릿 처럼 out 객체가 존재해서 사용 가능(태그 사용 가능)
 			out.println( i + "&nbsp;&nbsp;");
 		}
 	%>
 	<hr>
 	
 	<h3> 0 - 10 까지 자바의 for문을 사용해서 출력하자 </h3>
 	<% for(int i=0; i<11 ; i++){%>
 		<%= i%>&nbsp;&nbsp;
 	<%}%>
 	<hr>
 	
 	<h3> 0 - 10 까지의 합을 자바의 for문을 사용해서  출력하자</h3>
 	<%
 		int sum = 0 ;
 	    for(int i=0; i<11; i++){
 	    	sum = sum + i ;
 	    }
 	    out.println("합 : " + sum );
 	%>
 	<hr>
 	<h3> 0 - 10 까지의 합을 자바의 for문을 사용해서  출력하자</h3>
 	<%
 		int sum2 = 0 ;
 	    for(int i=0; i<11; i++){
 	    	sum2 = sum2 + i ;
 	    }
 	%>
 	 합 : <%=sum2 %> 
 	<hr>
 	
 	<h3>변수와 메소드를 만들어서 사용하기</h3>
 	<%! 
 	    public int add(int s1, int s2){
 			int res = 0 ;
 			res = s1 + s2 ;
 			return res ;
 	    }
 	
 	    int result = 0 ;
 	    public void sub(int s1, int s2){
 	    	// out 객체를 사용할 수 없다.
			// out.println(s1-s2);
 	    	result = s1 - s2;
	    }
 	%>
 	<p> 7 + 5 = <%= add(7,5) %></p>
 	
     <% sub(7,5); %>
    <p> 7 - 5 = <%= result %></p>
    <p> 7 - 5 = <% out.println(result); %></p>
    <hr>
    
    <h3>오늘 날짜와 운수 출력하기</h3>
    <% Calendar now = Calendar.getInstance();       
       int year = now.get(Calendar.YEAR);
       int month = now.get(Calendar.MONTH)+1;
       int day = now.get(Calendar.DATE);
       int lucky = (int)(Math.random()*101);
       out.println(year+"년 "+ month+"월 "+day+"일 ");
       out.println("당신의 운세는 "+lucky+ "% 입니다.");
    %>
    <p> <%=year %>년 <%=month %>월 <%=day %>일 당신의 운세는 <%= lucky %> % 입니다. </p> 
    
    <h3> 5단 출력하기</h3>
     <%
     	for(int i=1; i<10; i++){
     		out.println("5 * "+ i + "=" + (5*i) + "<br>");
     	}
     %>
     <hr>
     
     <h3> 5단 출력하기</h3>
     <%for(int i=1; i<10; i++){%>
     		5 * <%=i %> = <%=5*i%> <br>
     <%}%>
</body>
</html>
















