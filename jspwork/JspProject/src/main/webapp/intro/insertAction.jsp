<%@page import="model.intro.IntroDao"%>
<%@page import="model.intro.IntroDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=Diphylleia&family=Dokdo&family=Nanum+Brush+Script&family=Nanum+Gothic+Coding&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	String name=request.getParameter("name");
	String blood=request.getParameter("blood");
	String hp=request.getParameter("hp1")+"-"+request.getParameter("hp2")+"-"+request.getParameter("hp3");
	String city=request.getParameter("city");
	
	IntroDto dto=new IntroDto();
	IntroDao dao=new IntroDao();
	
	dto.setName(name);
	dto.setBlood(blood);
	dto.setHp(hp);
	dto.setCity(city);
	
	dao.insertIntro(dto);
	
	response.sendRedirect("list.jsp");
%>
</body>
</html>