<%@page import="com.DAO.bookDAO"%>
<%@page import="com.DTO.bookDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<link rel="icon" sizes="192x192" href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<link href="style_searchBook.css" rel="stylesheet" type="text/css">
	</head>
	<body>
	<%
		bookDTO dto = (bookDTO) request.getAttribute("bookDTO");
	%>
		<div>
		<header>
		<p><h2>���ڸ�������</h2></p>
		</header>
			<ul>
				<li><a href="searchbook.jsp">å �˻��ϱ�</a></li>
				<li><a href="mypage.html">����������</a>
						<ul>
							<li><a href="mytaste.html">��������</a></li>
							<li><a href="myinteli.html">���̸���</a></li>
							<li><a href="account.html">���� ����</a></li>
						</ul>
					</li>
				<li><a href="nologinmain.html">�α׾ƿ�</a></li>
			</ul>
		<hr />
		</div>
		<div>	
	<form name="search" action="dbbook" method="post">
		<input type="text" placeholder="å ����, ���ǻ�, �۰��� �˻�">
		<input type="submit" class="icon_search_submit" value="  ">
	</form>
	</div>	

	<%
		bookDAO b_dao = new bookDAO();
	%>
	<div class="#">
		<img src="<%=dto.getBook_image()%>">
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<%=dto.getBook_image()%>
	</div>
	<div class="#">
		<a href="bookInfo_HJ" target="_blank"><img src="�̹������" /></a>
		<%=dto.getBook_image()%>
	</div>
	
	<div>
			<p><a href="#">���� ���� ����</a></p>
			<p><a href="#">�����ϱ�</a></p>
			<p><a href="#">��α�</a></p>
			<br>
			<br>
			<br>
			<p>�ֽ�ȸ�� ���ڸ�������</p>
			
			</div>

</body>
</html>