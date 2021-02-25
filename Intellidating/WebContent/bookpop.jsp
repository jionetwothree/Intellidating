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
<link rel="stylesheet" type="text/css"
   href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500;600;700;900&display=swap"
   rel="stylesheet">
<style>
h1,h3{
   padding: 0;
   font-size: 100%;
   font-family: 'Noto Sans KR', sans-serif;
   font: inherit;
   vertical-align: baseline;}
</style>
</head>
<body style="background-color: #FBF4D6">
<%
	String detail = request.getParameter("detail");
	String name = request.getParameter("name");
%>
<br>
<h1 style="text-align:center; font-size: 22px; font-weight:bold"><%=name %></h1><br>
<h3 style="text-align:center; font-size: 15px"><%=detail %></h3>
</body>
</html>