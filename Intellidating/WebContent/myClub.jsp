<%@page import="com.DTO.clubDTO"%>
<%@page import="com.DAO.clubDAO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style_myClub.css">

<title>Insert title here</title>
</head>
<body>


	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
		clubDAO dao = new clubDAO();
		clubDTO dto1 = dao.selectclub(m_dto.getMem_club1());
		clubDTO dto2 = dao.selectclub(m_dto.getMem_club2());
		clubDTO dto3 = dao.selectclub(m_dto.getMem_club3());
	%>

	<header>
		<div id="title">

			<span> <a href="main.jsp">intellidating</a>
			</span>

		</div>
	</header>



	<nav>
		<div id="menu">
			<ul>
				<li><a href="analysis.jsp">추천받기</a>
				<li><a href="before_searchBook.jsp">책 검색하기</a></li>
				<li><a href="logoutService">로그아웃</a></li>
			</ul>
		</div>
	</nav>
	<div class="div.btn2">
		<h1>가입한 모임</h1>
		<%
			if (dto1 != null) {
		%>
		<button class="btn2" onclick="location.href='chat.jsp?club_name=<%=dto1.getClub_name()%>'"><%=dto1.getClub_name()%>
			입장
		</button>
		<%
			}
		%>
		<%
			if (dto2 != null) {
		%>
		<button class="btn2" onclick="location.href='chatting.jsp'"><%=dto2.getClub_name()%>
			입장
		</button>
		<%
			}
		%>
		<%
			if (dto3 != null) {
		%>
		<button class="btn2" onclick="location.href='chatting.jsp'"><%=dto3.getClub_name()%>
			입장
		</button>
		<%
			}
		%>
	</div>
	

	<footer>
		<div>
			<span> <a href="#">자주 묻는 질문</a>
			</span> <span> <a href="#">문의하기</a>
			</span> <span> <a href="#">블로그</a>
			</span> <br> <br> <br>
			<p>주식회사 인텔리데이팅</p>
		</div>
	</footer>



</body>
</html>