<%@page import="com.DTO.memberDTO"%>
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
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
	%>
	<header>
		<div>
			<p>
			<h2><a href="main.jsp">인텔리데이팅</a></h2>
			</p>
		</div>
	</header>
	<nav>
		<div>
			<ul>
				<li><a href="searchbook.jsp">책 검색하기</a></li>
				<%
					if (m_dto == null) {
				%>
				<li><a href="login.html">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<%
					} else {
				%>
				<li><a href="mypage.jsp">마이페이지</a>
				<li><a href="logoutService">로그아웃</a></li>
			</ul>
			<%
				}
			%>
			<hr />
		</div>
	</nav>

	<footer>
		<div>
			<p>
				<a href="#">자주 묻는 질문</a>
			</p>
			<p>
				<a href="#">문의하기</a>
			</p>
			<p>
				<a href="#">블로그</a>
			</p>
			<br> <br> <br>
			<p>주식회사 인텔리데이팅</p>
		</div>
	</footer>


</body>
</html>