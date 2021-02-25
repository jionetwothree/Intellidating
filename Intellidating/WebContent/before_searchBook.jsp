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
<!-- <link rel="preconnect" href="https://fonts.gstatic.com"> -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500;600;700;900&display=swap"
	rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" href="css/style_dummy_search.css"> -->
<link rel="stylesheet" type="text/css" href="style_searchBook.css">

</head>
<body>
	<div id="layout">
		<%
      memberDTO m_dto = (memberDTO) session.getAttribute("member");
   %>
		<header>
			<div id="wrapper">

				<h1 id="title"><a href="main.jsp">intellidating</a></h1>
				<nav>
					<ul class="menu" style="display: inline-block;">
						<%
					if (m_dto == null) {
				%>
						<li><a href="login.html">�α���/ȸ������</a></li>

						<%
					} else {
				%>
						<li><a href="analysis.jsp">��õ�ޱ�</a>
						<li><a href="before_searchBook.jsp">å �˻��ϱ�</a></li>
						<li><a href="mypage.jsp">���̸���</a>
						<li><a href="logoutService">�α׾ƿ�</a></li>
					</ul>
					<%
					}
				%>
				</nav>
			</div>
		</header>
	
<<<<<<< HEAD
		<div class="search_bar">
=======
	memberDTO m_dto = (memberDTO)session.getAttribute("member");

	%>
	<header>
		<div id="title">
			<span>
				<a href="main.jsp">���ڸ�������</a>
			</span>
		</div>
	</header>
	<nav>
	<div id="menu">
		<ul>
			<li><a href="after_searchBook.jsp">å �˻��ϱ�</a></li>
			<li><a href="mypage.html">����������</a>
				<ul class="menu">
					<li><a href="myClub.jsp">���̸���</a></li>
				</ul></li>
			<li><a href="nologinmain.html">�α׾ƿ�</a></li>
		</ul>
	</div>
	</nav>
	<div id="main_img">
		<div class="absolute">
>>>>>>> branch 'master' of https://github.com/jionetwothree/Intellidating.git
		<form action="searchBookService" method="post">
			<input type="text" name="search_submit" placeholder="å ���� �˻�">
			<% if(m_dto!=null){%>
			<input type="hidden" name="mem_num" value=<%= m_dto.getNum() %>>
			<%} %>
			<input type="submit" class="icon_search_submit" value="  ">

		</form>
		
	</div>
<div id="foot">
		<div class="all">
			<span> ���� ���� ����
			</span> <span>�����ϱ�
			</span> <span>��α�</span> <span class="company"> <br>
				<br> <br> �ֽ�ȸ�� ���ڸ������� <br> <br> <br>
			</span>
		</div>
	</div>
</body>
</html>