<%@page import="db.ajaxboard.AjaxBoardDao"%>
<%@page import="db.ajaxboard.AjaxBoardDto"%>
<%@page import="db.memo.MemoDto"%>
<%@page import="db.memo.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- json이라 html문 다 지움 --%>
<%
	AjaxBoardDao dao=new AjaxBoardDao();

	//엔코딩
	request.setCharacterEncoding("utf-8");
	
	//데이터읽기(writer,story,avata)
	String writer=request.getParameter("writer");
	String story=request.getParameter("story");
	String avata=request.getParameter("avata");
	String subject=request.getParameter("subject");

	//dto로 묶기
	AjaxBoardDto dto=new AjaxBoardDto();
	dto.setWriter(writer);
	dto.setStory(story);
	dto.setAvata(avata);
	dto.setSubject(subject);
	
	//insert호출
	dao.insertAjax(dto);
%>

<%--<%=dto.toString() --%>