<%@page import="com.DTO.bookDTO"%>
<%@page import="com.DTO.memberDTO"%>
<%@page import="com.DAO.bookDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500;600;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="search.css">
<link rel="stylesheet" type="text/css" href="css/main2.css">

</head>
<body>

	<%
	
	memberDTO m_dto = (memberDTO)session.getAttribute("member");

	%>
	<header>
		<div id="title">
			<span>
				<a href="main.jsp">인텔리데이팅</a>
			</span>
		</div>
	</header>
	<nav>
	<div id="menu">
		<ul>
			<li><a href="after_searchBook.jsp">책 검색하기</a></li>
			<li><a href="mypage.html">마이페이지</a>
				<ul class="menu">
					<li><a href="mytaste.html">마이취향</a></li>
					<li><a href="myinteli.html">마이모임</a></li>
					<li><a href="account.html">계정 설정</a></li>
				</ul></li>
			<li><a href="nologinmain.html">로그아웃</a></li>
		</ul>
	</div>
	</nav>
	<div id="main_img">
		<div class="absolute">
		<form action="searchBookService" method="post">
			<input style="display: block; width: 600px" type="text"
				name="search_submit" placeholder="책 제목 검색">
			<% if(m_dto!=null){%>
			<input type="hidden" name="mem_num" value=<%= m_dto.getNum() %>>
			<input type="submit" value=" ">
			<%} %>

		</form>
		</div>
	</div>
	<div id="foot">
		<div class="all">
			<span><a href="question.html">자주 묻는 질문</a></span> <span><a
				href="#">문의하기</a></span> <span><a href="#">블로그</a></span> <span
				class="company"> <br> <br> <br> " 주식회사 인텔리데이팅
				" <br> <br> <br>
			</span>
		</div>
	</div>
</body>
</html>