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
		<link rel="icon" sizes="192x192" href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<link href="style_searchBook.css" rel="stylesheet" type="text/css">
	</head>
	<body>
	<%
	
		memberDTO m_dto = (memberDTO)session.getAttribute("member");
		bookDTO b_dto = (bookDTO)session.getAttribute("book");
		request.setCharacterEncoding("EUC-KR");

	%>

		<div>
		<header>
		<p><h2><a href="main.jsp">인텔리데이팅</a></h2></p>
		</header>
			<ul>
				<li><a href="before_searchBook.jsp">책 검색하기</a></li>
				<li><a href="mypage.html">마이페이지</a>
						<ul>
							<li><a href="mytaste.html">마이취향</a></li>
							<li><a href="myinteli.html">마이모임</a></li>
							<li><a href="account.html">계정 설정</a></li>
						</ul>
					</li>
				<li><a href="nologinmain.html">로그아웃</a></li>
			</ul>
		<hr />
		</div>
		<div>	
	<form name="search" action="searchBookService" method="post">
		<input type="text" name="search_submit" placeholder="책 제목 검색">
		<% if(m_dto!=null){%>
			<input type="hidden" name="mem_num" value=<%= m_dto.getNum() %> >
		<%} %>
		<input type="submit" class="icon_search_submit" name="search_submit" value="  ">
	</form>
	</div>	
		<table>
			<%
				/* String attr = request.getParameter("bookDTO"); */
				
				ArrayList<bookDTO> dto = (ArrayList<bookDTO>) request.getAttribute("bookDTO"); 
				System.out.print(dto.size());
				
				for(int i = 0; i < dto.size(); i++) {
					out.print("<tr>");%>
					<td><a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'><%=dto.get(i).getBook_name()%></a></td>
					<%out.print("<td>"+dto.get(i).getBook_author()+"</td>");
					out.print("<td>"+dto.get(i).getBook_publisher()+"</td>");
					out.print("<td>"+dto.get(i).getBook_date()+"</td>");%>
					<td>
						<a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'>
							<img src="<%=dto.get(i).getBook_image()%>">
						</a>
					</td>
					<tr>
			<%}%>
		</table>
	
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