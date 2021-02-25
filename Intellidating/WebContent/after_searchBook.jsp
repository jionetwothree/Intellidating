<%@page import="java.util.ArrayList"%>
<%@page import="com.DTO.memberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.bookDAO"%>
<%@page import="com.DTO.bookDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.net.URLEncoder"%>

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
		//bookDTO b_dto = (bookDTO)session.getAttribute("book");

	%>


	<header>
		<div id="title">
			<span> <a href="main.jsp">���ڸ�������</a>
			</span>
		</div>
	</header>
	<nav>
		<div id="menu">
			<ul>
				<li><a href="before_searchBook.jsp">å �˻��ϱ�</a></li>
				<li><a href="mypage.html">����������</a>
					<ul class="menu">
						<li><a href="myClub.jsp">���̸���</a></li>
					</ul></li>
				<li><a href="nologinmain.html">�α׾ƿ�</a></li>
			</ul>
		</div>
	</nav>
	<table>
		<%		ArrayList<bookDTO> dto = (ArrayList<bookDTO>) request.getAttribute("bookDTO"); 
				System.out.print(dto.size());
				
				for(int i = 0; i < dto.size(); i++) {
					out.print("<tr>");%>
		<td><a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'><%=dto.get(i).getBook_name()%></a></td>
		<%out.print("<td>"+dto.get(i).getBook_author()+"</td>");
					out.print("<td>"+dto.get(i).getBook_publisher()+"</td>");
					out.print("<td>"+dto.get(i).getBook_date()+"</td>");%>
		<td><a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'>
				<img src="<%=dto.get(i).getBook_image()%>">
		</a></td>
		<tr>
			<%}%>

		
	</table>

	<div id="foot">
		<div class="all">
			<span><a href="question.html">���� ���� ����</a></span> <span><a
				href="#">�����ϱ�</a></span> <span><a href="#">��α�</a></span> <span
				class="company"> <br> <br> <br> " �ֽ�ȸ�� ���ڸ�������
				" <br> <br> <br>
			</span>
		</div>
	</div>
</body>
</html>