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
	String name =(String)request.getAttribute("name");
	String detail =(String)request.getAttribute("detail");
	String num =(String)request.getAttribute("num");
	out.print(name);
	
%>
<hr/>
<%
out.print(detail);


%>
<br>
<a href='joinClub?clubnum=<%=num %>'>가입하기</a>
</body>
</html>