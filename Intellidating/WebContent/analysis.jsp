<%@page import="com.DTO.bookDTO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<%
		memberDTO dto = (memberDTO) session.getAttribute("member");
		bookDTO dto1 = (bookDTO) session.getAttribute("book");
	%>
	<header>
		<div>
			<p>
			<h2>���ڸ�������</h2>
			</p>
		</div>
	</header>
	<nav>
		<div>
			<ul>
				<li><a href="searchbook.jsp">å �˻��ϱ�</a></li>
				<%
					if (dto == null) {
				%>
				<li><a href="login.html">�α���</a></li>
				<li><a href="join.jsp">ȸ������</a></li>
				<%
					} else {
				%>
				<li><a href="mypage.html">����������</a>
					<ul>
						<li><a href="mytaste.html">��������</a></li>
						<li><a href="myinteli.html">���̸���</a></li>
						<li><a href="myaccount.html">���� ����</a></li>
					</ul></li>
				<li><a href="logoutService">�α׾ƿ�</a></li>
			</ul>
			<%
				}
			%>
			<hr />
		</div>
	</nav>
	<div>
		<form action="analysisService" method="get">
			<div>
				<h1><%=dto.getNickname()%>�����ϴ� å 5���� ����ּ���!
				</h1>
			</div>
		</form>

		<form action="analysisService" method="get">
			<div>
				<%=dto1.getBook_image()%>
			</div>
		</form>
	</div>


	<footer>
		<div>
			<p>
				<a href="#">���� ���� ����</a>
			</p>
			<p>
				<a href="#">�����ϱ�</a>
			</p>
			<p>
				<a href="#">��α�</a>
			</p>
			<br> <br> <br>
			<p>�ֽ�ȸ�� ���ڸ�������</p>
		</div>
	</footer>

</body>
</html>