<%@page import="com.DTO.memberDTO"%>
<%@page import="com.DTO.clubDTO"%>
<%@page import="com.DAO.clubDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");

		clubDAO dao = new clubDAO();
		clubDTO dto = dao.selectclub(2);
	%>
	<div id="#">
		<header>
			<p>
			<h2>���ڸ�������</h2>
			</p>
		</header>
		<ul>
			<li><a href="#">å �˻��ϱ�</a></li>
			<%
				if (m_dto == null) {
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
					<li><a href="account.html">���� ����</a></li>
				</ul></li>
			<li><a href="logoutService">�α׾ƿ�</a></li>
		</ul>
		<%
			}
		%>
		<hr />
		<div>
			
				<p>
					<a href="bookpop.jsp" onclick="window.open('bookpop.jsp', 'new', 'width=400, height=450, toolbars=no, scrollbars=yes'); return false;"><%=dto.getClub_name()%></a>
				</p>
			<%
				if (m_dto != null) {
			%>
			<form action="joinClub">
				<input type="submit" value="���Ӱ���">
			</form>
			<%
				}
			%>


			<img src="#">
		</div>

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
</body>
</html>