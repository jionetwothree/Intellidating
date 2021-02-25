<%@page import="com.DTO.memberDTO"%>
<%@page import="com.DTO.clubDTO"%>
<%@page import="com.DAO.clubDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
<%
	String detail = request.getParameter("detail");
	String name = request.getParameter("name");
%>
<h1><%=name %></h1>
<h3><%=detail %></h3>
</body>
</html>