<%@page import="com.ict.edu.DAO"%>
<%@page import="com.ict.edu.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	VO vo = new VO();
	vo.setName(request.getParameter("name"));
	vo.setSubject(request.getParameter("subject"));
	vo.setContent(request.getParameter("content"));
	vo.setEmail(request.getParameter("email"));
	vo.setPwd(request.getParameter("pwd"));
	
	int result = DAO.getInstance().getInsert(vo);
	if(result>0){
		response.sendRedirect("list.jsp");
	}
%>