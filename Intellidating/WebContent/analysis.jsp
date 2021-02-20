<%@page import="com.DTO.bookDTO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<link rel="icon" sizes="192x192" href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	</head>
	<body>
	<%
		memberDTO dto = (memberDTO)session.getAttribute("member");
		bookDTO dto1 = (bookDTO)session.getAttribute("book");
	%>
		<div> 
		<header>
		<p><h2>인텔리데이팅</h2></p>
		</header>
			<ul>
				<li><a href="searchbook.jsp">책 검색하기</a></li>
				<li><a href="mypage.html">마이페이지</a>
					<ul>
						<li><a href="mytaste.html">마이취향</a></li>
						<li><a href="myinteli.html">마이모임</a></li>
						<li><a href="account.html">계정 설정</a></li>
					</ul>
				</li>
			</ul>
		<hr />
		</div>
	<form action="analysisService" method="get">
	<div>
		<h1><%=dto.getNickname()%>좋아하는 책 5권을 골라주세요!</h1>
	</div>
	</form>
	
	<form action="analysisService" method="get">
	<div>
		<%=dto1.getBook_image()%>
	</div>
	</form>
	
	
	
	<div>
		<p><a href="#">자주 묻는 질문</a></p>
		<p><a href="#">문의하기</a></p>
		<p><a href="#">블로그</a></p>
		<br>
		<br>
		<br>
		<p>주식회사 인텔리데이팅</p>
			
	</div>
</body>
</html>