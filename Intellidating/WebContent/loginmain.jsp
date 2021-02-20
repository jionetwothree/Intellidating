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
		<h1>
			<a href="#">���ڸ������� �̿��Ģ</a>
		</h1>
		<hr />
	</div>

	<div>
		<section>
			<h2>
				<%
					if (dto == null) {
				%>
				<h1>�α����� ���ּ���</h1>
				<%
					} else {
				%>
				<h1><%=dto.getNickname()%></h1>
				<%
					}
				%>���� ������ #�Ҽ� #�θǽ� #�ֽ�����(��)����!
			</h2>
		</section>
	</div>

	<div>
		<section>
			<p>
			<h3>�� �����ϴ� ���ڸ�</h3>
			</p>
			<p>
				<a href="#">��ü����</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">���� ����1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">���� ����9</a>
				</h3>
			</div>
		</section>
	</div>

	<div>
		<section>
			<p>
			<h3>������ �α�</h3>
			</p>
			<p>
				<a href="#">��ü����</a>
			</p>
		</section>
		<section>
			<div>
				<h3>
					<a href="intellipage.jsp">���� ����1</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����2</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����3</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����4</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����5</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����6</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����7</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.jsp">���� ����8</a>
				</h3>
			</div>

			<div>
				<h3>
					<a href="intellipage.html">���� ����9</a>
				</h3>
			</div>
		</section>
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