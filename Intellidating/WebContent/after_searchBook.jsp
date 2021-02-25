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
<link href="style_afterSearchBook.css" rel="stylesheet" type="text/css">

</head>
<body>
	<%  
	
		memberDTO m_dto = (memberDTO)session.getAttribute("member");
		//bookDTO b_dto = (bookDTO)session.getAttribute("book");

	%>
<div id="layout">
			<div id="wrapper">

				<h1 id="title"><a href="main.jsp">intellidating</a></h1>
				<nav>
					<ul class="menu" style="display: inline-block; margin-top: 25px;">
						<%
					if (m_dto == null) {
				%>
						<li><a href="login.html">�α���/ȸ������</a></li>

						<%
					} else {
				%>
						<li><a href="analysis.jsp">��õ�ޱ�</a>
						<li><a href="before_searchBook.jsp">å �˻��ϱ�</a></li>
						<li><a href="myClub.jsp">���̸���</a>
						<li><a href="logoutService">�α׾ƿ�</a></li>
					</ul>
					<%
					}
				%>
				</nav>
			</div>
		</header>
		<form action="searchBookService" method="post">
			<input type="text" name="search_submit" placeholder="å ���� �˻�">
			<% if(m_dto!=null){%>
			<input type="hidden" name="mem_num" value=<%= m_dto.getNum() %>>
			<%} %>
			<input style="right: 50px; margin-right: 0px; left: 415px; top: 63px;" type="submit" class="icon_search_submit" value="  " >

		</form>
		
		<div class="book_list">
		<%
				/* String attr = request.getParameter("bookDTO"); */
				ArrayList<bookDTO> dto = (ArrayList<bookDTO>) request.getAttribute("bookDTO"); 
				System.out.print(dto.size());%>

				
				<%for(int i = 0; i < dto.size(); i++) {
				
					if(i%2==1){%>
					<div class="book" >
					<div class="b_image"><a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'>
							<img src="<%=dto.get(i).getBook_image()%>" 
							img {
								  style="width: 200px;
								  height: 300px;
								  object-fit: cover;"
														}>
						</a>
					</div>
					<div class="b_text">
						<div class="b_name"><a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'><%=dto.get(i).getBook_name()%></a></div>
						<div class="b_author"><%=dto.get(i).getBook_author()%></div>
						<div class="b_pub_date"><%=dto.get(i).getBook_publisher()%>
						<br><%=dto.get(i).getBook_date()%></div>
					</div>
				</div>
					
					<%}else{ %>
					<div class="book" style="float:left">
					<div class="b_image"><a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'>
							<img src="<%=dto.get(i).getBook_image()%>"
							img {
								  style="width: 200px;
								  height: 300px;
								  object-fit: cover;"
														}>
						</a>
					</div>
					<div class="b_text">
						<div class="b_name"><a href='bookInfo.jsp?book=<%= dto.get(i).getBook_num()%>'><%=dto.get(i).getBook_name()%></a></div>
						<div class="b_author"><%=dto.get(i).getBook_author()%></div>
						<div class="b_pub_date"><%=dto.get(i).getBook_publisher()%>
						<br><%=dto.get(i).getBook_date()%></div>
					</div>
				</div>
					
					<%} %>
				
			<%}%>
		

		
	</div>
	
	<div id="foot" style="display:block">
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